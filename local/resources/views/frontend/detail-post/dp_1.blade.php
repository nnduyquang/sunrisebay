<div id="dp_1">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h1>{{$data['post_tintuc']->title}}</h1>
                <div class="descritption">
                    {!! $data['post_tintuc']->description !!}
                </div>
                <div class="content">
                    {!! $data['post_tintuc']->content !!}
                </div>
            </div>
            <div class="col-md-4">
                @include('frontend.common.sidebar.sb_register')
                <div id="order-post">
                    <div class="dp-title">
                        <span>tin tức khác</span>
                    </div>
                    <div class="dp-content">
                        @foreach($data['post_other'] as $key=>$item)
                        <div class="one-item">
                            <div class="row no-gutters">
                                <div class="col-md-3">
                                    <div class="img-order-post">
                                        <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                            {{ HTML::image($item->image, 'alt', array( )) }}
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="order-title"><a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a></div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>