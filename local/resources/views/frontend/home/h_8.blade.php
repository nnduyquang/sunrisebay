<div id="h_8">
    <div class="container">
        <h3>Tin tức - sự kiện</h3>
        <div class="bottom_makeup"
             style="
                     background:url({{URL::asset('images/temps/home/bg_content.png')}}) bottom center no-repeat;"></div>
        <div class="row">
            <div class="col-md-8">
                @php
                    $keyItem='';
                    $count=1;
                @endphp
                @foreach($data['post_all_tintuc'] as $key=>$item)
                    @if($count==1)
                        <div class="one-news">
                            <div class="img-news">
                                <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                    {{ HTML::image($item->image, 'alt', array( )) }}
                                </a>
                            </div>
                            <div class="date-news">
                                <span>{{$item->created_at}}</span>
                            </div>
                            <div class="content">
                                <h4><a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a></h4>
                                <div class="description">
                                    {{loai_bo_html_tag($item->description)}}
                                </div>
                                <a class="view-more" href="{{URL::to('tin-tuc/'.$item->path)}}">Xem Thêm</a>
                            </div>
                        </div>
                        @php
                            $keyItem=$key;
                        @endphp
                    @endif
                    @php
                        $count++;
                    @endphp
                @endforeach
            </div>
            <div class="col-md-4">
                @foreach($data['post_all_tintuc'] as $key=>$item)
                    @if($keyItem<$key)
                        <div class="one-news n-left">
                            <div class="img-news">
                                <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                    {{ HTML::image($item->image, 'alt', array( )) }}
                                </a>
                            </div>
                            <div class="date-news">
                                <span>05/12/2018</span>
                            </div>
                            <div class="content">
                                <h4><a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a></h4>
                                <div class="description">
                                    {{cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description),250)}}
                                </div>
                                <a class="view-more" href="{{URL::to('tin-tuc/'.$item->path)}}">Xem Thêm</a>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
</div>