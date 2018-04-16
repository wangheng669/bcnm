<?php

namespace app\admin\validate;

use think\Validate;

class About extends Validate
{
    //定义规则
    protected $rule    = [
        //id
        'id'    => 'number',
        'title'  => 'require|checkChina',
        'company_name'  => 'require|checkChina',
        'join_tel'  => 'require|checkChina',
        'company_tel'  => 'require|checkChina',
        'records'  => 'require|checkChina',
        'address'  => 'require|checkChina',
    ];
    protected $message = [
        'id.number'     => '请勿修改',
        'title.require'      => '请填写标题',
        'company_name.require'      => '请填写公司名称',
        'join_tel.require'      => '请填写加盟热线',
        'company_tel.require'      => '请填写值班热线',
        'records.require'      => '请填写备案号',
        'address.require'      => '请填写公司地址',
    ];
    protected function checkChina($value)
    {
        $res = preg_match_all('/^[a-zA-Z0-9\x{4e00}-\x{9fa5}]+$|^[a-zA-Z0-9\x{4e00}-\x{9fa5}][a-zA-Z0-9_\s\ \x{4e00}-\x{9fa5}\.]*[a-zA-Z0-9\x{4e00}-\x{9fa5}]+$/u', $value);
        if (!$res) {
            return "字符错误";
        } else {
            return true;
        }
    }
}
