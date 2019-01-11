<div id="ne_1">
    <div class="container">
        <div class="line-title">
            <span>tin tức</span>
        </div>
        <div class="row">
            @foreach($data['post_all_tintuc'] as $key=>$item)
            <div class="col-md-6">
                <div class="one-item">
                    <div class="row">
                        <div class="col-md-5">
                            <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                {{ HTML::image($item->image, 'alt', array( )) }}
                            </a>
                        </div>
                        <div class="col-md-7">
                            <div class="content">
                                <div class="news-title"><a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a></div>
                                <div class="news-date">{{$item->created_at}}</div>
                                <div class="news-description"> {{cat_chuoi_dai_thanh_ngan(loai_bo_html_tag($item->description),200)}}</div>
                                <a class="view-more" href="{{URL::to('tin-tuc/'.$item->path)}}">Chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>