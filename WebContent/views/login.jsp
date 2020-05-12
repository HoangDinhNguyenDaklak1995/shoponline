<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta name="google-signin-client_id"
	content="15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com">
<head>
<title>Đăng nhập tài khoản</title>
</head>
<div class="login-page">
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				ĐĂNG NHẬP! <br> chưa có tài khoản? <a href="register.htm">
					Đăng kí ngay »</a>
			</h4>
		</div>
		<div class="login-body wow fadeInUp animated" data-wow-delay=".7s">
			<form action="login.htm" method="post">
				<input type="text" name="email" class="name"
					placeholder="Nhập Tài khoản email" />
				<p class="" style="color: blue;">${message }</p>
				<input type="password" name="pwd" class="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}"
					title="Mật Khẩu Từ 6-16 Ký Tự Bao Gồm Số, Chữ In Hoa, Chữ in Thường Và Ký Tự Đặc Biệt"
					placeholder="Nhập Mật Khẩu" />
				<p class="" style="color: blue;">${messagepwd }</p>
				<c:choose>
					<c:when test="${countlogin > 6 }">
						<div class="g-recaptcha"
							data-sitekey="6LflcR8UAAAAACnfwMfreBYo1FfpLoJSP2nOlCkk"
							data-callback="recaptchaCallback"></div>
						<input id="button1" type="submit" value="Login" disabled>
					</c:when>
					<c:otherwise>
						<input type="submit" name="Sign In" value="Đăng nhập">
					</c:otherwise>
				</c:choose>

				<div class="forgot-grid">
					<label class="checkbox"><input type="checkbox"
						name="checkbox"><i></i>Remember me</label>
					<div class="forgot">
						<a href="foruser.htm">Quên Mật Khẩu?</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</form>
		</div>
	</div>
	<div class="login-page-bottom">
		<h5>- Hoặc -</h5>
		<div class="social-btn">
			<a  id="btn-google2"><i class="fa fa-google-plus g-signin2">Đăng nhập qua Google</i></a>
		</div>
		<div class="social-btn sb-two">
			<a id="btn-facebook2"><i class="fa fa-facebook">Đăng nhập với Facebook</i></a>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script>
//FB login
window.fbAsyncInit = function () {
    //SDK loaded, initialize it
    FB.init({
        appId: '117453615599820',
        xfbml: true,
        version: 'v2.11'
    });

    //check user session and refresh it
    FB.getLoginStatus(function (response) {
        if (response.status === 'connected') {
            //user is authorized

        } else if (response.status === 'not_authorized') {
            // the user is logged in to Facebook,
            // but has not authenticated your app

        } else {
            // the user isn't logged in to Facebook.

        }
    });
};

//load the JavaScript SDK
(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {
        return;
    }
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.com/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

document.getElementById('btn-facebook2').addEventListener('click', function () {
    //do the login
FB.login(function (response) {
    if (response.authResponse) {
        //user just authorized your app
        var accessToken = response.authResponse.accessToken;
        
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "${pageContext.request.contextPath}/signin-facebook.htm",
            data: accessToken,
            //dataType: 'json',
            // timeout: 600000,
            success: function (result) {
                
                    location.reload();
             },
            error: function (e) {
             //   alert("Lỗi ! Đăng Nhập FaceBook");
            }
        });

        }
    }, {scope: 'email,public_profile', return_scopes: true});
}, false);


//logout FB
function logoutFacebook() {
    FB.logout(function (response) {
    });
};
</script>


<!-- <script src="https://apis.google.com/js/platform.js" async defer></script> -->
<meta name="google-signin-client_id" content="15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com">
<script src="https://apis.google.com/js/api:client.js"></script>
<script type="text/javascript">
//Mở Đăng Nhập Bằng Google
var googleUser = {};
var startApp = function () {
gapi.load('auth2', function () {
    // Retrieve the singleton for the GoogleAuth library and set up the client.
    auth2 = gapi.auth2.init({
        client_id: '15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com',
        cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        //scope: 'additional_scope'
    });
    attachSignin(document.getElementById('btn-google2'));
});
};

function attachSignin(element) {
//console.log(element.id);
auth2.attachClickHandler(element, {},
    function (googleUser) {
        var id_token = googleUser.getAuthResponse().id_token;
        console.log(id_token);
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "${pageContext.request.contextPath}/signin-google.htm",
            data: id_token,
            //dataType: 'json',
            // timeout: 600000,
            success: function (result) {
              
                location.reload();
            },
            error: function (e) {
                //alert("Lỗi ! Đăng Nhập Google");
            }
        });
    }, function (error) {

        //alert(JSON.stringify(error, undefined, 2)+"ĐÓng Của Sổ");
    });
}

startApp();
//Đóng Đăng Nhập Bằng Google

//Mở Đăng Xuất Bằng Google
function signOutGG() {
firstLogin = 0;
var auth2 = gapi.auth2.getAuthInstance();
auth2.signOut().then(function () {

});
}

//ĐÓng Đăng Xuất Bằng Google

//Mở Đăng Xuất
$('#btn-logout').click(function () {
clearTimeout(timeout);
timeout = setTimeout(function () {
    var token = $("meta[name='_csrf']").attr("content");
    

    $.ajax({
        type: "POST",
        url: contextPath+"/logout",
        success: function (result) {
            $("#LoadingImage").hide();
            if (result == "success") {
                signOut();
                logoutFacebook();
                location.reload();
            }
        },
        error: function(xhr, status, error) {
            $("#LoadingImage").hide();
            /*var err = eval("(" + xhr.responseText + ")");
            alert("Lỗi Đăng Xuất");*/
            location.reload();
        }
    });
}, 10);
});	//FB login
window.fbAsyncInit = function () {
    //SDK loaded, initialize it
    FB.init({
        appId: '117453615599820',
        xfbml: true,
        version: 'v2.11'
    });

    //check user session and refresh it
    FB.getLoginStatus(function (response) {
        if (response.status === 'connected') {
            //user is authorized

        } else if (response.status === 'not_authorized') {
            // the user is logged in to Facebook,
            // but has not authenticated your app

        } else {
            // the user isn't logged in to Facebook.

        }
    });
};

//load the JavaScript SDK
(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {
        return;
    }
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.com/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

document.getElementById('btn-facebook2').addEventListener('click', function () {
    //do the login
FB.login(function (response) {
    if (response.authResponse) {
        //user just authorized your app
        var accessToken = response.authResponse.accessToken;
        
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "${pageContext.request.contextPath}/signin-facebook.htm",
            data: accessToken,
            //dataType: 'json',
            // timeout: 600000,
            success: function (result) {
                
                    location.reload();
             },
            error: function (e) {
             //   alert("Lỗi ! Đăng Nhập FaceBook");
            }
        });

        }
    }, {scope: 'email,public_profile', return_scopes: true});
}, false);


//logout FB
function logoutFacebook() {
    FB.logout(function (response) {
    });
};
</script>

<!-- <script src="https://apis.google.com/js/platform.js" async defer></script> -->
<meta name="google-signin-client_id" content="15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com">
<script src="https://apis.google.com/js/api:client.js"></script>
<script type="text/javascript">
//Mở Đăng Nhập Bằng Google
var googleUser = {};
var startApp = function () {
gapi.load('auth2', function () {
    // Retrieve the singleton for the GoogleAuth library and set up the client.
    auth2 = gapi.auth2.init({
        client_id: '15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com',
        cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        //scope: 'additional_scope'
    });
    attachSignin(document.getElementById('btn-google2'));
});
};

function attachSignin(element) {
//console.log(element.id);
auth2.attachClickHandler(element, {},
    function (googleUser) {
        var id_token = googleUser.getAuthResponse().id_token;
        console.log(id_token);
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "${pageContext.request.contextPath}/signin-google.htm",
            data: id_token,
            //dataType: 'json',
            // timeout: 600000,
            success: function (result) {
              
                location.reload();
            },
            error: function (e) {
                //alert("Lỗi ! Đăng Nhập Google");
            }
        });
    }, function (error) {

        //alert(JSON.stringify(error, undefined, 2)+"ĐÓng Của Sổ");
    });
}

startApp();
//Đóng Đăng Nhập Bằng Google

//Mở Đăng Xuất Bằng Google
function signOutGG() {
firstLogin = 0;
var auth2 = gapi.auth2.getAuthInstance();
auth2.signOut().then(function () {

});
}

//ĐÓng Đăng Xuất Bằng Google

//Mở Đăng Xuất
$('#btn-logout').click(function () {
clearTimeout(timeout);
timeout = setTimeout(function () {
    var token = $("meta[name='_csrf']").attr("content");
    

    $.ajax({
        type: "POST",
        url: contextPath+"/logout",
        success: function (result) {
            $("#LoadingImage").hide();
            if (result == "success") {
                signOut();
                logoutFacebook();
                location.reload();
            }
        },
        error: function(xhr, status, error) {
            $("#LoadingImage").hide();
            /*var err = eval("(" + xhr.responseText + ")");
            alert("Lỗi Đăng Xuất");*/
            location.reload();
        }
    });
}, 10);
});
	</script>