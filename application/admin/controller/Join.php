<?php

namespace app\admin\controller;

use app\admin\common\Base;

class Join extends Base
{
    public function index(){
        $joinList=model('Join')->select();
        $joinCount=model('Join')->count();
        return $this->fetch('join-list',[
            'joinList'=>$joinList,
            'joinCount'=>$joinCount,
        ]);
    }
    public function deleteJoin(){
        return $this->delete('Join');
    }
}