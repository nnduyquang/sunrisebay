<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{

    public function getFrontend();

    public function getTinTuc();

    public function getDetailTinTuc($path);

    public function getDetailTrang($path);

    public function getFrontendCommon();

    public function getAllMenuFrontend();
}