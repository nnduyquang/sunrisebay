@extends('frontend.master')
@section('title')

@stop
@section('description')

@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    @include('frontend.home.h_1')
    @include('frontend.home.h_2')
    @include('frontend.home.h_3')
    @include('frontend.home.h_4')
@stop