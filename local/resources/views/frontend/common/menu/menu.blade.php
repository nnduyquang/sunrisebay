<div id="header-top">
    <div class="container"></div>
</div>
<div id="menu" class="container-fluid p-0 d-none d-md-block">
    <div class="container">
        <div class="row">
            <div id="menu-left" class="col-md-5">
                <ul class="main-menu-item">
                    <li><a href="{{URL::to('/')}}">Trang Chủ</a></li>
                    <li><a href="#">Chủ Đầu Tư</a></li>
                    <li><a href="#">Vị Trí</a></li>
                    <li class="has-item-down"><a href="#">Mẫu Nhà</a>
                        <ul class="sub-menu-item">
                            <li><a href="">Nhà Phố</a></li>
                            <li><a href="">Shophouse</a></li>
                            <li><a href="">Biệt Thự Đơn Lập</a></li>
                            <li><a href="">Biệt Thự Song Lập</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div id="menu-logo" class="col-md-2">
                <div class="wrap-logo">
                    {{ HTML::image('images/logo/Logo-The-Sunrise-Bay-01.png', 'alt', array( 'width' => 70, 'height' => 70 )) }}
                </div>
            </div>
            <div id="menu-right" class="col-md-5">
                <ul class="main-menu-item">
                    <li><a href="#">Mặt Bằng</a></li>
                    <li><a href="#">Chính Sách Bán Hàng</a></li>
                    <li><a href="{{URL::to('tin-tuc')}}">Tin Tức</a></li>
                    <li><a href="{{URL::to('lien-he')}}">Liên Hệ</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
