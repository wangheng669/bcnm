<?php
namespace app\index\controller;

use app\index\common\Base;

class Contact extends Base
{
    public function index()
    {
        return $this->fetch('contact',[
            'column'=>$this->column,
            'about'=>$this->about,
            'url'=>$_SERVER['REQUEST_URI'],
        ]);
    }
    public function contact(){
        $post_data=request()->post();
        $data=[
            'username'=>$post_data['username'],
            'tel'=>$post_data['tel'],
            'address'=>$post_data['address'],
            'content'=>$post_data['content'],
        ];
        if(model('Contact')->save($data)){
            $this->success('提交成功');
        };   
    }
}