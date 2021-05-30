<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="resources/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="resources/assets/css/headers/header-default.css">
<link rel="stylesheet" href="resources/assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="resources/assets/plugins/animate.css">
<link rel="stylesheet"
	href="resources/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="resources/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet"
	href="resources/assets/plugins/flexslider/flexslider.css">
<link rel="stylesheet"
	href="resources/assets/plugins/bxslider/jquery.bxslider.css">
<link rel="stylesheet"
	href="resources/assets/plugins/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet"
	href="resources/assets/plugins/revolution-slider/rs-plugin/css/settings.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="resources/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="resources/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet"
	href="resources/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
<link rel="stylesheet"
	href="resources/assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
<!--[if lt IE 9]><link rel="stylesheet" href="/resources/assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen"><![endif]-->

<!-- CSS Pages Style -->
<link rel="stylesheet" href="resources/assets/css/pages/page_one.css">
<link rel="stylesheet"
	href="resources/assets/css/pages/pricing/pricing_v1.css">
<link rel="stylesheet"
	href="resources/assets/css/pages/pricing/pricing_v2.css">
<link rel="stylesheet"
	href="resources/assets/css/pages/pricing/pricing_v3.css">
<link rel="stylesheet"
	href="resources/assets/css/pages/pricing/pricing_v4.css">
<link rel="stylesheet"
	href="resources/assets/css/pages/pricing/pricing_v5.css">
<title>Insert title here</title>
</head>
<body>
	<!--=== End Header ===-->
	<div class="breadcrumbs breadcrumbs-light">
		<div class="container">

			<ul class="pull-right breadcrumb">
				<li><a href="login.jsp">로그인</a></li>
				<li class="active">회원가입</li>
				<li><a href="#">ID/PW 찾기</a></li>
			</ul>
		</div>
	</div>
	<div id="my-write-list">
		<h2 class="my-write-list-title">
			<span class="my-write-list-title-bar"></span>COMMENT
		</h2>
		<table cellspacing="0" cellpadding="0" style="width: 100%;">
			<tr>
				<td valign="top">
					<table style="width: 100%;" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<table class="my-write-list-table"
									style="border-top: 1px solid #e5e5e5" cellpadding="0"
									cellspacing="0">
									<tr>

										<td align="left" width="*" style="padding-left: 40px;"></td>

										<td align="center" width="60%">제목</td>
										<td align="center" width="15%">글쓴이</td>
										<td align="center" width="15%">등록일</td>
									</tr>
								</table>
							</td>
						</tr>
						<c:forEach items="${selectBoard }" var="list">
							<tr>
								<td align="center">
									<table width="100%" cellpadding="0" cellspacing="0"
										class="my-write-list-list">
										<tr>
											<td align="left" width="*" height="55"
												style="padding-left: 40px;">공지사항</td>
											<td align="left" width="60%" height="55"
												class="my-write-list-txt"><a href="#"> ${list.title }</a>
											<td align="center" width="15%" height="55">${list.writer }</td>
											<td align="center" width="15%" height="55"><fmt:formatDate
													value="${list.regdate }" pattern="yyyy.MM.dd" /></td>
										</tr>

									</table>
								</td>
							</tr>
						</c:forEach>
						<tr>
							<td align="center" class="paging">
							<td align="center" class="paging" id="pageNumDiv"></td>
							</td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</div>

</body>
</html>
<script>
	function pageDisplay(pager) {
		var html = "";
		if (pager.startPage > pager.blockSize) {
			html += "<a href='javascript:boardDisplay(1);'>[처음]</a>";
			html += "<a href='javascript:boardDisplay("
					+ pager.prevPage
					+ ");'><img src='http://webimg.calobye.com/img/ver2/prev_bt02.gif'></a>";
		} else {
			html += "[처음]<img src='http://webimg.calobye.com/img/ver2/prev_bt02.gif'>";
		}

		for (var i = pager.startPage; i <= pager.endPage; i++) {
			if (pager.pageNum != i) {
				html += "<a class='paging-number' href='javascript:boardDisplay("
						+ i + ");'>" + i + "</a>";
			} else {
				html += "<a class='paging-number on'>" + i + "</a>"
			}
		}

		if (pager.endPage != pager.totalPage) {
			html += "<a href='javascript:boardDisplay("
					+ pager.nextPage
					+ ");'><img src='http://webimg.calobye.com/img/ver2/next_bt.gif'></a>";
			html += "<a href='javascript:boardDisplay(" + pager.totalPage
					+ ");'>[마지막]</a>";
		} else {
			html += "<img src='http://webimg.calobye.com/img/ver2/next_bt.gif'>[마지막]";
		}

		$("#pageNumDiv").html(html);
	}
</script>