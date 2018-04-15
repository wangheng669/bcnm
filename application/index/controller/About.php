<?php
namespace app\index\controller;

use app\index\common\Base;

class About extends Base
{
    public function index()
    {
        return $this->fetch('about',[
            'column'=>$this->column,
            'about'=>$this->about,
        ]);
    }
}