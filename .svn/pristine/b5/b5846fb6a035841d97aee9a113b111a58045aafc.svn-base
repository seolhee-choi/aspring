<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
/* 게시판 글쓰기 페이지 */
.wrap {
	width: 1200px;
	margin: 0 auto;
	position: relative;
	margin-bottom: 150px;
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
	background: green;
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
	border: 1px solid #00ad10;
	outline: none
}

#board_write select:focus {
	border: 1px solid #00ad10;
	outline: none
}

#board_write label {
	color: #333
}

#board_write .bbs_notice_checkbox input {
	margin-right: 8px;
	height: 20px;
	background: none;
	border: none;
	padding-left: 0
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
	margin: 65px 0 55px;
	text-align: center;
	float: left;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 0 40px 480px;
	border-top: 1px solid green;
}


.eff {
	width: 140px;
	height: 50px;
	left: -140px;
	background: green;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-1 {
	width: 140px;
	height: 50px;
	border: green;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 0 40px 0;
	display:inline-block;'
}

.button-1 a {
	font-family: arial;
	font-size: 16px;
	color: black;
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
	background: green;
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

<title>Insert title here</title>
</head>
<body>
	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>
			공지사항 등록
		</h2>
		<form id="infoForm" name="infoForm" method="post" enctype="multipart/form-data">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="board_write_table">
			<tbody>
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr id="category" style>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
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
										<input type="text" id="infoTitle" name="infoTitle" value
										style="width: 1020px;">
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
									<td width="1070" height="55" align="left" valign="middle">
											<input type="file" name="file" id="file" style="width: 500px;">
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
									<td width="130" height="620" align="center" valign="middle"
										style="border-bottom: 1px solid #e5e5e5"
										class="board_write_table_title">내용</td>
									<td width="1070" align="left" height="620" valign="top"
										style="border-bottom: 1px solid #e5e5e5; padding: 0">
										<textarea
											class="board_write_txt" name="infoContent" id="infoContent"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="board_write_bt">
			<div class="button-1">
				<div class="eff-1"></div>
				<a href="#" onclick="infoResister()"> 등록 </a>
			</div>
			<div class="button-1">
				<div class="eff-1"></div>
				<a href="${pageContext.request.contextPath }/info"> 목록보기 </a>
			</div>
		</div>
		</form>
	</div>
	

<!-- 스크립트 -->
<script type="text/javascript">
function infoResister() {
	
	
	/* var rvImg=$("#rvImg").val(); */ //첨부이미지
	var infoTitle=$("#infoTitle").val(); //제목
	var infoContent=$("#infoCotent").val();//글내용
	var mId=$("#mId").val();
	
	if(infoTitle==""){
		alert("게시글 제목을 입력해주세요.");
		return;
	}
	
	if(infoContent==""){
		alert("게시글 내용을 입력해주세요.");
		return;
	}
	
	$("#infoForm").attr("action","${pageContext.request.contextPath}/info/add");
	$("#infoForm").submit();
};
</script>
</body>
</html>