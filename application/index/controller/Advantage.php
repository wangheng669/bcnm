<?php
namespace app\index\controller;

use app\index\common\Base;

class Advantage extends Base
{
    public function index()
    {
        return $this->fetch('advantage',[
            'column'=>$this->column,
            'about'=>$this->about,
            'url'=>$_SERVER['REQUEST_URI'],
        ]);
    }
}