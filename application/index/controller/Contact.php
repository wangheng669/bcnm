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
        ]);
    }
    public function contact(){
        $post_data=request()->post();
        $data=[
            'username'=>htmlspecialchars($post_data['username']),
            'tel'=>intval($post_data['tel']),
            'address'=>htmlspecialchars($post_data['address']),
            'content'=>htmlspecialchars($post_data['content']),
        ];
        if(model('Contact')->save($data)){
            $this->success('提交成功');
        };   
    }
}