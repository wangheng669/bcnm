<?php
namespace app\index\controller;

use app\index\common\Base;

class Product extends Base
{
    public function index($id=1)
    {
        $product=model('Product')->where(['category_id'=>$id])->paginate(3);
        $category=model('Category')->select();
        return $this->fetch('product',[
            'column'=>$this->column,
            'product'=>$product,
            'category'=>$category,
            'about'=>$this->about,
            'id'=>$id,
        ]);
    }
}