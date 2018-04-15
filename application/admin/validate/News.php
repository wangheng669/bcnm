<?php

namespace app\admin\validate;

use think\Validate;

class News extends Validate
{
    protected $rule    = [
        'id'          => 'number',
        'new_title' => 'require',
        'new_desc' => 'require',
        'new_content' => 'require',
    ];
    protected $message = [
        'id.number' => '不能修改',
        'new_title.require' => '标题不能为空',
        'new_desc.require' => '简介不能为空',
        'new_content.require' => '内容不能为空',
    ];
}
