<?php

namespace App\Repositories\Frontend;


use App\CategoryItem;
use App\Config;
use App\Menu;
use App\Post;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data=[];
        $post=new Post();
        $categoryItem=new CategoryItem();
        $post_khuyenmai=$post->getPostById(1);
        $post_tongquan=$post->getPostById(2);
        $post_vitri=$post->getPostById(22);
        $post_all_lydo=$categoryItem->getPostByCategoryIdHasLimit(1,8);
        $post_all_tienich=$categoryItem->getPostByCategoryIdHasLimit(2,6);
        $post_all_loaihinh=$categoryItem->getPostByCategoryIdHasLimit(3,4);
        $post_all_tintuc=$categoryItem->getPostByCategoryIdHasLimit(4,3,'DESC');
        $data['post_khuyenmai']=$post_khuyenmai;
        $data['post_tongquan']=$post_tongquan;
        $data['post_vitri']=$post_vitri;
        $data['post_all_lydo']=$post_all_lydo;
        $data['post_all_tienich']=$post_all_tienich;
        $data['post_all_loaihinh']=$post_all_loaihinh;
        $data['post_all_tintuc']=$post_all_tintuc;
        return $data;
    }

    public function getTinTuc()
    {
        $data=[];
        $categoryItem=new CategoryItem();
        $post_all_tintuc=$categoryItem->getPostByCategoryIdNoLimit(4,'DESC');
        $data['post_all_tintuc']=$post_all_tintuc;
        return $data;
    }

    public function getDetailTinTuc($path)
    {
        $data=[];
        $post=new Post();
        $categoryItem=new CategoryItem();
        $post_tintuc=$post->getPostByPath($path);
        $post_other=$categoryItem->getPostByCategoryIdExceptPostId(4,$post_tintuc->id,10,'DESC');
        $data['post_tintuc']=$post_tintuc;
        $data['post_other']=$post_other;
        return $data;
    }


    public function getFrontendCommon()
    {
        $data=[];
        $config = new Config();
        $dataConfig = $config->getConfigByListName(['config-phone','config-address', 'config-email', 'config-contact', 'logo-config','script-js-header','script-js-body','contact-image-config','order-image-config','map-config','config-seo-title','config-seo-description','config-seo-image','slider-config']);
        foreach ($dataConfig as $key => $item) {
            if ($item->name == 'config-phone')
                $data['hotline'] = $item->content;
            if ($item->name == 'config-email')
                $data['email'] = $item->content;
            if ($item->name == 'config-address')
                $data['address'] = $item->content;
            if ($item->name == 'config-contact')
                $data['contact'] = $item->content;
            if ($item->name == 'script-js-header')
                $data['script-js-header'] = $item->content;
            if ($item->name == 'script-js-body')
                $data['script-js-body'] = $item->content;
            if ($item->name == 'config-seo-title')
                $data['config-seo-title'] = $item->content;
            if ($item->name == 'config-seo-description')
                $data['config-seo-description'] = $item->content;
            if ($item->name == 'config-seo-image')
                $data['config-seo-image'] = $item->content;
            if ($item->name == 'slider-config')
                $data['slider-config'] = $item->content;
        }
        return $data;
    }

    public function getAllMenuFrontend()
    {
        $menu = new Menu();
        $data = $menu->getAllOrderBy('order');
        return $data;
    }


}