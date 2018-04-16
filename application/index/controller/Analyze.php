<?php
namespace app\index\controller;

use app\index\common\Base;

class Analyze extends Base
{
    public function index()
    {
        return $this->fetch('analyze',[
            'column'=>$this->column,
            'about'=>$this->about,
            'url'=>$_SERVER['REQUEST_URI'],
        ]);
    }
}