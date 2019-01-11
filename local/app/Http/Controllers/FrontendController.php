<?php

namespace App\Http\Controllers;

use App\Repositories\Frontend\FrontendRepositoryInterface;

class FrontendController extends Controller
{
    protected $frontendRepository;

    public function __construct(FrontendRepositoryInterface $frontendRepository)
    {
        $this->frontendRepository = $frontendRepository;
    }

    public function getFrontend(){
        $data = $this->frontendRepository->getFrontend();
        return view('frontend.home.index', compact('data'));
    }
    public function getTinTuc(){
        $data = $this->frontendRepository->getTinTuc();
        return view('frontend.news.index', compact('data'));
    }
    public function getDetailTinTuc($path){
        $data = $this->frontendRepository->getDetailTinTuc($path);
        return view('frontend.detail-post.index', compact('data'));
    }
    public function getDetailTrang($path){
        $data = $this->frontendRepository->getDetailTrang($path);
        return view('frontend.page.index', compact('data'));
    }

}

