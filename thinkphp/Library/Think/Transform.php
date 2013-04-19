<?php
// +----------------------------------------------------------------------
// | TOPThink [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2011 http://topthink.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi.cn@gmail.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Think;

// 内容解析类
class Transform {

    static private $handler = [];

    static private init($type){
    	if(!isset(self::$handler[$type])) {
            $class = '\\Think\\Transform\\Driver\\' . ucwords($type);
            self::$handler[$type] = new $class();
        }
    }

    // 编码内容
    static public function encode($content, $type){
        self::init($type);
        return self::$handler[$type]->encode($content);
    }

    // 解码内容
    static public function decode($content, $type, $assoc = true){
    	self::init($type);
    	return self::$handler[$type]->decode($content, $assoc);
    }

    // 调用驱动类的方法
    // Transform::xmlEncode('abc')
    // Transform::jsonDecode('abc', true);
	static public function __callStatic($method, $params){
		$type   = substr($method, 0, strlen($method) - 6);
		$method = substr($method, -6);
		$assoc  = empty($params[2]) ? true : false;
        return self::$method($params[0], $type, $assoc);
	}
}