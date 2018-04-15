<?php
namespace app\index\controller;

use app\index\common\Base;

class News extends Base
{
    public function index()
    {
        $news=model('News')->paginate(5);
        return $this->fetch('news-list',[
            'column'=>$this->column,
            'news'=>$news,
            'about'=>$this->about,
        ]);
    }
    public function detail($id=1)
    {
        $news=model('News')->find($id);
        $news['new_content']=html_entity_decode($news['new_content']);
        return $this->fetch('news-detail',[
            'column'=>$this->column,
            'news'=>$news,
            'about'=>$this->about,
        ]);
    }
}