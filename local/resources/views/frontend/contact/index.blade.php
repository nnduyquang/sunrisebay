@extends('frontend.master')
@section('title')
Liên Hệ
@stop
@section('description')

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
    @include('frontend.contact.cont_1')
@stop