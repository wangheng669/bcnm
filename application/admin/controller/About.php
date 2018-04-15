<?php

namespace app\admin\controller;

use app\admin\common\Base;

class About extends Base
{
    public function index(){
        $about=model('About')->find();
        return $this->fetch('About',[
            'about'=>$about,
        ]);
    }
    public function saveAbout(){
        $post_data=request()->post();
        return $this->operate('About',$post_data,true);
    }
}