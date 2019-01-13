<div id="h_7">
    <div class="container">
        <h3>Các loại hình sản phẩm tại The Sunrise bay đà nẵng</h3>
        <div class="bottom_makeup"
             style="background:url({{URL::asset('images/temps/home/bg_content.png')}}) bottom center no-repeat;">
        </div>
        <ul class="nav nav-tabs">
            @php
                $count=1;
            @endphp
            @foreach($data['post_all_loaihinh'] as $key=>$item)
                <li @if($count==1)class="active" @endif><a data-toggle="tab" href="#lh_{{$item->id}}"
                                                           @if($count==1)class="active show"@endif>{{$item->title}}</a>
                </li>
                @php
                    $count++;
                @endphp
            @endforeach
            {{--<li><a data-toggle="tab" href="#menu1">Biệt thự song lập</a></li>--}}
            {{--<li><a data-toggle="tab" href="#menu2">Nhà phố vườn</a></li>--}}
            {{--<li><a data-toggle="tab" href="#menu3">nhà phố thương mại</a></li>--}}
        </ul>

        <div class="content tab-content">
            @php
                $count=1;
            @endphp
            @foreach($data['post_all_loaihinh'] as $key=>$item)
                <div id="lh_{{$item->id}}" class="tab-pane fade @if($count==1) in active show @endif">
                    {!! $item->content !!}
                    <div class="row no-gutters">
                        @php
                            $listImage=explode(';',$item->sub_image);
                            $count_item=count($listImage);
                        @endphp
                        @foreach($listImage as $key2=>$item2)
                            @if($count_item==1)
                                <div class="col-md-12">
                                    <a class="fancybox" data-caption=""
                                       data-fancybox="gallery-{{$item->path}}"
                                       href="{{URL::to($item2)}}">
                                        {{ HTML::image($item2, 'alt', array()) }}
                                    </a>
                                </div>
                            @elseif($count_item>=6||$count_item%3==0)
                                <div class="col-md-4">
                                    <a class="fancybox" data-caption=""
                                       data-fancybox="gallery-{{$item->path}}"
                                       href="{{URL::to($item2)}}">
                                        {{ HTML::image($item2, 'alt', array()) }}
                                    </a>
                                </div>
                            @else
                                <div class="col-md-6">
                                    <a class="fancybox" data-caption=""
                                       data-fancybox="gallery-{{$item->path}}"
                                       href="{{URL::to($item2)}}">
                                        {{ HTML::image($item2, 'alt', array()) }}
                                    </a>
                                </div>
                            @endif
                        @endforeach
                        {{--<div class="col-md-4">--}}
                        {{--<a class="fancybox" data-caption="Phòng Ăn"--}}
                        {{--data-fancybox="gallery-don-lap"--}}
                        {{--href="{{URL::to('images/temps/home/biet_thu_don_lap/phong_an.jpg')}}">--}}
                        {{--{{ HTML::image('images/temps/home/biet_thu_don_lap/phong_an.jpg', 'alt', array()) }}--}}
                        {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-4">--}}
                        {{--<a class="fancybox" data-caption="Phòng Ngủ Nhỏ"--}}
                        {{--data-fancybox="gallery-don-lap"--}}
                        {{--href="{{URL::to('images/temps/home/biet_thu_don_lap/phong_ngu_1.jpg')}}">--}}
                        {{--{{ HTML::image('images/temps/home/biet_thu_don_lap/phong_ngu_1.jpg', 'alt', array()) }}--}}
                        {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-4">--}}
                        {{--<a class="fancybox" data-caption="Phòng Ngủ Lớn"--}}
                        {{--data-fancybox="gallery-don-lap"--}}
                        {{--href="{{URL::to('images/temps/home/biet_thu_don_lap/phong_ngu_2.jpg')}}">--}}
                        {{--{{ HTML::image('images/temps/home/biet_thu_don_lap/phong_ngu_2.jpg', 'alt', array()) }}--}}
                        {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-4">--}}
                        {{--<a class="fancybox" data-caption="Phòng Tắm"--}}
                        {{--data-fancybox="gallery-don-lap"--}}
                        {{--href="{{URL::to('images/temps/home/biet_thu_don_lap/phong_ngu_2.jpg')}}">--}}
                        {{--{{ HTML::image('images/temps/home/biet_thu_don_lap/phong_tam.jpg', 'alt', array()) }}--}}
                        {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-4">--}}
                        {{--<a class="fancybox" data-caption="Hồ Bơi"--}}
                        {{--data-fancybox="gallery-don-lap"--}}
                        {{--href="{{URL::to('images/temps/home/biet_thu_don_lap/ho_boi.jpg')}}">--}}
                        {{--{{ HTML::image('images/temps/home/biet_thu_don_lap/ho_boi.jpg', 'alt', array()) }}--}}
                        {{--</a>--}}
                        {{--</div>--}}
                    </div>
                </div>
                @php
                    $count++;
                @endphp
            @endforeach
            {{--<div id="lh_16" class="tab-pane fade">--}}
            {{--<p>Biệt thự song lập nằm trải dài trên tuyến đường đại lộ xanh được thiết kế riêng biệt nhằm đảm bảo--}}
            {{--an--}}
            {{--ninh tuyệt đối nhưng vẫn hưởng được những tiện ích nội khu.</p>--}}
            {{--<div class="row no-gutters">--}}
            {{--<div class="col-md-12">--}}
            {{--<a class="fancybox" data-caption="Biệt Thự Song Lập"--}}
            {{--data-fancybox="gallery-song-lap"--}}
            {{--href="{{URL::to('images/temps/home/biet_thu_song_lap/two-side-park-view.jpg')}}">--}}
            {{--{{ HTML::image('images/temps/home/biet_thu_song_lap/two-side-park-view.jpg', 'alt', array()) }}--}}
            {{--</a>--}}
            {{--</div>--}}
            {{--</div>--}}
            {{--</div>--}}
            {{--<div id="lh_17" class="tab-pane fade">--}}
            {{--<p>Nhà phố được thiết kế tối ưu về không gian sống cho gia chủ trải nghiệm tối đa những giây phút--}}
            {{--thư--}}
            {{--giãn bên gia đình và người thân.</p>--}}
            {{--<div class="row no-gutters">--}}
            {{--<div class="col-md-6">--}}
            {{--<a class="fancybox" data-caption="Nội Thất Phòng Khách"--}}
            {{--data-fancybox="gallery-nha-pho"--}}
            {{--href="{{URL::to('images/temps/home/nha_pho_vuon/noi_that_phong_khach.jpg')}}">--}}
            {{--{{ HTML::image('images/temps/home/nha_pho_vuon/noi_that_phong_khach.jpg', 'alt', array()) }}--}}
            {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-6">--}}
            {{--<a class="fancybox" data-caption="Nội Thất Phòng Khách 2"--}}
            {{--data-fancybox="gallery-nha-pho"--}}
            {{--href="{{URL::to('images/temps/home/nha_pho_vuon/noi_that_phong_khach_2.jpg')}}">--}}
            {{--{{ HTML::image('images/temps/home/nha_pho_vuon/noi_that_phong_khach_2.jpg', 'alt', array()) }}--}}
            {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-6">--}}
            {{--<a class="fancybox" data-caption="Nội Thất Phòng Ngủ"--}}
            {{--data-fancybox="gallery-nha-pho"--}}
            {{--href="{{URL::to('images/temps/home/nha_pho_vuon/noi_that_phong_ngu.jpg')}}">--}}
            {{--{{ HTML::image('images/temps/home/nha_pho_vuon/noi_that_phong_ngu.jpg', 'alt', array()) }}--}}
            {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-6">--}}
            {{--<a class="fancybox" data-caption="Nội Thất Phòng Bếp"--}}
            {{--data-fancybox="gallery-nha-pho"--}}
            {{--href="{{URL::to('images/temps/home/nha_pho_vuon/noi_that_phong_bep.jpg')}}">--}}
            {{--{{ HTML::image('images/temps/home/nha_pho_vuon/noi_that_phong_bep.jpg', 'alt', array()) }}--}}
            {{--</a>--}}
            {{--</div>--}}
            {{--</div>--}}
            {{--</div>--}}
            {{--<div id="lh_18" class="tab-pane fade">--}}
            {{--<p>Nhà phố thương mại nằm trên những trục đường chính của khu đô thị The Sunrise Bay Đà Nẵng, nơi--}}
            {{--dòng--}}
            {{--người qua lại tấp nập, buôn bán sầm uất.</p>--}}
            {{--<div class="row no-gutters">--}}
            {{--<div class="col-md-12">--}}
            {{--<a class="fancybox" data-caption="Nhà Phố Thương Mại"--}}
            {{--data-fancybox="gallery-shophouse"--}}
            {{--href="{{URL::to('images/temps/home/shophouse/nha_pho_thuong_mai.jpg')}}">--}}
            {{--{{ HTML::image('images/temps/home/shophouse/nha_pho_thuong_mai.jpg', 'alt', array()) }}--}}
            {{--</a>--}}
            {{--</div>--}}
            {{--</div>--}}
            {{--</div>--}}
        </div>
    </div>
</div>