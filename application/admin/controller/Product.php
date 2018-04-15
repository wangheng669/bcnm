<?php

namespace app\admin\controller;

use app\admin\common\Base;

class Product extends Base
{
    public function index(){
        $productList=model('Product')->select();
        $productCount=model('Product')->count();
        return $this->fetch('product-list',[
            'productList'=>$productList,
            'productCount'=>$productCount,
        ]);
    }
    public function ProductAdd()
    {
        $category=model('Category')->select();
        return $this->fetch('product-add',[
            'category'=>$category,
        ]);    
    }
    public function ProductEdit($id)
    {
        $productEdit=model('Product')->get($id);
        $category=model('Category')->select();
        return $this->fetch('product-edit',[
            'productEdit'=>$productEdit,
            'category'=>$category,
        ]); 
    }
    public function saveProduct(){
        $post_data=request()->post();
        if(isset($post_data['id']))
        {
            return $this->operate('Product',$post_data,true);
        }else{
            return $this->operate('Product',$post_data,false);
        }
    }
    public function deleteProduct(){
        return $this->delete('Product');
    }
}