<?php

namespace app\admin\controller;

use app\admin\common\Base;

class News extends Base
{
    public function index(){
        $newsList=model('News')->select();
        $newsCount=model('News')->count();
        return $this->fetch('news-list',[
            'newsList'=>$newsList,
            'newsCount'=>$newsCount,
        ]);
    }
    public function newsAdd()
    {
        return $this->fetch('news-add');    
    }
    public function newsEdit($id)
    {
        $newsEdit=model('news')->get($id);
        $newsEdit['new_content']=html_entity_decode($newsEdit['new_content']);
        return $this->fetch('News-edit',[
            'newsEdit'=>$newsEdit,
        ]); 
    }
    public function saveNews(){
        $post_data=request()->post();
        if(isset($post_data['id']))
        {
            return $this->operate('News',$post_data,true);
        }else{
            return $this->operate('News',$post_data,false);
        }
    }
    public function deleteNews(){
        return $this->delete('News');
    }
}