<?php
namespace app\index\controller;

use app\index\common\Base;

class Index extends Base
{
    public function index()
    {
        $banner=model('Banner')->select();
        $product=model('Product')->order(['id'=>'desc'])->limit(5)->select();
        $news=model('News')->order(['id'=>'desc'])->limit(3)->select();
        return $this->fetch('index',[
            'column'=>$this->column,
            'banner'=>$banner,
            'product'=>$product,
            'news'=>$news,
            'about'=>$this->about,
        ]);
    }
}
