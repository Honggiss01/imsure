
(function ($) {
    "use strict";

    /*==================================================================
    [ PasswordCheck ]*/
    $('#passwordCheck-form').on('submit',function(){
        var check = true;
        var newPassword = $('#newPassword').val(); //새 비밀번호 입력란의 값
        var newPasswordCheck = $('#newPasswordCheck').val(); //비밀번호 확인 입력란의 값
        if($("#newPasswordCheck").css("display") != "none"){
        	if(!(newPassword.equals(newPasswordCheck))){
                $("#passwordCheckAlert").show(); //'비밀번호를 다시 확인해주십시오' 라는 메세지 띄우기
        		check = false;
            }
        }
        return check;
    });
})(jQuery);