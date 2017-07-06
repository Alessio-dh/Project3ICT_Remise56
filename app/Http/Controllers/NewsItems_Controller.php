<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\News;
use App\Http;
use Illuminate\Support\Facades\Input;
use File;

class NewsItems_Controller extends Controller
{
    public function home(){
//        if (Auth::check())
//        {
            $news= new News;
            $menuTop = "Nieuws Items";
            $newsItems = $news->getAllNewsItems();
            return view('personeel.newsitems',compact('menuTop','newsItems'));
//        }else{
//            redirect()->back();
//        }
    }

    public function createNewsItem(){
        $news = new News;
        if (Input::hasFile('foto'))
        {
            if (Input::file('foto')->isValid())
            {
                $filename =Input::file('foto')->getClientOriginalName();
                Input::file('foto')->move('uploads',$filename);
                $news->insertNewsItem(Input::get('titel'),Input::get('uitleg'),$filename);
            }
        }else{
            $news->insertNewsItem(Input::get('titel'),Input::get('uitleg'),null);
        }
        return redirect()->action('NewsItems_Controller@home');
    }

    public function deleteNewsItem($id){
        $news = new News;
        $news->deleteNewsItem($id);
        //File::delete($news->getPathOfNewsItemPicture($id));
        return redirect()->action('NewsItems_Controller@home');
    }
}
