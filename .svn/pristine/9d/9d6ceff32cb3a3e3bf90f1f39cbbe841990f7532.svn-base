<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="wrapper">
	<!--=== Header ===-->
	<!--=== Breadcrumbs ===-->
	<div class="breadcrumbs">
		<div class="container">
			<h1 class="pull-left">객실 예약</h1>
			<ul class="pull-right breadcrumb">
				<li class="active">객실 예약</li>
				<li><a href="${pageContext.request.contextPath}/rsv/myRsvList">예약확인 및 취소</a></li>
				<li><a href="/book/guidance">이용요금 및 안내</a></li>
				<li><a href="/book/rule/cancel">취소/환불 규정 안내</a></li>
			</ul>
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
	
	<div class="container content">

		<div class="row margin-bottom-20">
			<form id="book-form" class="sky-form" action="${pageContext.request.contextPath}/rsv/stepTwo" method="post">
				<header class="panel-heading overflow-h">
					<h3 class="panel-title heading-sm pull-left">기간(${reservationTwo.checkin} ~ ${reservationTwo.checkout})</h3>
					<button type="button" class="btn-u btn-brd rounded btn-u-default btn-u-xs pull-right accordion-toggle" data-toggle="collapse" href="#collapse-search-form">날짜변경</button>
					<div class="pull-right">&nbsp;</div>
					<button type="button" class="btn-u btn-brd rounded btn-u-default btn-u-xs pull-right" data-toggle="modal" data-target="#rsvCheck" type="button">
						<span class="">예약현황</span>
					</button>&nbsp;&nbsp;&nbsp;
				</header>
				<div id="collapse-search-form" class="panel-collapse collapse">
					<fieldset>
						<div class="row">
							<section class="col col-6">
								<label class="label">입실 날짜</label> <label class="input"> <i class="icon-append fa fa-calendar"></i> <input id="checkindate" name="checkin" placeholder="체크인 날짜 선택" type="text" value="${reservationTwo.checkin}" />
								</label>

							</section>
							<section class="col col-6">
								<label class="label">퇴실 날짜</label> <label class="input"> <i class="icon-append fa fa-calendar"></i> <input id="checkoutdate" name="checkout" placeholder="체크아웃 날짜 선택" type="text" value="${reservationTwo.checkout}" />
								</label>

							</section>
						</div>
					</fieldset>

					<footer>
						<button type="submit" name="submit" class="button pull-right">조회</button>
					</footer>
				</div>
			</form>
			<!-- End Comments-->
		</div>

		

		<div class="row">
		<c:set var="count" value="1"/>
		<c:forEach var="room" items="${roomList }">
			<c:if test="${count%2==1}">
				<div class="row portfolio-item">
			</c:if>
			
			<c:if test="${room.rmCheck!=0}">
			<div class="col-md-6">
					<div class="easy-block-book">
						<div class="easy-bg-book rgba-book">예약완료</div>
						<img alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room2/aspring_room2_main.jpg">
						<div class="row text-center">
							<h5 class="color-grey">${room.rmName} (예약완료)</h5>
						</div>
					</div>
				</div>
			</c:if>
			<c:if test="${room.rmCheck==0}">
			<div class="col-md-6">
					<div class="easy-block-v1">
						<div class="easy-block-v1-badge">${room.rmName} (예약가능)</div>
						<div class="carousel slide carousel-v1" id="myCarousel${room.rmNo}">
							<div class="carousel-inner">
								<div class="item active">
									<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room4/aspring_room4_main.jpg">
								</div>
								<div class="item">
									<img class="" alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room4/aspring_room4_inside1.jpg">
								</div>
							</div>
							<div class="carousel-arrow margin-bottom-10">
								<a data-slide="prev" href="#myCarousel${room.rmNo}" class="left carousel-control">
									<i class="fa fa-angle-left"></i>
								</a>
								<a data-slide="next" href="#myCarousel${room.rmNo}" class="right carousel-control">
									<i class="fa fa-angle-right"></i>
								</a>
							</div>
							<div class="row text-center margin-bottom-30">
								<%-- <form action="${pageContext.request.contextPath}/reservation3" method="post"> --%>
								<form action="${pageContext.request.contextPath}/rsv/stepThree" method="post">
									<input type="hidden" name="rmNo" value="${room.rmNo}">
									<input type="hidden" name="checkin" value="${reservationTwo.checkin}">
									<input type="hidden" name="checkout" value="${reservationTwo.checkout}">
									<button class="btn-u btn-brd rounded btn-u-green search-book">
										<i class="fa fa-calendar"></i> 예약하기
									</button>
									<a class="btn-u btn-brd rounded btn-u-green" href="/gallery/room/room4">
										<i class="fa fa-picture-o"></i> 상세보기
									</a>
								</form>
							</div>
						</div>
					</div>

				</div>
			</c:if>
			
			<c:if test="${count%2==0 || count==fn:length(roomList)}"></div></c:if>
			<c:set var="count" value="${count+1}"/>
		</c:forEach>
		</div>
		<!--/container-->

	</div>
	<!--/container-->
</div>
<!--/wrapper-->
