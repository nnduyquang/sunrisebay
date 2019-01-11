@extends('frontend.master')
@section('title')
{{$listFrontendCommon['config-seo-title']}}
@stop
@section('description')
{{$listFrontendCommon['config-seo-description']}}
@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')
{{URL::to($listFrontendCommon['config-seo-image'])}}
@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    @include('frontend.news.ne_1')
    @include('frontend.home.h_6')
@stop