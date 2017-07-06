<?php

namespace App\Http\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class News_Model extends Model
{
    protected $table = 'news';

    public function getAllNewsItems(){
        return DB::table('news')->get();
    }

    public function insertNewsItem($title,$comment,$filename){
        DB::table('news')->insertGetId(
            ['titel'=> $title,'uitleg' =>$comment,'padNaarFoto' => $filename]
        );
    }

    public function deleteNewsItem($id){
        DB::table('news')->where('ID','=',$id)->delete();
    }

    public function getPathOfNewsItemPicture($id){
        return DB::table('news')->get(['padNaarFoto'])->where('ID','=',$id);
    }

    public function getCountOfNewsItems(){
        return DB::table('news')->count();
    }

    public function updateNewsItem($id, $title, $comment, $filename){
        DB::table('news')->where('ID','=',$id)->update(
        ['titel'=> $title,'uitleg' => $comment,'padNaarFoto' => $filename]
        );
    }
}
