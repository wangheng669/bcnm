<?php

namespace app\phone\controller;

use think\Controller;
use think\Request;

class Index extends Controller
{
    public function index()
    {
        $bannerList=model('Banner')->select();
        $productList=model('Product')->select();
        $newsList=model('News')->select();
        $about=model('About')->find();
        return $this->fetch('index',[
            'bannerLister'=>$bannerList,
            'productList'=>$productList,
            'newsList'=>$newsList,
            'about'=>$about,
        ]);
    }
}
