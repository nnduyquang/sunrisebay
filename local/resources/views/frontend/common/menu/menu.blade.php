<div id="header-top">
    <div class="container"></div>
</div>
<div id="menu" class="container-fluid p-0 d-none d-md-block">
    <div class="container">
        <div class="row">
            <div id="menu-left" class="col-md-5">
                <ul class="main-menu-item">
                    <li><a href="{{URL::to('/')}}">Trang Chủ</a></li>
                    <li><a href="{{URL::to('trang/chu-dau-tu')}}">Chủ Đầu Tư</a></li>
                    <li><a href="#" class="menu_vitri">Vị Trí</a></li>
                    <li><a href="#" class="menu_maunha">Mẫu Nhà</a>
                    </li>
                </ul>
            </div>
            <div id="menu-logo" class="col-md-2">
                <div class="wrap-logo">
                    <a href="{{URL::to('/')}}">{{ HTML::image('images/logo/Logo-The-Sunrise-Bay-01.png', 'alt', array( 'width' => 70, 'height' => 70 )) }}</a>
                </div>
            </div>
            <div id="menu-right" class="col-md-5">
                <ul class="main-menu-item">
                    <li><a href="#" class="menu_tienich">Tiện Ích</a></li>
                    <li><a href="{{URL::to('trang/chinh-sach-ban-hang')}}">Chính Sách Bán Hàng</a></li>
                    <li><a href="{{URL::to('tin-tuc')}}">Tin Tức</a></li>
                    <li><a href="{{URL::to('lien-he')}}">Liên Hệ</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
