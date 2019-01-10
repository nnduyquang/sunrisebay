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
                                <div class="input-group">
                                    {!! Form::text('name',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                                    <i class="fa fa-user icon-input"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    {!! Form::text('phone',null, array('placeholder' => 'Số điện thoại','class' => 'form-control')) !!}
                                    <i class="fa fa-phone icon-input"></i>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-group">
                                    {!! Form::text('email',null, array('placeholder' => 'Email','class' => 'form-control')) !!}
                                    <i class="fa fa-phone icon-input"></i>
                                    <i class="fa fa-envelope-o icon-input"></i>
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
                            <a href="#">đăng ký</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 cont-right">
                    <div class="info">
                        <h3>công ty cổ phần bđs</h3>
                        <h4>trụ sở chính</h4>
                        <p>17 Đặng Thị Nhu, P.Nguyễn Thái Bình, Quận 1, Tp.Hồ Chí Minh</p>
                        <div class="content">
                            <p>
                                <i class="fa fa-phone"></i><strong>Holine</strong><br>
                                090 888 6066
                            </p>
                            <p>
                                <i class="fa fa-envelope"></i><strong>Email</strong><br>
                                info@rioland.vn
                            </p>
                            <p>
                                <i class="fa fa-home"></i><strong>Website</strong><br>
                                <a href="http://www.rioland.vn"><strong>www.rioland.vn</strong></a>
                            </p>
                        </div>
                        <h4>chi nhánh</h4>
                        <p>39 Vũ Tông Phan, P. An Phú, Quận 2, Tp.Hồ Chí Minh</p>
                        <p>16 Lương Định Của, P. An Phú, Quận 2, Tp.Hồ Chí Minh</p>
                    </div>
                </div>
                <div id="map" class="col-md-12">

                </div>
            </div>
        </div>
    </div>
</div>