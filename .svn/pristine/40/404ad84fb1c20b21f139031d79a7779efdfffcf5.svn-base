<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
<style type="text/css">
#abc {
	background: #72c02c;
	float: right;
	height: 39px;
	margin: 0px 0 0 10px;
	padding: 0 25px;
	outline: none;
	border: 0;
	font: 300 15px/39px 'Open Sans', Helvetica, Arial, sans-serif;
	text-decoration: none;
	color: #fff;
	cursor: pointer;
}

#abc :hover {
	background: #72c02c;
}

.sky-form .input input {
	height: 39px;
	padding: 6px 0px;
}

/* ------------------------------- */

@import url(https://fonts.googleapis.com/css?family=Lato:300);

.login {
	width: 500px;
	padding: 100px 0 0;
	margin: auto;
}

.form2 {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 500px;
	margin: 0 auto 140px;
	padding: 45px;
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
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 100%;
	border: 1px solid #bbb;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}
.find_label{
	font: 17px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
	text-align: left;
	width: 17%
}

.form2 button {
	font-family: "Lato", sans-serif;
	text-transform: uppercase;
	outline: 0;
	opacity: 0.8;
	background: #72c02c;
	width: 100%;
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

.form2 .alternate {
	margin: 20px 0 0;
	font-size: 16px;
}

.form2 .alternate a {
	color: #687074;
	/* text-decoration: underline; */
}

.form2 .registration-form {
	display: none;
}
/* body {
    background: #3d3d3d; 
    font-family: "Lato", sans-serif;
  }  */
</style>
</head>
<body>
<div class="wrapper">
		
		
<!--=== End Header ===-->
	<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">ID/PW찾기</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
            <li><a href="${pageContext.request.contextPath}/member/join">회원가입</a></li>
            <li class="active">ID/PW찾기</li>
        </ul>
    </div>
	</div>

<!-- LoginForm start -->
		<div class="login">
			<div class="form2">
				<h3>아이디 찾기</h3><br>
					<form class="login-form" name="findForm" method="post" >
					<!-- <label class="find_label">이름</label> -->
					<input type="text" name="mName" id="mName"  placeholder="NAME" /><br>
					<!-- <label class="find_label">이메일</label> -->
					<input type="text" name="mEmail" id="mEmail"  placeholder="EMAIL" /><br>
					<button type="button" onclick="memberFind();">찾기</button>
					&nbsp;&nbsp;&nbsp;
					<br>
					
					<c:if test="${check == 1 }">
						<script>
							opener.document.findForm.mName.value="";
							opener.document.findForm.mEmail.value="";
						</script>
						<p style="color: red;">일치하는 회원정보가 존재하지 않습니다.</p>
					</c:if>
					<c:if test="${check == 0 }"> 
						<p style="font-size: 20px;">${member.mName }님의 아이디는<br> 
						<strong style="color: red;">'${mId }'</strong> 입니다.</p>
					</c:if>
					
				
					</form> 
						&nbsp;&nbsp;
						<hr>
						&nbsp;&nbsp;
				<h3>비밀번호 찾기</h3><br>
					<form class="login-form" name="findPwForm" method="post" >
				<!-- 	<input type="hidden" name="mId" id="mId" value="${mId }" placeholder="ID" /><br> -->
					<input type="text" name="mId" id="mId"  placeholder="ID" /><br>
					<input type="text" name="mEmail" id="mEmail"  placeholder="EMAIL" /><br>
					<button type="button" onclick="pwFind();">찾기</button>
					&nbsp;&nbsp;&nbsp;
					<br>
					
					</form>
			</div>
		</div>
<!-- LoginForm end -->

		
		
	
	</div><!--/wrapper-->
	<script type="text/javascript">
	function memberFind() {
		if(findForm.mName.value == "") {
			alert("이름을 입력하세요");
			findForm.mName.focus();
			return;
		}
		
		if(findForm.mEmail.value == "") {
			alert("이메일을 입력하세요");
			findForm.mEmail.focus();
			return;
		}
		
		findForm.action="${pageContext.request.contextPath}/member/find";
		findForm.submit();
	}
	
	function pwFind() {
		if(findPwForm.mId.value == "") {
			alert("아이디를 입력하세요");
			findPwForm.mId.focus();
			return;
		}
		
		if(findPwForm.mEmail.value == "") {
			alert("이메일을 입력하세요");
			findPwForm.mEmail.focus();
			return;
		}
		
		findPwForm.action="${pageContext.request.contextPath}/member/findPw";
		findPwForm.submit();
	}
	</script>
</body>
</html>