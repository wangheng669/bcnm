<?php
namespace app\index\controller;

use app\index\common\Base;

class Flow extends Base
{
    public function index()
    {
        return $this->fetch('flow',[
            'column'=>$this->column,
            'about'=>$this->about,
        ]);
    }
}