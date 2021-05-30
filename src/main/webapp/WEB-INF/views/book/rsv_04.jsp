<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="wrapper">

<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">예약내역 확인</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        </ul>
    </div>
</div>

<div class="container content">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <h5 class="text-center">
                <span class="color-blue">아래 예약 내용을 확인 후 예약완료를 눌러 주세요!</span><br>
                <span class="color-red">"예약완료" 버튼을 눌러야 최종 예약이 완료됩니다.</span>
            </h5>
            
            <form id="bookForm" class="sky-form reg-page" action="${pageContext.request.contextPath}/rsv/addRsv" method="post">
            	<input type="hidden" name="rmNo" value="${room.rmNo}">
            	<input type="hidden" name="mId" value="${sessionScope.loginMember.mId}">
            	<input type="hidden" name="rsvPpl" value="${reservationTwo.adult+reservationTwo.children}">
            	<input type="hidden" name="rsvCheckin" value="${reservationTwo.checkinTime}">
            	<input type="hidden" name="rsvCheckout" value="${reservationTwo.checkoutTime}">
            	<input type="hidden" name="rsvDatecount" value="${datecount }">
            	<input type="hidden" name="rsvPayment" value="${payment }">
            	<input type="hidden" name="rsvMuse" value="${reservationTwo.mileage }">
            	<fmt:parseNumber var="msv" value="${(payment/100)*5 }" integerOnly="true" />
            	<input type="hidden" name="rsvMsave" value="${msv }">
                <div class="reg-header">
                    <h2>예약내역</h2>
                </div>

                <table class="table">
                    <thead>
                    <tr>
                        <th>예약한객실</th>
                        <td>
                            ${room.rmName } <span class="text-info small"><!-- <strong>(그레이테마)</strong> --></span>
                        </td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>예약기간</th>
                        <td>
                            ${reservationTwo.checkin }
                            ~
                            ${reservationTwo.checkout }
                            <br>(${datecount }박)
                        </td>
                    </tr>
                    <tr>
                        <th>예약자명</th>
                        <td>${sessionScope.loginMember.mName }</td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>${sessionScope.loginMember.mPhone }</td>
                    </tr>
                    <tr>
                        <th>인원수(${reservationTwo.adult+reservationTwo.children }명)</th>
                        <td>성인/청소년 (${reservationTwo.adult }명)<br>
                        	소아 (${reservationTwo.children }명)
                        	<c:if test="${addition!=0}"><br>
                        	추가인원 (${addition}명) X 10,000원 X ${datecount }박
                        	</c:if>
                        </td>
                    </tr>
                     <tr>
                        <th>마일리지</th>
                        <td>사용 : ${reservationTwo.mileage }<br>
                        	적립 : <fmt:formatNumber value="${msv}" type="number"/>  (결제금액의 5% 적립)
                        </td>
                    </tr>
                    <tr>
                        <th>객실료(${datecount }박)</th>
                        <td><fmt:formatNumber value="${room.rmPrice*datecount }" type="number"/>원</td>
                    </tr>
                    <tr>
                        
                        
                    </tr>
                    
                    </tbody>
                    <tfoot>
                    <tr>
                        <th>총결제하실금액</th>
                        <td><fmt:formatNumber value="${payment }" type="number"/>원</td>
                    </tr>
                    </tfoot>
                </table>
                <!--End Basic Table-->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center margin-bottom-10">
                            <button id="detail-expand" class="btn-block btn-u btn-brd rounded btn-u-default btn-u-xs" type="button">
                                <span>상세내역보기</span> <i class="glyphicon glyphicon-chevron-down"></i>
                            </button>
                        </div>

                        <div id="detail-table" class="panel panel-sea small margin-bottom-20 hidden">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-edit"></i> <span class="initialism">예약 상세내역</span></h3>
                            </div>
                            <table class="table table-striped table-condensed">
                                <thead>
                                <tr>
                                    <th class="text-center">기간</th>
                                    <th class="text-center">숙박일</th>
                                    <th class="text-center">객실료</th>
                                    <th class="text-center">추가인원(요금)</th>
                                    <th class="text-center">마일리지 사용</th>
                                </tr>
                                </thead>
                                <tbody class="text-center">
                                
                                    <tr>
                                        <td>
                                            ${reservationTwo.checkin } ~ ${reservationTwo.checkout }
                                        </td>
                                        <td>${datecount }</td>
                                        <td><fmt:formatNumber value="${room.rmPrice*datecount}" type="number"/></td>
                                        <td>${addition}명(<fmt:formatNumber value="${addition*10000*datecount}" type="number"/>)</td>
                                        <td>${reservationTwo.mileage }</td>
                                        <!-- <td>0</td> -->
                                    </tr>
                                
                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                            <div class="margin-top-20 margin-bottom-5 text-right">
                                <strong><span class="text-primary">[결제하실금액]</span></strong>&nbsp;&nbsp;
                                <span class="text-info">
                                    <fmt:formatNumber value="${room.rmPrice*datecount}" type="number"/>
                                    + <fmt:formatNumber value="${addition*10000*datecount}" type="number"/>
                                    - ${reservationTwo.mileage }
                                </span>
                                <strong>
                                <span class="text-success">
                                    = <fmt:formatNumber value="${payment }" type="number"/>원
                                </span>&nbsp;&nbsp;&nbsp;
                                </strong>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 text-center">
                        <button class="btn-u" type="submit">예약완료</button>
                        <a href="#" class="btn-u btn-u-blue" onClick="history.back(); return false;">예약수정</a>
                    
                    </div>
                </div>
            </form>
        </div>

    </div><!--/row-->
</div>

</div><!--/wrapper-->
