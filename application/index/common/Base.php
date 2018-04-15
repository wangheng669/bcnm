<?php

namespace app\index\common;

use think\Controller;
use think\Session;
use think\Request;

class Base extends Controller
{
    protected $about;
    protected $column;
    public function _initialize()
    {
        $this->ismobile();
        $this->about=model('About')->find();
        $this->column=model('Column')->select();
    }
    public function join(){
        $post_data=request()->post();
        if(captcha_check($post_data['code'])){
            $validate=validate('Join');
            if(!$validate->check($post_data)){
                $message=$validate->getError();
                $this->success($message);
            }
            if(model('Join')->allowField(true)->save($post_data)){
                $this->success('提交成功');
            }
        }else{
            $this->error('验证码错误');
        }  
    }
    public function ismobile(){
        if(Request::instance()->isMobile()){
            $this->redirect('/phone');
        }
    }
}