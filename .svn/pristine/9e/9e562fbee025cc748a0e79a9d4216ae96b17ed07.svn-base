<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<style type="text/css">
#test_01 th,tr,td{
	text-align: center;
}
.rowtest:hover{
	background-color: #ddd;
	cursor: pointer;
}

.page_wrap {
	text-align:center;
	font-size:0;
 }
.page_nation {
	display:inline-block;
}
.page_nation .none {
	display:none;
}
.page_nation a {
	display:block;
	margin:0 3px;
	float:left;
	border:1px solid #e6e6e6;
	width:28px;
	height:28px;
	line-height:28px;
	text-align:center;
	background-color:#fff;
	font-size:13px;
	color:#999999;
	text-decoration:none;
}
.page_nation .arrow {
	border:1px solid #ccc;
}
.page_nation .pprev {
	background:#FFFFFF url('${pageContext.request.contextPath }/images/page_pprev.png') no-repeat center center;
	margin-left:0;
}
.page_nation .prev {
	background:#FFFFFF url('${pageContext.request.contextPath }/images/page_prev.png') no-repeat center center;
	margin-right:7px;
}
.page_nation .next {
	background:#FFFFFF url('${pageContext.request.contextPath }/images/page_next.png') no-repeat center center;
	margin-left:7px;
}
.page_nation .nnext {
	background:#FFFFFF url('${pageContext.request.contextPath }/images/page_nnext.png') no-repeat center center;
	margin-right:0;
}
.page_nation a.active {
	background-color:#2ecc71;
	color:#fff;
	border:1px solid white;
}

#page_nation2 a.active {
	background-color:#9b6bcc;
	color:#fff;
	border:1px solid white;
}
</style>

<div class="wrapper">



<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">예약 내용 확인</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath}/rsv/stepOne">객실 예약</a></li>
            <li class="active">예약확인 및 취소</li>
            <li><a href="${pageContext.request.contextPath}/rsvtest3">이용요금 및 안내</a></li>
            <li><a href="${pageContext.request.contextPath}/rsvtest1">취소/환불 규정 안내</a></li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->


<!--=== Content Part1 ===-->

        
        <div class="container content">
			<!-- Top Categories -->
			<div class="row">
				<div class="col-md-11" style="margin-left: 4%;">
					<div class="text-center">
						<h2>
							<span class="text-primary">예약확인</span>
						</h2>
					</div><br>

					<div class="panel panel-green margin-bottom-10">
						<table class="table" id="test_01">
							<thead>
								<tr style="background-color: #2ecc71; color: white; text-align: center">
									<th>번호</th>
									<th>이름(아이디)</th>
									<th>객실</th>
									<th width="20%">체크인</th>
									<th width="20%">체크아웃</th>
									<th width="20%">예약일</th>
									<th>결제금액</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody>
							<c:choose>
								<c:when test="${fn:length(myRsvList) == 0}">
									<tr>
										<td colspan="8">조회결과가 없습니다.</td>
									</tr>
							    </c:when>
							    <c:otherwise>
							    	<c:forEach var="myList" items="${myRsvList }">
									<tr class="rowtest" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${myList.rsvNo }'">
										<td>${myList.rsvNo }</td>
										<td>${myList.member.mName}(${myList.member.mId })</td>
										<td>${myList.room.rmName }</td>
										<td>${fn:substring(myList.rsvCheckin,0,10) }</td>
										<td>${fn:substring(myList.rsvCheckout,0,10) }</td>
										<td>${fn:substring(myList.rsvDate,0,16) }</td>
										<td><fmt:formatNumber value="${myList.rsvPayment }" type="number"/></td>
										<td>
										<c:choose>
											<c:when test="${myList.rsvStatus==1}">입금대기</c:when>
											<c:when test="${myList.rsvStatus==2}">예약완료</c:when>
											<c:when test="${myList.rsvStatus==3}">예약취소</c:when>
											<c:when test="${myList.rsvStatus==4}">환불대기</c:when>
											<c:when test="${myList.rsvStatus==5}">환불완료</c:when>
										</c:choose>
										</td>
									</tr>
									</c:forEach>
							    </c:otherwise>
							</c:choose>
							</tbody>
						</table>
					</div>
					<div class="page_wrap text-center">
						<div class="page_nation">
						<c:choose>
							<c:when test="${pager.startPage>pager.blockSize }">
								<a class="arrow pprev" href="${pageContext.request.contextPath}/rsv/myRsvList?pageNum=1"></a>
								<a class="arrow prev" href="${pageContext.request.contextPath}/rsv/myRsvList?pageNum=${pager.prevPage}"></a>
							</c:when>
							<c:otherwise>
								<a class="arrow pprev"></a>
      							<a class="arrow prev"></a>
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
							<c:choose>
								<c:when test="${pager.pageNum!=i }">
									<a href="${pageContext.request.contextPath}/rsv/myRsvList?pageNum=${i}">${i}</a>
								</c:when>
								<c:otherwise>
									<a class="active">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
						<c:choose>
							<c:when test="${pager.endPage!=pager.totalPage}">
								<a class="arrow next" href="${pageContext.request.contextPath}/rsv/myRsvList?pageNum=${pager.nextPage}"></a>
								<a class="arrow nnext" href="${pageContext.request.contextPath}/rsv/myRsvList?pageNum=${pager.totalPage}"></a>
							</c:when>
							<c:otherwise>
								<a class="arrow next"></a>
     							<a class="arrow nnext"></a>
							</c:otherwise>
						</c:choose>
						</div>
					</div>
				</div>
			</div><br><br><br>
			
			<div class="row">
				<div class="col-md-11" style="margin-left: 4%;">
					<div class="text-center">
						<h2>
							<span class="text-primary">지난 예약 확인</span>
						</h2>
					</div><br>

					<div class="panel panel-purple margin-bottom-10">
						<table class="table" id="test_01">
							<thead>
								<tr style="background-color: #9b6bcc; color: white; text-align: center">
									<th>번호</th>
									<th>이름(아이디)</th>
									<th>객실</th>
									<th width="20%">체크인</th>
									<th width="20%">체크아웃</th>
									<th width="20%">예약일</th>
									<th>결제금액</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody id="rsvTarget">
								<tr><td>test</td></tr>
								<!-- <tr><td colspan="8">조회결과가 없습니다.</td></tr> -->
							</tbody>
						</table>
					</div>
					<div class="page_wrap text-center">
						<div class="page_nation" id="page_nation"></div>
					</div>
				</div>
			</div>
	</div>
</div>

<script id="template" type="text/x-handlebars-template">
	{{#each .}}
	<tr class="rowtest" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo={{rsvNo}}'">
		<td>{{rsvNo}}</td>
		<td>{{member.mName}}({{mId}})</td>
		<td>{{room.rmName}}</td>
		<td>{{{trimString rsvCheckin 0 10}}}</td>
		<td>{{{trimString rsvCheckout 0 10}}}</td>
		<td>{{{trimString rsvDate 0 16}}}</td>
		<td>{{{number rsvPayment}}}</td>
		<td>{{{status rsvStatus}}}</td>
	</tr>
	{{/each}}
</script>

<script type="text/javascript">

Handlebars.registerHelper('trimString', function(passedString, startstring, endstring) {
	var theString = passedString.substring( startstring, endstring );
	return new Handlebars.SafeString(theString)
});

Handlebars.registerHelper('number', function(payment) {
	var numberF=payment.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	return new Handlebars.SafeString(numberF)
});

Handlebars.registerHelper('status', function(status) {
	var statusChange="";
	if(status==1){
		statusChange="입금대기";
	}else if(status==2){
		statusChange="예약완료";
	}else if(status==3){
		statusChange="예약취소";
	}else if(status==4){
		statusChange="환불대기";
	}else if(status==5){
		statusChange="환불완료";
	}
	
	return new Handlebars.SafeString(statusChange)
});

var page=1;//현재 요청 페이지 번호를 저장하는 전역변수
boardDisplay(page);



//게시글 목록을 요청하여 응답하는 함수
function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "myRsvList2?pageNum="+pageNum,
		dataType: "json",
		success: function(json) {
			if(json.myRsvList.length==0) {
				$("#rsvTarget").html("<tr><td colspan='8'>조회결과가 없습니다.</td></tr>");
				return;
			}
			
			//템플릿 코드를 반환받아 저장
			var source=$("#template").html();
			//템플릿 코드를 전달하여 템플릿 객체 생성
			var template=Handlebars.compile(source);
			//템플릿 객체에 자바스크립트 객체를 전달하여 HTML 코드로 변환하여 반환받아 응답 처리
			$("#rsvTarget").html(template(json.myRsvList));
			
			pageDisplay(json.pager);
		}, 
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}

//페이지 번호를 응답하는 함수

function pageDisplay(pager) {
	var html="";
	if(pager.startPage>pager.blockSize) {
		html+="<a class='arrow pprev' href='javascript:boardDisplay(1);'></a>";
		html+="<a class='arrow prev' href='javascript:boardDisplay("+pager.prevPage+");'></a>";
	} else {
		html+="<a class='arrow pprev'></a><a class='arrow prev'></a>";
	}
	
	for(var i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a href='javascript:boardDisplay("+i+");'>"+i+"</a>";
		} else {
			//<a class='active'></a>
			html+="<a style='background-color:#9b6bcc;' class='active'>"+i+"</a>";
		}
	}
	
	if(pager.endPage!=pager.totalPage) {
		html+="<a class='arrow nnext' href='javascript:boardDisplay("+pager.nextPage+");'></a>";
		html+="<a class='arrow next' href='javascript:boardDisplay("+pager.totalPage+");'></a>";
	} else {
		html+="<a class='arrow nnext'></a><a class='arrow next'></a>";
	}
	
	$("#page_nation").html(html);
}

</script>

