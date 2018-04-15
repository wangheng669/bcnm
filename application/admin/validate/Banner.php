<?php

namespace app\admin\validate;

use think\Validate;

class Banner extends Validate
{
    //定义规则
    protected $rule    = [
        //id
        'id'    => 'number',
        'banner_link'  => 'require|url',
    ];
    protected $message = [
        'id.number'     => '请勿修改',
        'banner_link.url'      => '请填写正确的url地址',
    ];
}
