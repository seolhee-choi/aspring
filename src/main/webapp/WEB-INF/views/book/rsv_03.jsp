<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
#topmenu li{
	cursor: pointer;
}
</style>

<div class="wrapper">
	<div class="breadcrumbs">
		<div class="container">
			<h1 class="pull-left">${room.rmName} 예약</h1>
			<form id="room-book-form" action="${pageContext.request.contextPath}/rsv/stepThree" method="post">
				<input type="hidden" name="rmNo" id="rmNoTop" value="">
				<input type="hidden" name="checkin" id="checkinTop" value="">
				<input type="hidden" name="checkout" id="checkoutTop" value=""> 
				<input type="hidden" name="adult" id="adultTop" value="0">
				<input type="hidden" name="children" id="childrenTop" value="0">
				<input type="hidden" name="mileage" id="mileageTop" value="0">
				<ul class="pull-right breadcrumb" id="topmenu">
					<!-- <li class="active">ROOM1</li>
					<li>ROOM2</li>
					<li>ROOM3</li>
					<li>ROOM4</li> 
					-->
					<c:forEach var="RL" items="${roomList }">
					<li <c:if test="${RL.rmNo==room.rmNo}">class="active"</c:if> id="${RL.rmNo }">${RL.rmName }</li>
					</c:forEach>
				</ul>
			</form>
		</div>
	</div>
	
	

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

	<div class="modal fade" id="cancelRule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myModalLabel1" class="modal-title">이용요금 안내</h4>
					<p>
						<span class="text-primary">객실 모두 이용요금은 동일합니다.</span>
					</p>
				</div>
				<div class="modal-body">
					<div class="panel panel-purple margin-bottom-10">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-edit"></i> 이용요금
							</h3>
						</div>
						<table class="table table-striped">
							<tbody>
								<tr>
									<th>평일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>주말(금,토)</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>공휴일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>연휴공휴일</th>
									<td>￦150,000</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="panel panel-brown margin-bottom-10">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-edit"></i> 5월연휴 (21/05/01 ~ 21/05/05)

							</h3>
						</div>
						<table class="table table-striped">
							<tbody>
								<tr>
									<th>평일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>주말(금,토)</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>공휴일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>연휴공휴일</th>
									<td>￦150,000</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="panel panel-purple margin-bottom-10">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-edit"></i> 성수기 (21/06/01 ~ 21/07/15)
							</h3>
						</div>
						<table class="table table-striped">
							<tbody>
								<tr>
									<th>평일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>주말(금,토)</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>공휴일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>연휴공휴일</th>
									<td>￦150,000</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="panel panel-brown margin-bottom-10">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-edit"></i> 극성수기 (21/07/16 ~ 21/08/22)

							</h3>
						</div>
						<table class="table table-striped">
							<tbody>
								<tr>
									<th>평일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>주말(금,토)</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>공휴일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>연휴공휴일</th>
									<td>￦150,000</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="panel panel-purple margin-bottom-10">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-edit"></i> 성수기 (21/08/23 ~ 21/09/09)
							</h3>
						</div>
						<table class="table table-striped">
							<tbody>
								<tr>
									<th>평일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>주말(금,토)</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>공휴일</th>
									<td>￦150,000</td>
								</tr>
								<tr>
									<th>연휴공휴일</th>
									<td>￦150,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button data-dismiss="modal" class="btn-u btn-u-default" type="button">닫기</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="rsvCheck" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 1500px; margin: 20px auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myModalLabel1" class="modal-title">예약현황</h4>
					
				</div>
				<div class="modal-body">
					<c:import url="/calendar"/>
				</div>
				<div class="modal-footer">
					<button data-dismiss="modal" class="btn-u btn-u-default" type="button">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- End Small Modal target -->

	<!--=== Content Part ===-->
	<div class="container content">
		<div id="alerttest1" class="alert alert-warning" style="display: none;">
			<span id="null.errors" class="rsvMessage"></span>
		</div>
		<div class="row">
			<form id="book-form" class="sky-form" action="${pageContext.request.contextPath}/rsv/stepFour" method="post">
				<input id="rmNo" name="rmNo" type="hidden" value="${room.rmNo }" />
				<header class="panel-heading overflow-h">
					<h2 class="panel-title heading-sm pull-left">
						<i class="fa fa-calendar"></i>예약 설정
					</h2>
					<button type="button" class="btn-u btn-brd rounded btn-u-default btn-u-xs pull-right" data-toggle="modal" data-target="#cancelRule" type="button">
						<span class="">이용요금</span>
					</button>
					<div class="pull-right">&nbsp;</div>
					<button type="button" class="btn-u btn-brd rounded btn-u-default btn-u-xs pull-right" data-toggle="modal" data-target="#rsvCheck" type="button">
						<span class="">예약현황</span>
					</button>&nbsp;&nbsp;&nbsp;
				</header>
				<fieldset>
					<div class="row">
						<div class="col"></div>
					</div>
					<section>
						<label class="checkbox"> <input type="checkbox" name="privateuse" id="privateuse"><i></i>개인정보 활용동의 (필수) <a class="small" data-toggle="modal" data-target=".bs-book-consent1-sm">내용</a>
						</label> <label class="checkbox"> <input type="checkbox" name="privatecollect" id="privatecollect"><i></i>개인정보 수집동의 (선택) <a class="small" data-toggle="modal" data-target=".bs-book-consent2-sm">내용</a>
						</label>

					</section>
					<div class="row">
						<section class="col col-6">
							<label class="label">예약자 성함</label> <label class="input"> <i class="icon-prepend fa fa-user"></i> <input id="user" placeholder="예약자분 성함을 입력해 주세요" type="text" value="${sessionScope.loginMember.mName }" readonly="readonly" />
							</label>

						</section>
						<section class="col col-6">
							<label class="label">연락처</label> <label class="input"> <i class="icon-prepend fa fa-mobile-phone"></i> <input id="phoneno" placeholder="연락처를 입력해 주세요" type="text" value="${sessionScope.loginMember.mPhone }" readonly="readonly" />
							</label>

						</section>
					</div>
					<div class="row">
						<section class="col col-6">
							<label class="label">입실 날짜</label> <label class="input"> <i class="icon-append fa fa-calendar"></i> <input id="checkindate" name="checkin" placeholder="체크인 날짜 선택" type="text" value="${reservationTwo.checkin }" />
							</label>

						</section>
						<section class="col col-6">
							<label class="label">퇴실 날짜</label> <label class="input"> <i class="icon-append fa fa-calendar"></i> <input id="checkoutdate" name="checkout" placeholder="체크아웃 날짜 선택" type="text" value="${reservationTwo.checkout }" />
							</label>

						</section>
					</div>
					<div class="row">
						<section class="col col-4">
							<label class="label">성인/청소년(만13세이상)${adult}</label> <label class="select"> 
								<select id="adult" name="adult">
									<option value="0" <c:if test="${reservationTwo.adult==0}">selected="selected"</c:if>>0명</option>
									<option value="1" <c:if test="${reservationTwo.adult==1}">selected="selected"</c:if>>1명</option>
									<option value="2" <c:if test="${reservationTwo.adult==2}">selected="selected"</c:if>>2명</option>
									<option value="3" <c:if test="${reservationTwo.adult==3}">selected="selected"</c:if>>3명</option>
									<option value="4" <c:if test="${reservationTwo.adult==4}">selected="selected"</c:if>>4명</option>
									<%-- <option value="5" <c:if test="${reservationTwo.adult==5}">selected="selected"</c:if>>5명</option> --%>
									
								</select><i></i>
							</label>

						</section>
						<section class="col col-4">
							<label class="label">소아(13개월부터~만12세이하)</label> <label class="select"> 
								<select id="children" name="children">
									<option value="0" <c:if test="${reservationTwo.children==0}">selected="selected"</c:if>>0명</option>
									<option value="1" <c:if test="${reservationTwo.children==1}">selected="selected"</c:if>>1명</option>
									<option value="2" <c:if test="${reservationTwo.children==2}">selected="selected"</c:if>>2명</option>
									<option value="3" <c:if test="${reservationTwo.children==3}">selected="selected"</c:if>>3명</option>
									<option value="4" <c:if test="${reservationTwo.children==4}">selected="selected"</c:if>>4명</option>
								</select><i></i>
							</label>

						</section>

						<section class="col col-4">
							<label class="label">마일리지(보유 마일리지 : <fmt:formatNumber value="${sessionScope.loginMember.mMileage }" type="number"/>)</label> <label class="input"> 
								<input id="mileage" type="number" name="mileage" value="${reservationTwo.mileage }"><i></i>
							</label>
						</section>
						
						

					</div>
				</fieldset>
				<footer>
					<button type="submit" name="submit" class="button">예약담기</button>
				</footer>
			</form>
			<!-- End Comments-->
		</div>
		<div class="margin-bottom-10"></div>
		<div id="alerttest2" class="alert alert-warning" style="display: none;">
			<span id="null.errors" class="rsvMessage"></span>
		</div>
		<script type="text/javascript">
			var mileage = $("#mileage");
			var max=${sessionScope.loginMember.mMileage};
			if($("#mileage").val()==""){
				$("#mileage").val("0");
			}

			mileage.keyup(function() {
				var mileageval = $("#mileage").val();
				if (mileageval > max) {
					mileage.val(max);
				}
			});
		</script>
		<div class="margin-bottom-10"></div>
		<div class="row">
			<div class="carousel slide carousel-v2" id="portfolio-carousel">
				<div class="easy-block-v1">
					<div class="easy-block-v1-badge">
						<span class="font-bold">${room.rmName }</span>
					</div>
					<div class="carousel-inner">
<%-- 					
						<div class="item active">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_main.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_inside1.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_inside2.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_inside3.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_inside4.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_inside5.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_ceiling1.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_living_room1.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_living_room2.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_living_room3.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_living_room4.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_living_room5.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_kitchen1.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_kitchen2.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_kitchen3.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_bedroom1.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_bedroom2.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_bedroom3.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_bedroom4.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_bedroom5.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_toilet1.jpg">
						</div>
						<div class="item">
							<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_toilet2.jpg">
						</div>
					</div>
					 --%>
					 <div class="item active">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_main.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_inside1.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_inside2.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_inside3.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_inside4.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_kitchen1.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_bedroom1.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_bedroom2.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_bedroom3.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_toilet1.jpg">
				    </div>
				    <div class="item">
				        <img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room${room.rmNo}/aspring_room${room.rmNo}_toilet2.jpg">
				    </div>
					<a class="left carousel-control rounded-x" href="#portfolio-carousel" role="button" data-slide="prev">
						<i class="fa fa-angle-left arrow-prev"></i>
					</a>
					<a class="right carousel-control rounded-x" href="#portfolio-carousel" role="button" data-slide="next">
						<i class="fa fa-angle-right arrow-next"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--/container-->
</div></div>
<!--/wrapper-->
<script type="text/javascript">
$("#book-form").submit(function(){
	var rmNo=$("#rmNo").val();
	var checkin=$("#checkindate").val();
	var checkout=$("#checkoutdate").val();
	var adult=$("#adult option:selected").val();
	var children=$("#children option:selected").val();
	var maxppl=${room.rmMax};

	if(checkin==""){
		$(".rsvMessage").html("체크인 날짜를 선택해 주세요");
		$("#alerttest1").show();
		$("#alerttest2").show();
		return false;
	}
	
	if(checkout==""){
		$(".rsvMessage").html("체크아웃 날짜를 선택해 주세요");
		$("#alerttest1").show();
		$("#alerttest2").show();
		return false;
	}
	
	if(((adult-0)+(children-0))>maxppl){
		$(".rsvMessage").html("최대 예약 인원은 "+maxppl+"명 입니다");
		$("#alerttest1").show();
		$("#alerttest2").show();
		return false;
	}
	
	var submit=false;
	$.ajax({
		type: "get",
		url: "check",
		data: {"rmNo":rmNo, "checkin":checkin, "checkout":checkout},
		dataType: "json",
		async: false,
		success: function(data) {
			var check=data.posible;
			if(data.posible==0){ 
				submit=true;
			}else{
				submit=false;
				var html="이미 예약이 완료된 객실 입니다<br>선택 기간의 예약 가능한 객실 : ";
				var count=1;
				if(data.availableRoomList.length==0){html="이미 예약이 완료된 객실 입니다<br>선택 기간의 예약 가능한 객실이 없습니다."}
				$(data.availableRoomList).each(function(){
					html+=this.rmName;
					if(count!=data.availableRoomList.length){
						html+=", "
					}
					count++;
				});
				$(".rsvMessage").html(html);
				$("#alerttest1").show();
				$("#alerttest2").show();
			}
		},
		error: function() {
			alert("에러코드 = "+xhr.status);
		}
	});
	return submit;
});
</script>
<script type="text/javascript">
	($("#topmenu").children("li")).click(function(){
		$("#rmNoTop").val($(this).attr("id"));
		$("#checkinTop").val($(checkindate).val());
		$("#checkoutTop").val($(checkoutdate).val());
		$("#adultTop").val($("#adult option:selected").val());
		$("#childrenTop").val($("#children option:selected").val());
		$("#mileageTop").val($("#mileage").val());
		$("#room-book-form").submit();
	});
</script>
