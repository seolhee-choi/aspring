<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/board/style.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<style type="text/css">
#my-write-list .my-write-list-title .my-write-list-title-bar {
	width: 3px;
	background: #72c02c;
	height: 20px;
	display: inline-block;
	vertical-align: middle;
	margin-right: 13px;
	margin-top: -3px
}

.paging .on {
	border-bottom: 2px solid #72c02c !important
}

#room_search{
	font-size: 14px;
	float: left;
}

#keyword_search {
	margin-left: 2px;
	/* float: right; */
}

#search_keyword{
	border: 1px solid #bbb; 
	margin-left: 2px;
}

#search_btn {
	cursor: pointer;
    display: inline-block;
    border: 1px solid #bbb;
    color: #333;
}
 
#write_btn {
	cursor: pointer;
    display: inline-block;
    border: 1px solid #bbb;
    color: #333;
    padding: 4px 8px;
    font-size: 15px;
    /* margin-top: 7px; */
    float: right;
} 

#my-write-list .paging {
    padding-top: 50px;
}

#boardlayout {
	display: none;
}

</style>


<div class="wrapper">
	<!--=== End Header ===-->
	<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">게시판</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath }/info">공지</a></li>
            <li class="active">리뷰</li>
        </ul>
    </div>
	</div>
	
	<div class="container content">
	<div id="my-write-list">
		<h2 class="my-write-list-title">
			<span class="my-write-list-title-bar"></span>Notice
		</h2>
		<table cellspacing="0" cellpadding="0" style="width: 100%;">
			<tr>
				<td valign="top">
					<table style="width: 100%;" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<div id="keyword_search">
									<input type="text" name="search_keyword" id="search_keyword">
									<button type="button" id="search_btn">검 색</button>
								<a href="${pageContext.request.contextPath }/info/write"><button type="button" id="write_btn">글쓰기</button></a>
								</div>
								<table class="my-write-list-table" style="border-top: 1px solid #e5e5e5" cellpadding="0" cellspacing="0">
									<tr>
									<td align="left" width="*" style="padding-left: 40px;"></td>
										
										<td align="center" width="60%">제목</td>
										<td align="center" width="15%">글쓴이</td>
										<td align="center" width="15%">등록일</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="center">
							<div id="infoListDiv">

							 </div>
							</td>
						</tr>
						<tr>
							<td align="center" class="paging" id="pageNumDiv"></td>
						</tr>
					</table>
					<!-- <div align="center" id="pageNumDiv"></div> -->
				</td>
			</tr>
		</table>
	</div>
	</div>
</div><!--/wrapper-->

<script id="template" type="text/x-handlebars-template">
<table width="100%" cellpadding="0" cellspacing="0"	class="my-write-list-list">
	{{#each .}}
		<tr>
			
			<td align="center" width="60%" height="55"><a href="${pageContext.request.contextPath }/info/detail/{{infoNo}}">{{infoTitle}}</a></td>
			<td align="center" width="15%" height="55"><a href="${pageContext.request.contextPath }/info/detail/{{infoNo}}">{{mId}}</a></td>
			<td align="center" width="15%" height="55">{{infoDate}}</td>
		</tr>
	{{/each}}
</table>
</script>

<script type="text/javascript">
var page=1; //현재 요청페이지 번호를 저장하는 전역 변수(초기값 1페이지) - 페이지 ㅡ시작하자마자 실행될것
boardDisplay(page);

function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "info/list?pageNum="+pageNum,
		dataType: "json",
		success: function(json) {
			if(json.infoList.length==0) {
				$("#infoListDiv").html("검색된 게시글이 존재하지 않습니다.");
				return;
			}
			
			var source=$("#template").html();
			var template=Handlebars.compile(source);
			$("#infoListDiv").html(template(json.infoList));
			
			pageDisplay(json.pager);
		}, 
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}


//css떄문에 [처음],[마지막] 버튼은 출력이 안되는것같아요..
function pageDisplay(pager) {
	var html="";
	if(pager.startPage>pager.blockSize) {
		html+="<a href='javascript:boardDisplay(1);'>[처음]</a>";
		html+="<a href='javascript:boardDisplay("+pager.prevPage+");'><img src='http://webimg.calobye.com/img/ver2/prev_bt02.gif'></a>";
	} else {
		html+="[처음]<img src='http://webimg.calobye.com/img/ver2/prev_bt02.gif'>";
	}
	
	for(var i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a class='paging-number' href='javascript:boardDisplay("+i+");'>"+i+"</a>";
		} else {
			html+="<a class='paging-number on'>"+i+"</a>"
		}
	}
	
	if(pager.endPage!=pager.totalPage) {
		html+="<a href='javascript:boardDisplay("+pager.nextPage+");'><img src='http://webimg.calobye.com/img/ver2/next_bt.gif'></a>";
		html+="<a href='javascript:boardDisplay("+pager.totalPage+");'>[마지막]</a>";
	} else {
		html+="<img src='http://webimg.calobye.com/img/ver2/next_bt.gif'>[마지막]";
	}
	
	$("#pageNumDiv").html(html);
} 





</script>
