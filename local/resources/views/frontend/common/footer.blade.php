<div id="footer">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 footer-left">
                <div class="footer-logo">
                    {{ HTML::image('images/logo/logo-footer.png', 'alt', array( )) }}
                </div>
                <div class="content">
                    <p>CÔNG TY CP ĐẦU TƯ VÀ PHÂN PHỐI</p>
                    <p>Địa Chỉ:</p>
                    <p>Email:</p>
                </div>
            </div>
            <div class="col-md-8 footer-right">
                <h3>đăng ký nhận thông tin & tư vấn miễn phí</h3>
                <div class="content">
                    <div class="form-group info-customer">
                        <div class="row no-gutters">
                            <div class="col-md-4 one-input">
                                {!! Form::text('title',null, array('placeholder' => 'Họ Tên','class' => 'form-control')) !!}
                            </div>
                            <div class="col-md-4 one-input">
                                {!! Form::text('title',null, array('placeholder' => 'Số Điện Thoại','class' => 'form-control')) !!}
                            </div>
                            <div class="col-md-4 one-input">
                                {!! Form::text('title',null, array('placeholder' => 'Email','class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>
                    <div class="row no-gutters">
                        <div class="col-md-6 one-button">
                            <button class="btn btn-primary">Call: 0907.468.264</button>
                        </div>
                        <div class="col-md-6 one-button">
                            <button type="submit" class="btn btn-primary">Gửi ngay</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="footer-stick" class="fixed-bottom">
    <div class="container">
        <div class="content">
            <span>Chiết khấu ngay 15% cho 30 khách đầu tiên mua trong hôm nay</span>
            <span><a href="{{URL::to('lien-he')}}">đăng ký ngay</a></span>
        </div>
    </div>
</div>