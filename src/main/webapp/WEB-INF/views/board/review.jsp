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

#deleteBtn{
	border:none;
	background: none;
}

</style>


<div class="wrapper">
	<!--=== End Header ===-->
	<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">게시판</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath }/info">공지 및 문의</a></li>
            <li class="active">리뷰</li>
        </ul>
    </div>
	</div>
	
	<div class="container content">
	<div id="my-write-list">
		<h2 class="my-write-list-title">
			<span class="my-write-list-title-bar"></span>REVIEW
		</h2>
		<table cellspacing="0" cellpadding="0" style="width: 100%;">
			<tr>
				<td valign="top">
					<table style="width: 100%;" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<div id="room_search">
									<select name="room_type" style="height: 23px;">
										<option value="0">전체</option>
										<option value="1">Room1(그레이테마)</option>
										<option value="2">Room2(블루테마)</option>
										<option value="3">Room3(내츄럴테마)</option>
										<option value="4">Room4(블랙테마)</option>
									</select>
								</div>
								<div id="keyword_search">
									<input type="text" name="keyword" id="search_keyword">
									<button type="button" id="search_btn" onclick="searchList()">검 색</button>
								<a href="${pageContext.request.contextPath }/review/write"><button type="button" id="write_btn">리뷰쓰기</button></a>
								</div>
								<table class="my-write-list-table" style="border-top: 1px solid #e5e5e5" cellpadding="0" cellspacing="0">
									<tr>
									<!-- 	<td align="left" width="*"></td> -->
										<td align="center" width="4%">글번호</td>
										<td align="center" width="11%">객실명</td>
										<td align="center" width="15%">이미지</td>
										<td align="center" width="35%">제목</td>
										<td align="center" width="10%">글쓴이</td>
										<td align="center" width="15%">등록일</td>
										<td align="center" width="10%"></td>
                                        
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="center">
							<div id="reviewListDiv">
							<!-- 게시글 출력 영역 -->
							<!-- 135번 라인 <script id="template"... 밑에 쓴게 여기에 들어갑니다 -->

							 </div>
							</td>
						</tr>
						<tr>
							<!-- 페이징블록 -->
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
			<td align="left" width="5%" height="55">{{rvNo}}</td>
			<td align="center" width="10%" height="55">{{{status rmNo}}}</td>
			<td align="center" width="15%" height="55"><a href="${pageContext.request.contextPath }/review/detail/{{rvNo}}">
			<img src="${pageContext.request.contextPath }/images/rvImg/{{rvImg}}" width="55px;" height="55"></a></td>
			<td align="left" width="35%" height="55" class="my-write-list-txt"><a href="${pageContext.request.contextPath }/review/detail/{{rvNo}}">{{rvTitle}}</a></td>
			<td align="center" width="10%" height="55">{{mId}}</td>
			<td align="center" width="15%" height="55">{{{trimString rvWriteDate}}}</td>
			<td align="center" width="10%" height="55">
			<button type="button" id="deleteBtn"><img src="${pageContext.request.contextPath }/images/rvImg/deleteIcon.png" width="20" height=20"
				onclick="remove({{rvNo}})"></button></td>
		</tr>
	{{/each}}
</table>
</script>

<script type="text/javascript">

Handlebars.registerHelper('status', function(status) {
	var statusChange="";
	if(status==1){
		statusChange="그레이테마";
	}else if(status==2){
		statusChange="블루테마";
	}else if(status==3){
		statusChange="네추럴테마";
	}else if(status==4){
		statusChange="블랙테마";
	}
	
	return new Handlebars.SafeString(statusChange)
});

Handlebars.registerHelper('trimString', function(passedString) {
	var theString=passedString.substring(0, 10);
	return new Handlebars.SafeString(theString)
});


var page=1; //현재 요청페이지 번호를 저장하는 전역 변수(초기값 1페이지) - 페이지 ㅡ시작하자마자 실행될것
boardDisplay(page);

function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "review/list?pageNum="+pageNum,
		//url: "list?pageNum="+pageNum, //에러코드 404뜨시면 이거로!!
		dataType: "json",
		success: function(json) {
			if(json.reviewList.length==0) {
				$("#reviewListDiv").html("검색된 게시글이 존재하지 않습니다.");
				return;
			}
			
			var source=$("#template").html();
			var template=Handlebars.compile(source);
			$("#reviewListDiv").html(template(json.reviewList));
			
			pageDisplay(json.pager);
		}, 
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}


//css떄문에 [처음],[마지막] 버튼은 출력이 안되는것같아요..
//화살표(prevPage, nextPage) 안 됨 ㅠ
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

//게시글 삭제
function remove(rvNo) {
	if(confirm("리뷰를 삭제하시겠습니까?")){
		$.ajax({
			type: "delete",
			url:"review/remove/"+rvNo,
			dataType: "text",
			success: function(text) {
				boardDisplay(1);
			}, 
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	}
}
/* 
function keyword_search(keyword) {
	$.ajax({
		type: "get",
		url:"review/search/"+keyword,
		dataType: "text",
		success: function(text) {
			boardDisplay(1);
		}, 
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}
}
 */


</script>
