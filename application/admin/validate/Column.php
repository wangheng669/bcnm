<?php

namespace app\admin\validate;

use think\Validate;

class Column extends Validate
{
    //定义规则
    protected $rule    = [
        'id'          => 'number',
        'column_name' => 'require',
        'column_link' => 'require',
    ];
    protected $message = [
        'column_link.require' => '链接名称不能为空',
        'column_link.url'     => '链接不能为空',
    ];
}
