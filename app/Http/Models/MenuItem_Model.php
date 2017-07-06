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



class MenuItem_Model extends Model implements  Authenticatable
{
    use \Illuminate\Auth\Authenticatable;

    protected $table = 'menuitem';

    public function nieuwMenuItem(Request $request){

        $sSubCategorie = $this->geefSubcategorieID($request["frmNieuwMenuItemSubCat"]);
        $sTitel = $request["frmNieuwMenuItemTitel"];
        $sPrijs = $request["frmNieuwMenuItemPrijs"];
        $bZichtbaarheid = $request["frmNieuwMenuItemZichtbaar"];
        $sBeschrijving = $request["frmNieuwMenuItemBeschrijving"];

        if ($bZichtbaarheid == "true"){
            $bZichtbaarheid = true;
        }
        else{
            $bZichtbaarheid = false;

        }


        $bResultaat ="";
        try {
            DB::insert('insert into menuitem (subcategorie_id, titel, beschrijving, zichtbaar, prijs ) values ( ?, ?, ?, ?,?)', array( $sSubCategorie, $sTitel, $sBeschrijving, $bZichtbaarheid, $sPrijs));
            $bResultaat = true;
        } catch (\PDOException $e) {
            echo $e;
            $bResultaat = false;
        }


        return $bResultaat;
    }

    public function  getMenuItems(){
        $errorReport = "";
        $aMenuItems = [];
        try {
        $aMenuItems = DB::select('select * from menuitem ORDER BY subcategorie_id , titel ASC;', [1]);
        } catch (\PDOException $e) {
            $aMenuItems = [];
            $errorReport = "Kan geen verbinding maken met de database";
        }

                if (!empty($aMenuItems)){
                    return $aMenuItems;
                }
                else{
                    return $errorReport;
                }
        }
    public function getAllCategories(){
        return DB::select('select * from menuItem_categorie ');
    }
    public function getAllSubCategories(){
        return DB::select('select * from menuItem_subcategorie ');
    }

    public function getAlleCategorieen(){
        return DB::select('select * from menuItem_categorie ');
    }
    public function getAlleSubCategorieen(){
        return DB::select('select * from menuItem_subcategorie ');
    }

    public function verwijderMenuItem($id){
        DB::table('menuitem')->where('ID','=',$id)->delete();
    }

    public function wijzigMenuItem(Request $request){

        $sId = $request["frmWijzigMenuItemId"];
        $sTitel = $request["frmWijzigMenuItemTitel"];
        $sPrijs = $request["frmWijzigMenuItemPrijs"];
        $bZichtbaarheid = $request["frmWijzigMenuItemZichtbaar"];
        $sBeschrijving = $request["frmWijzigMenuItemBeschrijving"];

        if ($bZichtbaarheid == "true"){
            $bZichtbaarheid = true;
        }
        else{
            $bZichtbaarheid = false;
        }
        $bResultaat ="";
        try {
            /*DB::table('menuitem')
                ->where('id', $sId)
                ->update(['titel' => $sTitel],['prijs' => $sPrijs], ['zichtbaar' => $bZichtbaarheid], ['beschrijving' => $sBeschrijving] );*/

            DB::table('menuitem')
                ->where('id', $sId)
                ->update(array('titel' =>$sTitel , 'prijs' =>$sPrijs, 'zichtbaar' =>$bZichtbaarheid, 'beschrijving' =>$sBeschrijving));
            $bResultaat = true;
        } catch (\PDOException $e) {
            echo $e;
            $bResultaat = false;
        }

        return $bResultaat;

    }

    private function geefSubcategorieID($naamVanSubcategorie){
        $id=  DB::select('SELECT id FROM menuItem_subcategorie WHERE subcategorie = ?',array($naamVanSubcategorie));
        return $id[0]->id;
    }

}