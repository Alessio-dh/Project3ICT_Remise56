<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Models\News_Model;
Use App\News;

class Home_Controller extends Controller
{
    public function home(){
        $news = new News_Model;
        $menuTop = "Home";
        $aIds = array();
        $newsItems = $news->getAllNewsItems();
        foreach ($newsItems as $newsItem){
            array_push($aIds,$newsItem->id);
        }

        return view('home',compact('menuTop','newsItems','aIds'));
    }
}
