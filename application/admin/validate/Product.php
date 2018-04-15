<?php

namespace app\admin\validate;

use think\Validate;

class Product extends Validate
{
    //定义规则
    protected $rule    = [
        'id'          => 'number',
        'category_id' => 'require|number',
        'product_title' => 'require',
    ];
    protected $message = [
        'id.number' => '请勿修改',
        'category_id.require' => '分类不能为空',
        'category_id.number' => '请勿修改',
        'product_title.require'  => '产品名称不能为空',
    ];
}
