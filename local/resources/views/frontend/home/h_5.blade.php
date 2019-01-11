<div id="h_5">
    <h3>Tiện ích đẳng cấp</h3>
        <div class="row no-gutters">
            @foreach($data['post_all_tienich'] as $key=>$item)
            <div class="col-md-6">
                <div class="one-item">
                    <div class="img-item"
                         style="background-image:url({{URL::to($item->image)}})">

                    </div>
                    <div class="content">
                        <i class="far fa-heart"></i>
                        <h3 class="title"><a href="#">{{$item->title}}</a></h3>
                    </div>
                </div>
            </div>
            @endforeach
            {{--<div class="col-md-6">--}}
                {{--<div class="one-item">--}}
                    {{--<div class="img-item"--}}
                         {{--style="background-image:url({{URL::asset('images/temps/home/tien_ich_ben_du_thuyen.jpg')}})">--}}

                    {{--</div>--}}
                    {{--<div class="content">--}}
                        {{--<i class="far fa-heart"></i>--}}
                        {{--<h3 class="title"><a href="#">Bến Du Thuyền</a></h3>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="col-md-6">--}}
                {{--<div class="one-item">--}}
                    {{--<div class="img-item"--}}
                         {{--style="background-image:url({{URL::asset('images/temps/home/tien_ich_phong_tap_the_thao.jpg')}})">--}}

                    {{--</div>--}}
                    {{--<div class="content">--}}
                        {{--<i class="far fa-heart"></i>--}}
                        {{--<h3 class="title"><a href="#">Phòng Tập Gym</a></h3>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="col-md-6">--}}
                {{--<div class="one-item">--}}
                    {{--<div class="img-item"--}}
                         {{--style="background-image:url({{URL::asset('images/temps/home/tien_ich_cong_vien_cay_xanh.jpg')}})">--}}

                    {{--</div>--}}
                    {{--<div class="content">--}}
                        {{--<i class="far fa-heart"></i>--}}
                        {{--<h3 class="title"><a href="#">Tiện Ích Công Viên Cây Xanh</a></h3>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}

        </div>
</div>