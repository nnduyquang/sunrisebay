<div id="footer">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 footer-left">
                <div class="footer-logo">
                    {{ HTML::image('images/logo/logo-footer.png', 'alt', array( )) }}
                </div>
                <div class="content">
                    <p>{{$listFrontendCommon['config-company-name']}}</p>
                    <p>Địa Chỉ: {{loai_bo_html_tag($listFrontendCommon['address'])}}</p>
                    <p>Email: {{$listFrontendCommon['email']}}</p>
                </div>
            </div>
            <div class="col-md-8 footer-right">
                <h3>đăng ký nhận thông tin & tư vấn miễn phí</h3>
                <div class="content">
                    <div class="form-group info-customer">
                        <div class="row no-gutters">
                            <div class="col-md-4 one-input">
                                <div class="ip-name input-group">
                                    {!! Form::text('name',null, array('placeholder' => 'Họ Tên','class' => 'form-control input-text')) !!}
                                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 one-input">
                                <div class="ip-phone input-group">
                                {!! Form::text('phone',null, array('placeholder' => 'Số Điện Thoại','class' => 'form-control input-text')) !!}
                                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 one-input">
                                <div class="ip-email input-group">
                                {!! Form::text('email',null, array('placeholder' => 'Email','class' => 'form-control input-text')) !!}
                                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row no-gutters">
                        <div class="col-md-6 one-button">
                            <a href="tel:{{$listFrontendCommon['hotline']}}">Call: {{$listFrontendCommon['config-phone-1']}}</a>
                        </div>
                        <div class="col-md-6 one-button">
                            <div class="button-group">
                                <button  type="button" class="btn btn-contact">Gửi ngay<i
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