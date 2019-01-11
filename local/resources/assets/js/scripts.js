var plugins = {
    menuSideBar: $('.sidebar'),
    slider: $('#slider'),
};
$(document).ready(function () {
    function scrollMenu(){
        $('#menu_vitri').on('click', function(){
            $('html, body').animate({scrollTop: $("#h_10").offset().top}, 'slow');
        });
        $('#menu_maunha').on('click', function(){
            $('html, body').animate({scrollTop: $("#h_7").offset().top}, 'slow');
        });
        $('#menu_tienich').on('click', function(){
            $('html, body').animate({scrollTop: $("#h_11").offset().top}, 'slow');
        });
    }
    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menuSideBar.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {
                $('#blurrMe').toggleClass('blurred')
                plugins.menuSideBar.toggleClass('closed');
            }
        })
    }
    sidebar();
    scrollMenu();
    new WOW().init();
    function runSlider() {
        plugins.slider.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }
    if (plugins.slider.length) {
        runSlider();
    }
});