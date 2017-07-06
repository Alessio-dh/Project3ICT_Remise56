<?php

namespace App\Http\Controllers;
use App\Http\Models\Content_Model;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Models\Brouwerij_Model;
use App\Http\Models\Reservatie_Model;
use App\Http\Models\Navigatie_Model;
use App\Gallery;
use Mail;

class GrandCafe_Controller extends Controller
{
    public function getPagina($paginaNaam = null) {
        $menuTop = ucfirst($paginaNaam);
        $navigatieModel = new Navigatie_Model();
        $contentModel = new Content_Model();
        $navigatie = $navigatieModel->geefNavigatie('grandcafe');
        $navigatieResponsive = $navigatieModel->geefNavigatieResponsive('grandcafe');

        $templates = $contentModel->getTemplateNames($paginaNaam);
        if(!$templates) {
            return view('errors.404');//er is geen pagina inhoud beschikbaar
        }
        $aTemp = explode(";",$templates);
        $aTemplates = [];
        foreach($aTemp as $item) {
            $aGegevens = $contentModel->getContentFor($item,$paginaNaam);
            $aTemplates[$item] = $aGegevens;
        }
        return view('master_view', compact('menuTop','navigatie','navigatieResponsive','aTemplates'));
    }

    public function nieuweReservatie(Request $request){
        $oReservatie = new Reservatie_Model();
        $data = array(
            "bevestigingsLink" => "http://www.google.be/",
            "volledigeNaam" => $request["frmReservatieRestVoornaam"] . " " . $request["frmReservatieRestAchternaam"] ,
            "aantalPersonen" => $request["frmReservatieRestPersonen"],
            "tijdstip" =>$request["frmReservatieRestTijd"]
        );
        $mailto = $request['frmReservatieRestEmail'];

        $mailresult = $oReservatie->stuurBevestigingsmail($mailto, $data);
        
        if($mailresult == false) {

        } else {
            $request['bevestigingsCode'] = $mailresult;
            $result =$oReservatie->nieuwReservatieRestKlant($request);
            if(is_array($result)) {
                return view('statisch.maxPersonenBereikt');
            }else{
                if($result){
                    return view('statisch.checkMail');
                }
            }
        }
    }

}
