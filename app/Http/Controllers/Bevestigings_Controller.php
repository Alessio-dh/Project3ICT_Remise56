<?php
/**
 * Created by PhpStorm.
 * User: MbAirAlexander
 * Date: 29/11/2016
 * Time: 17:37
 */

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class Bevestigings_Controller extends Controller
{
    public function bevestig($code) {
        $result = DB::table('reservaties')
            ->where('bevestigingscode', $code)
            ->update(['bevestigd' => 1]);
        if($result == 1) {
            return view('statisch.reservatieGelukt');
        } else {
            return view('statisch.reservatieMislukt');
        }
    }
}