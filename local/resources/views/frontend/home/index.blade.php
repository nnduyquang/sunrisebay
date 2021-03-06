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
http://the-sunrisebay-danang.net/
@stop
@section('image-og'){{URL::to($listFrontendCommon['config-seo-image'])}}@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    @include('frontend.home.h_1')
    @include('frontend.home.h_2')
    @include('frontend.home.h_9')
    @include('frontend.home.h_10')
    {{--@include('frontend.home.h_5')--}}
    @include('frontend.home.h_11')
    @include('frontend.home.h_6')
    @include('frontend.home.h_7')
    @include('frontend.home.h_8')
@stop