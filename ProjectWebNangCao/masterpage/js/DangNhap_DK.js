$(document).ready(function () {
    var check = true;
    $('#account').click(function () {
        
        if (check == true) {
            $('#main-user').css({'visibility':'visible','opacity':'1'});
            $('#angle-down').addClass('fa-rotate-180');
            check = false;
            return false;
        }
        else {
            $('#main-user').css({ 'visibility': 'hidden', 'opacity': '0' });
            $('#angle-down').removeClass('fa-rotate-180');
            check = true;
            return false;
        }
        return false;
    })
    var check_login = false;
    $('#login-click').click(function() {
        if (check_login == false) {
            $('#login-master').css('display', 'block');
            $('#div-blur').css('display', 'block');
            check_login = true;
            return false;
        }
        else {
            $('#login-master').css('display', 'none');
            $('#div-blur').css('display', 'none');
            check_login = false;
            return false;
        }
        return false;
    })


    $('#div-blur').click(function () {
        $('#div-blur').css('display', 'none');
        $('#login-master').css('display', 'none');
        //$('#container-gopy').css('display', 'none');
        $('#container-gopy').css({ 'opacity': '0', 'visibility': 'hidden' });
    })

    $('#notify').click(function () {
        if (check == true) {
            $('#container-gopy').css({ 'opacity': '1', 'visibility': 'visible' });
            //$('#container-gopy').css('display', 'block');
            $('#div-blur').css('display', 'block');
            check = false;
            return false;
        }
        else {
            $('#container-gopy').css({ 'opacity': '0', 'visibility': 'hidden' });
            //$('#container-gopy').css('display', 'none');
            $('#div-blur').css('display', 'none');
            check = true;
            return false;
        }
        return false;
    })

})