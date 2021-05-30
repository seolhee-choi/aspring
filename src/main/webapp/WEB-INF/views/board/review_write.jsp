<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>제주 에이스프링 펜션</title>
<style type="text/css">
.wrap {
	width: 1200px;
	margin: 0 auto;
	position: relative
}

#board_write .board_write_title {
	font-size: 20px;
	color: #333;
	margin-top: 80px;
	text-align: left;
	margin-bottom: 38px
}

#board_write .board_write_title .board_write_title_bar {
	width: 3px;
	background: #72c02c;
	height: 20px;
	display: inline-block;
	vertical-align: middle;
	margin-right: 13px;
	margin-top: -3px
}

#board_write .board_write_table {
	margin-top: 40px;
	color: #333
}

#board_write .board_write_table .board_write_table_title {
	background: #f9f9f9;
	border: 1px solid #e5e5e5;
	border-bottom: 0;
	font-weight: bold;
	padding: 0;
	box-sizing: border-box
}

#board_write .board_write_table table td {
	border-top: 1px solid #e5e5e5;
	border-right: 1px solid #e5e5e5;
	font-size: 13px;
	padding-left: 20px;
	box-sizing: border-box;
	font-family: 'Nanum Gothic';
	border-collapse: collapse
}

#board_write select {
	border: 1px solid #e5e5e5;
	padding: 10px 0 10px 25px;
	box-sizing: border-box;
	padding-left: 25px;
	color: #333;
	vertical-align: middle
}

#board_write input {
	border: 1px solid #e5e5e5;
	height: 40px;
	line-height: 40px;
	box-sizing: border-box;
	background: #f9f9f9;
	color: #333;
	vertical-align: middle;
	padding-left: 25px
}

#board_write input:focus {
	border: 1px solid #ff4898;
	outline: none
}

#board_write select:focus {
	border: 1px solid #ff4898;
	outline: none
}

#board_write label {
	color: #333
}

#board_write textarea.board_write_txt {
	border: 1px solid #fff;
	width: 100%;
	height: 620px;
	outline: none;
	resize: none;
	outline: none;
	padding: 20px;
	box-sizing: border-box;
	overflow-y: scroll
}

#board_write .board_write_bt {
	font-size: 0;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	float: center;
}

.eff {
	width: 140px;
	height: 50px;
	left: -140px;
	/* background: green; */
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-1 {
	width: 140px;
	height: 50px;
	/* border: green; */
	float: center;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 0 40px 0;
	display: inline-block;
}

.button-1 a {
	font-family: arial;
	font-size: 16px;
	color: #e5e5e5;
	text-decoration: none;
	line-height: 50px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
} 

.eff-1 {
	width: 140px;
	height: 50px;
	top: -2px;
	right: -140px;
	background: #e5e5e5;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-1:hover .eff-1 {
	right: 0;
}

.button-1:hover a {
	color: white;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css">
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/board/style.css"> --%>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
</head>
<body>
	<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">REVIEW</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath }/info">공지 및 문의</a></li>
            <li><a href="${pageContext.request.contextPath }/review">리뷰</a></li>
        </ul>
    </div>
	</div>

	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>리뷰 쓰기
		</h2>
		<form id="reviewForm" name="reviewForm" method="post" enctype="multipart/form-data">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="board_write_table">
			<tbody>
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">객실정보</td>
									<td width="1070" height="55" align="left" valign="middle">
									 <select style="width: 130px" name="rmNo" id="category">
												<c:choose>
													<c:when test="${empty rmName}">
														<option value="0" selected>내역 없음</option>
													</c:when>
													<c:otherwise>
													<c:forEach var="rmN" items="${rmName }">  $("#categody").val()
														<option value="${rmN.room.rmNo }" selected>${rmN.room.rmName }</option>
													</c:forEach> 
													</c:otherwise>
											</c:choose>
									</select> 
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">작성자</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" id="mId" name="mId" value="${sessionScope.loginMember.mId }"readonly="readonly" style="width: 410px;">
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">제목</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" id="rvTitle" name="rvTitle" style="width: 1020px;">
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">이미지 업로드</td>
									<td><input type="file" name="file" id="file" style="width: 500px;"></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="620" align="center" valign="middle"
										style="border-bottom: 1px solid #e5e5e5"
										class="board_write_table_title">내용</td>
									<td width="1070" align="left" height="620" valign="top"
										style="border-bottom: 1px solid #e5e5e5; padding: 0">
										<textarea class="board_write_txt" name="rvContent" id="rvContent"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			
				<tr>
					<td>
						<div class="board_write_bt" height="55px">
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="#" onclick="reviewCreate()" style="color: black;">리뷰등록</a>
							</div>
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="${pageContext.request.contextPath }/review" style="color: black;">취소</a>
							</div>
						</div>
					</td>
				</tr>
			</tbody>	
		</table></form></div>
		
<script type="text/javascript">
$( ".star_rating a" ).click(function() {
     $(this).parent().children("a").removeClass("on");
     $(this).addClass("on").prevAll("a").addClass("on");
     return false;
});

function reviewCreate() {
	
	var rmName=$("#category").val(); //객실 선택 select 칸 
	/* var rvImg=$("#rvImg").val(); */ //첨부이미지
	var rvTitle=$("#rvTitle").val(); //제목
	var rvContent=$("#rvCotent").val();//글내용
	var mId=$("#mId").val();
	if(rmName==0){
		alert("이용하신 객실내역이 존재하지 않습니다.");
		return;
	}
	
	if(rvTitle==""){
		alert("리뷰 제목을 입력해주세요.");
		return;
	}
	
	if(rvContent==""){
		alert("리뷰 내용을 입력해주세요.");
		return;
	}
	
	$("#reviewForm").attr("action","${pageContext.request.contextPath}/review/add");
	$("#reviewForm").submit();
};



</script>
</body>
</html>