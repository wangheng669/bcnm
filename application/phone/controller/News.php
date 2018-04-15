<?php

namespace app\phone\controller;

use think\Controller;
use think\Request;

class News extends Controller
{
    public function index($id)
    {
        $news=model('News')->find($id);
        $news['new_content']=html_entity_decode($news['new_content']);
        return $this->fetch('index',[
            'news'=>$news,
        ]);
    }
}
