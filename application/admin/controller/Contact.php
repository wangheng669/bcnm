<?php

namespace app\admin\controller;

use app\admin\common\Base;

class Contact extends Base
{
    public function index(){
        $contactList=model('Contact')->select();
        $contactCount=model('Contact')->count();
        return $this->fetch('contact-list',[
            'contactList'=>$contactList,
            'contactCount'=>$contactCount,
        ]);
    }
    public function deleteContact(){
        return $this->delete('contact');
    }
}