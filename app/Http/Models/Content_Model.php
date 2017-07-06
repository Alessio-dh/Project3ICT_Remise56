<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use DB;


class Content_Model extends Model
{
    public function getTemplateNames($paginaNaam) {
        $pagina = DB::select('SELECT * FROM paginas WHERE paginaNaam=?',[$paginaNaam]);
        return $pagina == null ? false : $pagina[0]->templates;
    }

    public function getContentFor($template,$pagina) {
        $aGegevens = '';
        if($pagina == 'menu'){
            $aGegevens['categorien'] = DB::select('SELECT * FROM menuItem_categorie ');
            $aGegevens['subcategorien'] = DB::select('SELECT * FROM menuItem_subcategorie ');
            foreach ($aGegevens['subcategorien'] as $aSubcategorieItem) {
                $aGegevens[$aSubcategorieItem->id] = DB::select('SELECT * FROM menuitem WHERE subcategorie_id=? ',[$aSubcategorieItem->id]);
            }
            return $aGegevens;
        }
        if($pagina == 'media'){
            $aGegevens['gallerijen'] = DB::select('SELECT * FROM gallery ');
            $aGegevens['images'] = DB::select('SELECT * FROM images ');
            foreach ($aGegevens['gallerijen'] as $aGallerijen) {
                $aGegevens[$aGallerijen->id] = DB::select('SELECT * FROM images WHERE gallery_id=? ',[$aGallerijen->id]);
            }
            return $aGegevens;
        }
        $aGeg = DB::select('SELECT * FROM templates_inhoud WHERE templateNaam=? AND paginaNaam=?',[$template,$pagina]);
        if($aGeg != null) {
            foreach (explode('-', $aGeg[0]->templateKey) as $aItems) {
                $aInhoud = DB::select("SELECT inhoud FROM template_key_inhoud WHERE templateKey = ? AND pagina=?",[$aItems,$pagina]);
                if($aInhoud != null){
                    $test = explode('@', $aInhoud[0]->inhoud);
                    foreach ( $test as $Inhoud){
                        $a = explode('§', $Inhoud);
                        $aGegevens[$a[0]] = $a[1];
                    }
                }
            }
        } else {
            return false;
        }
        return $aGegevens;
    }
}
