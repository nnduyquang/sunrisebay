var plugins = {
    menuSideBar: $('.sidebar'),
    slider: $('#slider'),
    sendMailFooter:$('#footer .footer-right .content .one-button button'),
    sendMailContact:$('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button'),
    sendMailSidebar:$('#sb_register .r-content .btn-send button')
};
$(document).ready(function () {
    function scrollMenu(){
        $('.menu_vitri').on('click', function(){
            $('html, body').animate({scrollTop: $("#h_10").offset().top}, 'slow');
        });
        $('.menu_maunha').on('click', function(){
            $('html, body').animate({scrollTop: $("#h_7").offset().top}, 'slow');
        });
        $('.menu_tienich').on('click', function(){
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
    function fixMenuOnScroll() {
        var menuScroll = $('#menu');
        var menuLogo=$('#menu #menu-logo .wrap-logo');
        $(window).on("scroll", function (e) {
            if ($(this).scrollTop() > 150) {
                menuScroll.addClass('fixed-top');
                menuLogo.addClass('fixed-logo');
            } else {
                menuScroll.removeClass('fixed-top');
                menuLogo.removeClass('fixed-logo');
            }
        });
    }
    sidebar();
    scrollMenu();
    fixMenuOnScroll();
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
    function getBaseURL() {
        var url = location.href;  // entire url including querystring - also: window.location.href;
        var baseURL = url.substring(0, url.indexOf('/', 14));
        if (baseURL.indexOf('http://localhost') != -1) {
            // Base Url for localhost
            var url = location.href;  // window.location.href;
            var pathname = location.pathname;  // window.location.pathname;
            var index1 = url.indexOf(pathname);
            var index2 = url.indexOf("/", index1 + 1);
            var baseLocalUrl = url.substr(0, index2);
            return baseLocalUrl + "/";
        }
        else {
            // Root Url for domain name
            return baseURL + "/";
        }
    }
    function runSendMailFooter(){
        $('#footer .footer-right .content .one-button button .loadingSending').css('display', 'inline-block');
        $('#footer .footer-right .content .info-customer .one-input .input-text').removeClass('is-invalid');
        var data = new FormData($(this).get(0));
        data.append('name', $("#footer .footer-right .content .info-customer .one-input input[name='name']").val());
        data.append('phone', $("#footer .footer-right .content .info-customer .one-input input[name='phone']").val());
        data.append('email', $("#footer .footer-right .content .info-customer .one-input input[name='email']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail/sendFooter",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('#footer .footer-right .content .one-button button .loadingSending').css('display', 'none');
                    $('#footer .footer-right .content .one-button button .successSending').css('display', 'inline-block');
                    $('#footer .footer-right .content .one-button button .successSending').fadeIn(500);
                    $('#footer .footer-right .content .one-button .button-group span').css('display', 'inline-block');
                    $('#footer .footer-right .content .one-button .button-group span').fadeIn(500);
                    setTimeout("$('#footer .footer-right .content .one-button button .successSending').fadeOut(1500);", 3000);
                    setTimeout("$('#footer .footer-right .content .one-button .button-group span').fadeOut(1500);", 3000);
                    $("#footer .footer-right .content .info-customer .one-input input[name='name']").val("");
                    $("#footer .footer-right .content .info-customer .one-input input[name='email']").val("");
                    $("#footer .footer-right .content .info-customer .one-input input[name='phone']").val("");
                }
                else {
                    $('#footer .footer-right .content .one-button button .loadingSending').css('display', 'none');
                    var errors = data.validator;
                    if (errors.hasOwnProperty('email')) {
                        $('#footer .footer-right .content .info-customer .one-input .ip-email .input-text').addClass('is-invalid');
                        $('#footer .footer-right .content .info-customer .one-input .ip-email .invalid-feedback').html(errors['email']);
                    }
                    if (errors.hasOwnProperty('name')) {
                        $('#footer .footer-right .content .info-customer .one-input .ip-name .input-text').addClass('is-invalid');
                        $('#footer .footer-right .content .info-customer .one-input .ip-name .invalid-feedback').html(errors['name']);
                    }
                    if (errors.hasOwnProperty('phone')) {
                        $('#footer .footer-right .content .info-customer .one-input .ip-phone .input-text').addClass('is-invalid');
                        $('#footer .footer-right .content .info-customer .one-input .ip-phone .invalid-feedback').html(errors['phone']);
                    }
                }
            }
        });
    }

    function runSendMailContact(){
        $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button .loadingSending').css('display', 'inline-block');
        $('#cont_1 .contact-form .cont-left .content .input-group input.input-text').removeClass('is-invalid');
        var data = new FormData($(this).get(0));
        data.append('name', $("#cont_1 .contact-form .cont-left .content .input-group input[name='name']").val());
        data.append('phone', $("#cont_1 .contact-form .cont-left .content .input-group input[name='phone']").val());
        data.append('email', $("#cont_1 .contact-form .cont-left .content .input-group input[name='email']").val());
        data.append('description', $("#cont_1 .contact-form .cont-left .content .input-group textarea[name='description']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail/sendContact",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button .loadingSending').css('display', 'none');
                    $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button .successSending').css('display', 'inline-block');
                    $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button .successSending').fadeIn(500);
                    $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group span').css('display', 'inline-block');
                    $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group span').fadeIn(500);
                    setTimeout("$('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button .successSending').fadeOut(1500);", 3000);
                    setTimeout("$('#cont_1 .contact-form .cont-left .content .btn-submit .button-group span').fadeOut(1500);", 3000);
                    $("#cont_1 .contact-form .cont-left .content .input-group input[name='name']").val("");
                    $("#cont_1 .contact-form .cont-left .content .input-group input[name='email']").val("");
                    $("#cont_1 .contact-form .cont-left .content .input-group input[name='phone']").val("");
                    $("#cont_1 .contact-form .cont-left .content .input-group textarea[name='description']").val("");
                }
                else {
                    $('#cont_1 .contact-form .cont-left .content .btn-submit .button-group button .loadingSending').css('display', 'none');
                    var errors = data.validator;
                    if (errors.hasOwnProperty('email')) {
                        $('#cont_1 .contact-form .cont-left .content .ip-email .input-text').addClass('is-invalid');
                        $('#cont_1 .contact-form .cont-left .content .ip-email .invalid-feedback').html(errors['email']);
                    }
                    if (errors.hasOwnProperty('name')) {
                        $('#cont_1 .contact-form .cont-left .content .ip-name .input-text').addClass('is-invalid');
                        $('#cont_1 .contact-form .cont-left .content .ip-name .invalid-feedback').html(errors['name']);
                    }
                    if (errors.hasOwnProperty('phone')) {
                        $('#cont_1 .contact-form .cont-left .content .ip-phone .input-text').addClass('is-invalid');
                        $('#cont_1 .contact-form .cont-left .content .ip-phone .invalid-feedback').html(errors['phone']);
                    }
                }
            }
        });
    }
    function runSendMailSidebar(){
        $('#sb_register .r-content .btn-send button .loadingSending').css('display', 'inline-block');
        $('#sb_register .r-content input.input-text').removeClass('is-invalid');
        var data = new FormData($(this).get(0));
        data.append('phone', $("#sb_register .r-content input[name='phone']").val());
        data.append('email', $("#sb_register .r-content input[name='email']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail/sendSideBar",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('#sb_register .r-content .btn-send button .loadingSending').css('display', 'none');
                    $('#sb_register .r-content .btn-send button .successSending').css('display', 'inline-block');
                    $('#sb_register .r-content .btn-send button .successSending').fadeIn(500);
                    $('#sb_register .r-content .btn-send .button-group span').css('display', 'inline-block');
                    $('#sb_register .r-content .btn-send .button-group span').fadeIn(500);
                    setTimeout("$('#sb_register .r-content .btn-send button .successSending').fadeOut(1500);", 3000);
                    setTimeout("$('#sb_register .r-content .btn-send .button-group span').fadeOut(1500);", 3000);
                    $("#sb_register .r-content input[name='email']").val("");
                    $("#sb_register .r-content input[name='phone']").val("");
                }
                else {
                    $('#sb_register .r-content .btn-send button .loadingSending').css('display', 'none');
                    var errors = data.validator;
                    if (errors.hasOwnProperty('email')) {
                        $('#sb_register .r-content .ip-email input.input-text').addClass('is-invalid');
                        $('#sb_register .r-content .ip-email .invalid-feedback').html(errors['email']);
                    }
                    if (errors.hasOwnProperty('phone')) {
                        $('#sb_register .r-content .ip-phone input.input-text').addClass('is-invalid');
                        $('#sb_register .r-content .ip-phone .invalid-feedback').html(errors['phone']);
                    }
                }
            }
        });
    }
    if (plugins.sendMailFooter.length) {
        plugins.sendMailFooter.click(function () {
            runSendMailFooter();
        });
    }
    if (plugins.sendMailContact.length) {
        plugins.sendMailContact.click(function () {
            runSendMailContact();
        });
    }
    if (plugins.sendMailSidebar.length) {
        plugins.sendMailSidebar.click(function () {
            runSendMailSidebar();
        });
    }
    if (plugins.slider.length) {
        runSlider();
    }
});