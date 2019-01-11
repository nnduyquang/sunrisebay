<div id="sb_register">
    <div class="r-title">
        <span>nhận thông tin dự án</span>
    </div>
    <div class="r-content">
        <p>Bảng giá bán, hợp đồng mua bán, chính sách cho vay vốn, chương trình khuyến mại mới nhất.</p>
        <div class="row no-gutters">
            <div class="col-md-12">
                <div class="ip-email input-group">
                {!! Form::text('email',null, array('placeholder' => 'Email','class' => 'form-control input-text')) !!}
                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                        Please choose a username.
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="ip-phone input-group">
                {!! Form::text('phone',null, array('placeholder' => 'Số điện thoại','class' => 'form-control input-text')) !!}
                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                        Please choose a username.
                    </div>
                </div>
            </div>
            <div class="col-md-12 btn-send">
                <div class="button-group">
                    <button type="button" class="btn btn-contact btn-primary">Gửi Ngay<i
                                class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending" style="
    font-size: 15px;display: none"></i><i
                                class="fa fa-check-circle successSending" aria-hidden="true"
                                style="display: none"></i></button>
                    <span style="display: none;color:  green;font-weight:  bold;margin-top:  5px;">Chúng tôi đã nhận được mail và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>
                </div>
            </div>
        </div>
    </div>
</div>