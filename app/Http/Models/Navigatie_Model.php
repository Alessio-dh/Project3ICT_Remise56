<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class Navigatie_Model extends Model
{


    public function geefNavigatie($paginaNaam){
        $navigatieItems = DB::select("SELECT * FROM paginas WHERE master=? OR master=?", [$paginaNaam, 'alle']);
        $temp = '';
        if($paginaNaam == 'brouwerij') {
            $temp = 'Grand Café';
            $temp2 = 'grandcafe';
        } else {
            $temp = 'Brouwerij';
            $temp2 = 'brouwerij';
        }
        $sHtml = '<div class="fh5co-logo">
                <a href="/" style="background-image: url(images/logo.gif)">Remise 56</a>
            </div>
            <div class="fh5co-menu-2" style="float: right;">
            <a href="/'.$temp2.'/'.$temp2.'" style="font-weight: bold;">Ga naar '.$temp.'</a>';
        foreach ($navigatieItems as $item) {
            $sHtml .= '<a href="/'.$paginaNaam.'/'.$item->paginaNaam.'">'.ucfirst($item->paginaNaam).'</a>';
        }
        $sHtml .= '</div>';
        return $sHtml;
    }
    public function geefNavigatieResponsive($paginaNaam){
        $navigatieItems = DB::select("SELECT * FROM paginas WHERE master=? OR master=?", [$paginaNaam,'alle']);
        $temp = '';
        if($paginaNaam == 'brouwerij') {
            $temp = 'Grand Café';
            $temp2 = 'grandcafe';
        } else {
            $temp = 'Brouwerij';
            $temp2 = 'brouwerij';
        }
        $sHtml = '<a href="/" style="font-weight: bold;font-size:22px;">Remise 56</a>
            <hr style="border: 1px solid orange;opacity: 0.5;">
            <li><a href="/'.$temp2.'/'.$temp2.'" style="font-weight: bold;">Ga naar '.$temp.'</a></li>
            <hr style="border: 1px solid orange;opacity: 0.5;">';
        foreach ($navigatieItems as $item) {
            $sHtml .= '<li><a href="/'.$paginaNaam.'/'.$item->paginaNaam.'" >'.ucfirst($item->paginaNaam).'</a></li>';
        }
        $sHtml .= '</div>';
        return $sHtml;
    }
}
