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
use Validator;
use App\User;

/////////////////////////       Dit Model bevat alle methodes voor het aanmaken, opvragen van PERSONEEL en om de Content voor de pagina's op te halen.
class Personeel_Model extends Model implements  Authenticatable
{
    use \Illuminate\Auth\Authenticatable;


    public function getPersoneel(){
        $errorReport = "";
        try {
            $reservaties = DB::select('select * from personeel', [1]);
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

    public function nieuwPersoneelsLid(Request $request){
        $data['name'] = $request['frmNieuwPersoneelNaam'];
        $data['email'] = $request['frmNieuwPersoneelEmail'];
        $data['password'] = $request['frmNieuwPersoneelWachtwoord'];
        $data['password_confirmation'] = $request['frmNieuwPersoneelHerhaalWachtwoord'];
        $data['function'] = $request['frmNieuwPersoneelAccesLevel'];



        $obj = Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
            'function' => 'required'
        ]);

        if ($obj->passes()) {
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => bcrypt($data['password']),
                'editor' => $data['function']
            ]);
            //var_dump($user->hidden);
        } else {
            //var_dump($obj->invalid());
        }

//        $sNaam = $request["frmNieuwPersoneelNaam"];
//        $sGebruikersnaam = $request["frmNieuwPersoneelGebruikersnaam"];
//        $sAccessLevel = $request["frmNieuwPersoneelAccesLevel"];
//        $sWachtwoord = bcrypt($request["frmNieuwPersoneelWachtwoord"]);
//
//        $now   = new \DateTime();
//        $modifiedDate = $now->format('Y-m-d H:i:s');
//
//        try {
//            DB::insert('insert into personeel (created_at,updated_at,naam, gebruikersnaam, wachtwoord,accesslevel) values (?,?,?, ?, ?,?)', array($modifiedDate,$modifiedDate,$sNaam, $sGebruikersnaam, $sWachtwoord,$sAccessLevel));
//            $bResultaat = true;
//        } catch (\PDOException $e) {
//            $bResultaat = false;
//        }
//        return $bResultaat;

    }

    public function verwijderPersoneelsLid($id){
        DB::table('personeel')->where('id','=',$id)->delete();
    }

    public function wijzigPersoneelsLid(Request $request,$id){
        $sNaam = $request["frmWijzigPersoneelNaam"];
        $sGebruikersnaam = $request["frmWijzigPersoneelGebruikersNaam"];
        $sAccessLevel = $request["frmWijzigPersoneelAccesLevel"];
        $now   = new \DateTime();
        $modifiedDate = $now->format('Y-m-d H:i:s');

        try {
            DB::table('personeel')->where('id',$id)->update(array(
                'naam'=> $sNaam,'updated_at'=>$modifiedDate,'gebruikersnaam' => $sGebruikersnaam,'accesslevel' => $sAccessLevel)
            );
            $bResultaat = true;
        } catch (\PDOException $e) {
            $bResultaat = false;
        }
        return $bResultaat;
    }

    public function geefPersoneelLid($id){
        try {
            $personeelLid = DB::table('personeel')->select()->where('id','=',$id)->get();
            return $personeelLid;
        } catch (\PDOException $e) {
            $bResultaat = false;
        }
    }
}