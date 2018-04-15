<?php

namespace app\admin\controller;

use app\admin\common\Base;

class Column extends Base
{
    //严谨点要创建一个
    public function index()
    {
        $columnList=model('Column')->select();
        $columnCount=model('Column')->count();
        return $this->fetch('column-list',[
            'columnList'=>$columnList,
            'columnCount'=>$columnCount,
        ]);
    }
    public function columnAdd()
    {
        return $this->fetch('column-add');    
    }
    public function columnEdit($id)
    {
        $columnEdit=model('Column')->get($id);
        return $this->fetch('column-edit',[
            'columnEdit'=>$columnEdit
        ]); 
    }
    public function saveColumn(){
        $post_data=request()->post();
        if(isset($post_data['id']))
        {
            return $this->operate('Column',$post_data,true);
        }else{
            return $this->operate('Column',$post_data,false);
        }
    }
    public function deleteColumn(){
        return $this->delete('Column');
    }
}
