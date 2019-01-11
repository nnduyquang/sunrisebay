<div class="slider">
    <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider">
            @php
                $listImageSlider=explode(';',$listFrontendCommon['slider-config']);
            @endphp
            @foreach($listImageSlider as $key=>$item)
                {{ Html::image($item,'',array('class'=>'slideshow')) }}
            @endforeach
        </div>
    </div>
</div>