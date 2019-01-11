<div id="sb_register">
    <div class="r-title">
        <span>nhận thông tin dự án</span>
    </div>
    <div class="r-content">
        <p>Bảng giá bán, hợp đồng mua bán, chính sách cho vay vốn, chương trình khuyến mại mới nhất.</p>
        <div class="row no-gutters">
            <div class="col-md-12">
                {!! Form::text('email',null, array('placeholder' => 'Email','class' => 'form-control')) !!}
            </div>
            <div class="col-md-12">
                {!! Form::text('phone',null, array('placeholder' => 'Số điện thoại','class' => 'form-control')) !!}
            </div>
            <div class="col-md-12 btn-send">
                <button type="submit" class="btn btn-primary">Gửi ngay</button>
            </div>
        </div>
    </div>
</div>