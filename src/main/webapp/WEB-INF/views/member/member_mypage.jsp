<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113306299-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-113306299-1');
</script>
<%-- <%=request.getContextPath()%>/ --%>

<title>제주 에이스프링 펜션</title>

<!-- Meta -->
<meta charset="utf-8">
<link rel="canonical" href="index.html">
<!-- google alternate -->
<link rel="alternate" hreflang="ko" href="index.html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="제주 협재/금능 바닷가 근처에 위치한 예쁜 독채 복층 펜션 입니다.">
<meta name="naver-site-verification" content="99c9f3fab1016d5356f2d577724048324d9b06f5" />
<meta name="author" content="Aspring">

<meta property="og:type" content="website">
<meta property="og:title" content="제주 에이스프링 펜션">
<meta property="og:description" content="제주 협재/금능 바닷가 근처에 위치한 예쁜 독채 복층 펜션 입니다.">
<meta property="og:image" content="http://www.aspring.co.kr/resources/assets/img/aspring/foreground/aspring_foreground_main.jpg">
<meta property="og:url" content="http://www.aspring.co.kr/welcome">

<!-- Favicon -->


<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="../assets/css/headers/header-default.css">
<link rel="stylesheet" href="../assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="../assets/plugins/animate.css">
<link rel="stylesheet" href="../assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="../assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="../assets/plugins/flexslider/flexslider.css">
<link rel="stylesheet" href="../assets/plugins/bxslider/jquery.bxslider.css">
<link rel="stylesheet" href="../assets/plugins/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="../assets/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css" media="screen">
<link rel="stylesheet" href="../assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet" href="../assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet" href="../assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
<link rel="stylesheet" href="../assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
<!--[if lt IE 9]><link rel="stylesheet" href="/resources/assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen"><![endif]-->

<!-- CSS Pages Style -->
<link rel="stylesheet" href="../assets/css/pages/page_one.css">
<link rel="stylesheet" href="../assets/css/pages/pricing/pricing_v1.css">
<link rel="stylesheet" href="../assets/css/pages/pricing/pricing_v2.css">
<link rel="stylesheet" href="../assets/css/pages/pricing/pricing_v3.css">
<link rel="stylesheet" href="../assets/css/pages/pricing/pricing_v4.css">
<link rel="stylesheet" href="../assets/css/pages/pricing/pricing_v5.css">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Lato:300);

.myPage {
	width: 80%;
	padding: 60px 0 0;
	margin: auto;
}

.form2 {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 100%; 
	margin: 0 auto 140px;
	padding: 60px;
	padding-top: 20px;
	text-align: center;
	/* box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24); */
	/* border: 1px solid #ddd; */
	border-top: 2px solid #72c02c;
	border-bottom: 2px solid #687074;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
}

.form2 input {
	font-family: "Lato", sans-serif;
	/* font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif; */
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 72%;
	border: 1px solid #bbb;
	margin: 0 0 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 15px;
}

.form2 #phone_1 {
	font-family: "Lato", sans-serif;
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 23.8%;
	border: 1px solid #bbb;
	margin: 0 0 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 14px;
}

.form2 #phone_2 {
	font-family: "Lato", sans-serif;
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 72%;
	border: 1px solid #bbb;
	margin: 0 0 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 14px;
}

.form2 button {
	font-family: "Lato", sans-serif;
	text-transform: uppercase;
	outline: 0;
	opacity: 0.8;
	background: #72c02c;
	width: 20%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form2 button:hover, .form button:active, .form button:focus {
	opacity: 1;
}
.form2 #btn:hover, .form #btn:active, .form #btn:focus {
	opacity: 1;
}

.form2 .alternate {
	margin: 20px 0 0;
	font-size: 16px;
}

.form2 .alternate a {
	color: #687074;
	/* text-decoration: underline; */
}

.join_label{
	font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
	text-align: left;
	/* font-size: 15px; */
	width: 17%
}

.form2 h3{
	text-align: center;
}
#privateuse{
	font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
	color: #555;
}

#privateuse input{
	width: 30px;
	text-align:center;
	font-size: 15px;
}

#privateuse a{
	font-size: 15px;
	color: red;
	cursor: pointer;
}

#sample6_postcode{
	width: 56.2%
}
#sample6_postcode, #sample6_address{
	background: #EAEAEA70;
} 

.form2 #btn {
	font-family: "Lato", sans-serif;
	background: white;
	width: 15%;
}
hr{
	border-color: #ddd;
}
</style>



<link rel="stylesheet" href="../assets/css/pages/page_log_reg_v1.css">
<link rel="stylesheet" href="../assets/plugins/hover-effects/css/custom-hover-effects.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="../assets/css/pages/page_404_error.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="../assets/css/pages/page_search_inner.css">


<!-- Logo를 위해 -->
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet' type='text/css'>

<!-- CSS Customization -->
<link rel="stylesheet" href="../assets/css/custom.css">
<link rel="stylesheet" href="../assets/css/room.css">
<script type="text/javascript">
function memberUpdate() {
	updateForm.action = "${pageContext.request.contextPath}/member/update";
	updateForm.submit();
}

function memberBack(mId) {
	updateForm.action = "${pageContext.request.contextPath}/member/login?mId="+mId;
	updateForm.submit();
}

function memberDelete(mId) {
	if(confirm("정말로 탈퇴하시겠습니까?")) {
		location.href='${pageContext.request.contextPath }/member/delete?mId='+mId;
	}
}
</script>
</head>
<body>
<div class="wrapper">
	
	<!--=== End Header ===-->
	<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">MY PAGE</h1>
        <ul class="pull-right breadcrumb">
            <li class="active">내 정보 변경</li>
            <li><a href="${pageContext.request.contextPath}/member/mybook">내 예약확인</a></li>
            <li><a href="${pageContext.request.contextPath}/member/mileage">내 마일리지</a></li>
        </ul>
    </div>
	</div>
	
<!-- JoinForm start -->
<div class="container content">
		<div class="myPage">
			<div class="form2">
				<h3>내 정보</h3><br><br><br>
				<form class="login-form" name="updateForm" method="post">
					<input type="hidden" name="mId" value="${member.mId }">	
					<label class="join_label">아이디&nbsp;</label> 
					<input type="text" readonly="readonly" value="${member.mId }"/><br>
					
					<label class="join_label">비밀번호&nbsp;</label>
					<input type="password" name="mPw" placeholder="PASSWORD" /><br>
					
					<%-- <label class="join_label">비밀번호 확인&nbsp;</label> 
					<input type="password" placeholder="PASSWORD CHECK" /><br>
					--%>
					<hr>	
					
					<label class="join_label">이름&nbsp;</label>
					<input type="text" name="mName" value="${member.mName }"/><br>
					
					<label class="join_label">전화번호&nbsp;</label>
					<input type="text" id="phone_2" name="mPhone" value="${member.mPhone }"/>
					<%-- -<select id="phone_1">
						<option>010</option>
						<option>011</option>
					</select>
					-%>
					<%-- <input type="text" id="phone_3"  value=""/>--%><br>
					
					<label class="join_label">이메일&nbsp;</label> 
					<input type="email" name="mEmail" value="${member.mEmail }" /><br>
					<input type="hidden" name="mMileage" value="${member.mMileage }">	
					<input type="hidden" name="mStatus" value="${member.mStatus }">	
								
					<!-- <br><br><br> --><hr>
					<div style="text-align: center">
					<button type="button" onclick="memberUpdate();">변경</button>&nbsp;&nbsp;
					<button type="button" onclick="memberBack('${member.mId}');">이전</button>&nbsp;&nbsp;
					<button type="button" onclick="memberDelete('${member.mId}');">탈퇴</button>
					<!-- <p class="alternate">
						<a href="#">회원가입</a>&nbsp;/&nbsp;<a href="#">ID/PW 찾기</a>
					</p> -->
					</div>
				</form>
			</div>
		</div>
</div>
<!-- JoinForm end -->




		<!-- footer -->
		
	</div><!--/wrapper-->
	
	


<!-- ============================================================================================================= -->

<div class="modal fade bs-book-consent1-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 id="bookOrderModalLabel3" class="modal-title">개인정보 활용 동의서</h4>
            </div>
            <div class="modal-body">
                <div class="content-boxes-v3 margin-bottom-10 md-margin-bottom-20">
                    <i class="icon-custom icon-sm rounded-x icon-color-orange icon-line icon-note"></i>
                    <div class="content-boxes-in-v3">
                        <h5>개인정보의 이용목적</h5>
                        <p>객실 예약을 위한 본인 식별 및 예약사항에 대한 서비스 제공.</p>
                    </div>
                </div>
                <div class="content-boxes-v3 margin-bottom-10 md-margin-bottom-20">
                    <i class="icon-custom icon-sm rounded-x icon-color-orange icon-line icon-note"></i>
                    <div class="content-boxes-in-v3">
                        <h5>활용되는 개인정보의 항목</h5>
                        <p>성함, 휴대전화번호, IP_Address, Cookie</p>
                    </div>
                </div>
                <div class="content-boxes-v3 margin-bottom-10 md-margin-bottom-20">
                    <i class="icon-custom icon-sm rounded-x icon-color-orange icon-line icon-note"></i>
                    <div class="content-boxes-in-v3">
                        <h5>개인정보의 이용기간</h5>
                        <p>체크아웃 후 2주 이내에 예약내역 일체 및 개인정보 자동 삭제.</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn-u btn-u-default" type="button">닫기</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade bs-book-consent2-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 id="bookOrderModalLabel3" class="modal-title">개인정보 수집 동의서</h4>
            </div>
            <div class="modal-body">
                <div class="content-boxes-v3 margin-bottom-10 md-margin-bottom-20">
                    <i class="icon-custom icon-sm rounded-x icon-color-orange icon-line icon-note"></i>
                    <div class="content-boxes-in-v3">
                        <h5>개인정보의 수집목적</h5>
                        <p>방문하셨던 손님을 기억하여 다음번 예약 방문의 경우 지인할인 등 보다 나은 서비스 제공을 위함.</p>
                    </div>
                </div>
                <div class="content-boxes-v3 margin-bottom-10 md-margin-bottom-20">
                    <i class="icon-custom icon-sm rounded-x icon-color-orange icon-line icon-note"></i>
                    <div class="content-boxes-in-v3">
                        <h5>수집하는 개인정보의 항목</h5>
                        <p>성함, 휴대전화번호</p>
                    </div>
                </div>
                <div class="content-boxes-v3 margin-bottom-10 md-margin-bottom-20">
                    <i class="icon-custom icon-sm rounded-x icon-color-orange icon-line icon-note"></i>
                    <div class="content-boxes-in-v3">
                        <h5>개인정보의 보유기간</h5>
                        <p>손님 요청이 있을 시 요청날로부터 3일 이내 삭제되며 다시 복구는 불가능 합니다.</p>
                        <p></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn-u btn-u-default" type="button">닫기</button>
            </div>
        </div>
    </div>
</div>

<!-- ============================================================================================================= -->







<!-- JS Global Compulsory -->
<script type="text/javascript" src="../assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="../assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="../assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="../assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="../assets/plugins/jquery.easing.min.js"></script>
<script type="text/javascript" src="../assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="../assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="../assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="../assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5xiA9jqrvycYfVi9SS3ufAM71OMTtCxw"></script>
<script type="text/javascript" src="../assets/plugins/gmap/gmap.js"></script>
<script type="text/javascript" src="../assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script src="../assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script src="../assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script src="../assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="../assets/js/custom.js"></script>
<script type="text/javascript" src="../assets/js/formsupport.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="../assets/js/app.js"></script>
<script type="text/javascript" src="../assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript" src="../assets/js/plugins/revolution-slider.js"></script>
<script type="text/javascript" src="../assets/js/pages/page_contacts.js"></script>
<script type="text/javascript" src="../assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="../assets/js/forms/reg.js"></script>
<script type="text/javascript" src="../assets/js/forms/login.js"></script>
<script type="text/javascript" src="../assets/js/forms/contact.js"></script>
<script type="text/javascript" src="../assets/js/forms/comment.js"></script>
<script type="text/javascript" src="../assets/js/plugins/masking.js"></script>
<script type="text/javascript" src="../assets/js/plugins/datepicker.js"></script>
<script type="text/javascript" src="../assets/js/plugins/validation.js"></script>
<script type="text/javascript" src="../assets/js/plugins/cube-portfolio/cube-portfolio-2.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        FancyBox.initFancybox();
        RevolutionSlider.initRSfullWidth();
        OwlCarousel.initOwlCarousel();
        //Masking.initMasking();
        Datepicker.initDatepicker();
//        Validation.initValidation();
//        RegForm.initRegForm();
//        LoginForm.initLoginForm();
//        ContactForm.initContactForm();
//        CommentForm.initCommentForm();
        Aspring.initSite();
        FormSupport.init();

    });
</script>


</body>
</html>