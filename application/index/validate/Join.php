<?php

namespace app\index\validate;

use think\Validate;

class Join extends Validate
{
    //定义规则
    protected $rule    = [
        'id'          => 'number',
        'username' => 'require',
        'tel' => 'require',
        'info' => 'require',
        'email' => 'require',
    ];
    protected $message = [
        'username.require' => '用户名称不能为空',
        'tel.require'     => '电话号码不能为空',
        'info.require'     => '备注信息不能为空',
        'email.require'     => '邮箱不能为空',
    ];
}
