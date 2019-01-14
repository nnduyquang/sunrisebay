<div id="cont_1">
    <div class="container">
        <h1>thông tin liên hệ</h1>
        <p>Xin vui lòng điền đầy đủ thông tin vào form bên dưới để liên hệ với chúng tôi và được tư vấn miễn phí.</p>
        <div class="contact-form">
            <div class="row">
                <div class="col-md-7 cont-left">
                    <h3>form liên hệ</h3>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="ip-name input-group">
                                    {!! Form::text('name',null, array('placeholder' => 'Tên','class' => 'form-control input-text')) !!}
                                    <i class="fa fa-user icon-input"></i>
                                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="ip-phone input-group">
                                    {!! Form::text('phone',null, array('placeholder' => 'Số điện thoại','class' => 'form-control input-text')) !!}
                                    <i class="fa fa-phone icon-input"></i>
                                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="ip-email input-group">
                                    {!! Form::text('email',null, array('placeholder' => 'Email','class' => 'form-control input-text')) !!}
                                    <i class="fa fa-phone icon-input"></i>
                                    <i class="fa fa-envelope-o icon-input"></i>
                                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-group">
                                    {!! Form::textarea('description',null,array('placeholder' => 'Nội dung','id'=>'seo-description-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                                    <i class="fa fa-comments icon-input"></i>
                                </div>
                            </div>
                        </div>
                        <div class="btn-submit">
                            {{--<a href="#">đăng ký</a>--}}
                            <div class="button-group">
                                <button  type="button" class="btn btn-contact">Đăng ký<i
                                            class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending" style="
    font-size: 15px;display: none"></i><i
                                            class="fa fa-check-circle successSending" aria-hidden="true"
                                            style="display: none"></i></button>
                                <span style="display: none;color:  green;font-weight:  bold;margin-top:  5px;">Chúng tôi đã nhận được mail và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 cont-right">
                    <div class="info">
                        <h3>{{$listFrontendCommon['config-company-name']}}</h3>
                        <h4>trụ sở chính</h4>
                        <p>{{loai_bo_html_tag($listFrontendCommon['address'])}}</p>
                        <div class="content">
                            <p>
                                <i class="fa fa-phone"></i><strong>Hotline</strong><br>
                                {{$listFrontendCommon['config-phone-1']}} - {{$listFrontendCommon['config-phone-2']}}
                            </p>
                            <p>
                                <i class="fa fa-envelope"></i><strong>Email</strong><br>
                                {{$listFrontendCommon['email']}}
                            </p>
                            <p>
                                <i class="fa fa-home"></i><strong>Website</strong><br>
                                <a href="http://www.rioland.vn"><strong>the-sunrisebay-danang.net</strong></a>
                            </p>
                        </div>
                        {{--<h4>chi nhánh</h4>--}}
                        {{--<p>39 Vũ Tông Phan, P. An Phú, Quận 2, Tp.Hồ Chí Minh</p>--}}
                        {{--<p>16 Lương Định Của, P. An Phú, Quận 2, Tp.Hồ Chí Minh</p>--}}
                    </div>
                </div>
                <div id="map" class="col-md-12">

                </div>
            </div>
        </div>
    </div>
</div>