<div id="h_2">
    <div class="container">
        <div class="row">
            <div id="h_2_left" class="col-md-8 wow fadeInLeft">
                <div class="img_demo"  style="background-image:url({{URL::asset($data['post_tongquan']->image)}})"></div>

            </div>
            <div id="h_2_right" class="col-md-4 wow fadeInRight" data-wow-delay="2s">
                <h3>Thông Tin Tổng Quan Về Dự Án The Sunrise Bay Đà Nẵng</h3>
                <div class="content">

                       {!! $data['post_tongquan']->content !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>