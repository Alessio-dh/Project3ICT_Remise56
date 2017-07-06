<?php
/**
 * Created by PhpStorm.
 * User: Soufiane
 * Date: 16/11/2016
 * Time: 23:18
 */
namespace App\Http\Models;

use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DateTime;
use Mail;

/////////////////////////       Dit Model bevat alle methodes voor het aanmaken, opvragen van RESERVATIES en om de Content voor de pagina's op te halen.
class Reservatie_Model extends Model implements  Authenticatable
{
    use \Illuminate\Auth\Authenticatable;



    public function getReservaties(){
        $errorReport = "";
        $reservaties = [];
        try {
            $reservaties = DB::select('select * from reservaties WHERE bevestigd = "1"', [1]);
        } catch (\PDOException $e) {
            $reservaties = [];
            $errorReport = "Kan geen verbinding maken met de database";
        }

        if (!empty($reservaties)){
            return $reservaties;
        }
        else{
            return $errorReport;
        }
    }

    public function nieuwReservatieRest(Request $request){

    $sSoort = "Restaurant";
    $sShift = "Lunch";
    $sBevestigd = "1";
    $sBevestingscode = "handmatig";

    $dDatetime = new DateTime($request["frmReservatieRestDatum"]);
    $sTime1 = substr($request["frmReservatieRestTijd"], 0, 2);  // neemt de eerste 2 getallen voor de  ":"
    $sTime2 = substr($request["frmReservatieRestTijd"], 3, 2);  // neemt de  2 getallen na de  ":"

    $dDatetime->setTime($sTime1, $sTime2, 00);

    $iPersonen = $request["frmReservatieRestPersonen"];
    $sVoornaam = $request["frmReservatieRestVoornaam"];
    $sNaam = $request["frmReservatieRestAchternaam"];
    $sTelefoon = $request["frmReservatieRestTel"];
    $sEmail = $request["frmReservatieRestEmail"];
    $sNota = $request["frmReservatieRestNota"];

    $bResultaat ="";
    try {
        DB::insert('insert into reservaties (datumtijd, email, shift, soort, aantal_personen, voornaam, naam, telefoon, nota, bevestigd, bevestigingscode ) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array($dDatetime, $sEmail, $sShift,  $sSoort, $iPersonen, $sVoornaam, $sNaam, $sTelefoon, $sNota, $sBevestigd, $sBevestingscode));
        $bResultaat = true;
    } catch (\PDOException $e) {
        $bResultaat = false;
    }


    return $bResultaat;


}

    public function nieuwReservatieRestKlant(Request $request){
        $bResultaat = false;
        $response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=6LcCPw0UAAAAAFBq9bWm6yOvosDSoiwGYfUgUl-g&response=".$request["g-recaptcha-response"]);
        $responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
            $bResultaat =  false;
        } else {
            $bResultaat = true;

            $sSoort = "Restaurant";
            $sShift = "Lunch";
            $sBevestigd = isset($request['bevestigingsCode']) ? "0" : "0";
            $sBevestingscode = isset($request['bevestigingsCode']) ? $request['bevestigingsCode'] : "error";

            $dDatetime = new DateTime($request["frmReservatieRestDatum"]);
            $sTime1 = substr($request["frmReservatieRestTijd"], 0, 2);  // neemt de eerste 2 getallen voor de  ":"
            $sTime2 = substr($request["frmReservatieRestTijd"], 3, 2);  // neemt de  2 getallen na de  ":"

            $dDatetime->setTime($sTime1, $sTime2, 00);

            $controleerShift = date_format($dDatetime , 'Y-m-d');
            $controleerShift2 = new DateTime($controleerShift.' 18:00:00');
            if($controleerShift2 <= $dDatetime){
                $sShift="Diner";
            }

            $iPersonen = $request["frmReservatieRestPersonen"];
            $sVoornaam = $request["frmReservatieRestVoornaam"];
            $sNaam = $request["frmReservatieRestAchternaam"];
            $sTelefoon = $request["frmReservatieRestTel"];
            $sEmail = $request["frmReservatieRestEmail"];
            $sNota = $request["frmReservatieRestNota"];

            $dag = date_format($dDatetime,'l');

            if($this->controleerAantalPersonen($dag,$iPersonen,$dDatetime,$sShift)) {
                try {
                    DB::insert('insert into reservaties (datumtijd, email, shift, soort, aantal_personen, voornaam, naam, telefoon, nota, bevestigd, bevestigingscode ) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array($dDatetime, $sEmail, $sShift, $sSoort, $iPersonen, $sVoornaam, $sNaam, $sTelefoon, $sNota, $sBevestigd, $sBevestingscode));
                    $bResultaat = true;
                } catch (\PDOException $e) {
                    $bResultaat = false;
                }
            }else{
                $bResultaat = [false];
            }
        }

        return $bResultaat;


    }

    public function nieuwReservatieRond(Request $request){
        $sSoort = "Rondleiding";
        $sShift = "Lunch";
        $sBevestigd = "ok";
        $sBevestingscode = "code";

        $dDatetime = new DateTime($request["frmReservatieRondDatum"]);

        $sTime1 = substr($request["frmReservatieRondTijd"], 0, 2);  // neemt de eerste 2 getallen voor de  ":"
        $sTime2 = substr($request["frmReservatieRondTijd"], 3, 2);  // neemt de  2 getallen na de  ":"

        $dDatetime->setTime($sTime1, $sTime2, 00);

        $iPersonen = $request["frmReservatieRondPersonen"];
        $sVoornaam = $request["frmReservatieRondVoornaam"];
        $sNaam = $request["frmReservatieRondAchternaam"];
        $sTelefoon = $request["frmReservatieRondTel"];
        $sEmail = $request["frmReservatieRondEmail"];
        $sNota = $request["frmReservatieRondNota"];

        try {
            DB::insert('insert into reservaties (datumtijd, email, shift, soort, aantal_personen, voornaam, naam, telefoon, nota, bevestigd, bevestigingscode ) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', array($dDatetime, $sEmail, $sShift,  $sSoort, $iPersonen, $sVoornaam, $sNaam, $sTelefoon, $sNota, $sBevestigd, $sBevestingscode));
            $bResultaat = true;
        } catch (\PDOException $e) {
            $bResultaat = false;
        }
        return $bResultaat;

    }

    public function geefContentBrouwerijReservatie(){
        $content = array(
            'HoofdTitel' => '<h2 class="heading">Reservatie</h2>',
            'HoofdOmschrijving' => '<p>Vanaf 2016 is ons restaurant enkel geopend voor de lunch op vrijdagmiddag en voor diner op vrijdag en zaterdag.
                        Uitzonderingen hierop zijn :11,12 en 13 oktober zijn wij uitzonderlijk geopend voor het diner en dit voor een drie, vier of vijfgangenmenu vanaf 40 euro*Donderdag 10 november (wij serveren het 6g maandmenu puur natuur)
                    </p>',
            'SluitingsTijden' =>'<ul>
                        <li>Zondag 1 januari t/m donderdag 19 januari</li>
                        <li>Zondag 1 januari t/m donderdag 19 januari</li>
                        <li>Zondag 2 juli t/m woensdag 19 juli</li>
                    </ul>'
        );

        return $content;
    }

    public function geefContentGrandCafeReservatie(){
        $content = array(
            'HoofdTitel' => '<h2 class="heading">Reservatie</h2>',
            'HoofdOmschrijving' => '<p>Vanaf 2016 is ons restaurant enkel geopend voor de lunch op vrijdagmiddag en voor diner op vrijdag en zaterdag.
                            Uitzonderingen hierop zijn :11,12 en 13 oktober zijn wij uitzonderlijk geopend voor het diner en dit voor een drie, vier of vijfgangenmenu vanaf 40 euro*Donderdag 10 november (wij serveren het 6g maandmenu puur natuur)
                        </p>',
            'SluitingsTijden' =>'<ul>
                            <li>Zondag 1 januari t/m donderdag 19 januari</li>
                            <li>Zondag 1 januari t/m donderdag 19 januari</li>
                            <li>Zondag 2 juli t/m woensdag 19 juli</li>
                        </ul>'
        );

        return $content;
    }

    public function verwijderReservatie($reservatieId) {
        return DB::table('reservaties')->where('id', '=', $reservatieId)->delete();
    }

    public function stuurBevestigingsmail($mailto, $data) {
        $bevestigingsCode = md5(rand());
        while(($bResult = $this->controleerBevestigingsCode($bevestigingsCode) == false)) {
            $bevestigingsCode = md5(rand());
        }
        $data["bevestigingsLink"] = url('/bevestig/reservatie/'.$bevestigingsCode);
        Mail::send('mail.bevestiging', $data, function($message) use ($mailto) {
            $message->to($mailto, 'Reservatie Bevestiging')->subject('Reservatie bij Remise 56 te Koersel');
        });
        return $bevestigingsCode;
    }

    private function controleerBevestigingsCode($code) {
        $result = DB::select('SELECT * FROM reservaties WHERE bevestigingscode=?', [$code]);
        if(empty($result)) {
            return true;
        } else {
            return false;
        }
    }

    private function controleerAantalPersonen($dagVanDeWeek,$aantalPersonen,$datum,$sShift){
        switch ($dagVanDeWeek){
            case "Monday":
                $dag = "Maandag";
                break;
            case "Tuesday":
                $dag = "Dinsdag";
                break;
            case "Wednesday":
                $dag = "Woensdag";
                break;
            case "Thursday":
                $dag = "Donderdag";
                break;
            case "Friday":
                $dag = "Vrijdag";
                break;
            case "Saturday":
                $dag = "Zaterdag";
                break;
            case "Sunday":
                $dag = "Zondag";
                break;
        }

        if($sShift == "Lunch"){
            $shift =1;
        }else{
            $shift =2;
        }

        $sDatum = date_format($datum,'Y-m-d');
        $sDatum2 = '%'.$sDatum.'%';

        try {
            $iAantalPersonen = DB::select('SELECT SUM(aantal_personen) as "AantalHuidigePersonen" FROM reservaties WHERE datumtijd LIKE ? AND shift = ?',array($sDatum2,$sShift));
            $maxPersonen = DB::select('SELECT max_personen FROM maxPersonen WHERE dag=? AND shift = ?',array($dag,$shift));
            if($iAantalPersonen[0]->AantalHuidigePersonen+$aantalPersonen > $maxPersonen[0]->max_personen){
                return false;
            }else{
                return true;
            }
        } catch (\PDOException $e) {
            $bResultaat = false;
        }

    }

}