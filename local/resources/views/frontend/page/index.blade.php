@extends('frontend.master')
@section('title')
{{$data['post_tintuc']->title}}
@stop
@section('description')
{{$data['post_tintuc']->title}}
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
    @include('frontend.page.pa_1')
    @include('frontend.home.h_6')
@stop