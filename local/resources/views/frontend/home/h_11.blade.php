<div id="h_11">
    <div class="title">
        <h3>tiện ích đẳng cấp</h3>
    </div>
    <div class="container">
        <div class="content">
            <div class="row">
                @php
                    $delay=0;
                @endphp
                @foreach($data['post_all_tienich'] as $key=>$item)
                    <div class="col-md-4">
                        <div class="one-item wow fadeIn" data-wow-delay="{{$delay}}s">
                            <div class="image" style="background-image:url({{URL::to($item->image)}})">

                            </div>
                            <div class="item-title">{{$item->title}}</div>
                        </div>
                    </div>
                    @php
                        $delay=$delay+0.25;
                    @endphp
                @endforeach
            </div>
        </div>
    </div>
</div>