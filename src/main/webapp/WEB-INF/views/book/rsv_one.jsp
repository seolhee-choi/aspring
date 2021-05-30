<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<fmt:formatDate var="now" value="<%=new Date() %>" pattern="yyyy-MM-dd HH:mm:ss"/>
<div class="wrapper">

<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">예약상세내역 확인</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        </ul>
    </div>
</div>

<div class="container content">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <h5 class="text-center">
<!--             
                <span class="color-blue">아래 예약 내용을 확인 후 예약완료를 눌러 주세요!</span><br>
                <span class="color-red">"예약완료" 버튼을 눌러야 최종 예약이 완료됩니다.</span>
                 -->
            </h5>
            
            <form id="bookForm" class="sky-form reg-page" action="${pageContext.request.contextPath}/" method="post">
                <div class="reg-header">
                    <h2>예약내역</h2>
                </div>

                <table class="table">
                    <thead>
                    <tr>
                        <th>예약상태</th>
                        <td style="color: red;">
                            <c:if test="${rsvOne.rsvStatus==1}">입금대기</c:if>
                            <c:if test="${rsvOne.rsvStatus==2}">예약완료</c:if>
                            <c:if test="${rsvOne.rsvStatus==3}">예약취소</c:if>
                            <c:if test="${rsvOne.rsvStatus==4}">환불대기</c:if>
                            <c:if test="${rsvOne.rsvStatus==5}">환불완료</c:if>
                        </td>
                    </tr>
                    <tr>
                    	<th>예약일자</th>
                    	<td>${fn:substring(rsvOne.rsvDate,0,16) }</td>
                    </tr>
                    <c:if test="${rsvOne.rsvPaymentDate!=null}">
                    <tr>
                    	<th>입금완료일자</th>
                    	<td>${rsvOne.rsvPaymentDate}</td>
                    </tr>
                    </c:if>
                    <c:if test="${rsvOne.rsvCancelDate!=null}">
                    <tr>
                    	<th>예약취소일자</th>
                    	<td>${fn:substring(rsvOne.rsvCancelDate,0,16) }</td>
                    </tr>
                    </c:if>
                    <tr>
                        <th>예약한객실</th>
                        <td>
                            ${rsvOne.room.rmName } <span class="text-info small"><!-- <strong>(그레이테마)</strong> --></span>
                        </td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>예약기간</th>
                        <td>
                             ${fn:substring(rsvOne.rsvCheckin,0,10) } ~ ${fn:substring(rsvOne.rsvCheckout,0,10)}
                            <br>(${rsvOne.rsvDatecount}박)
                        </td>
                    </tr>
                    <tr>
                        <th>예약자명(아이디)</th>
                        <td>${rsvOne.member.mName }(${rsvOne.member.mId})</td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>${rsvOne.member.mPhone }</td>
                    </tr>
                    <tr>
                        <th>인원수</th>
                        <td>${rsvOne.rsvPpl}명
                        	<c:if test="${rsvOne.rsvPpl > rsvOne.room.rmPpl}"><br>
                        	추가인원 (${rsvOne.rsvPpl-rsvOne.room.rmPpl}명) X 10,000원 X ${rsvOne.rsvDatecount}박
                        	<c:set var="addition" value="${rsvOne.rsvPpl-rsvOne.room.rmPpl}"/>
                        	</c:if>
                        </td>
                    </tr>
                     <tr>
                        <th>마일리지</th>
                        <td>사용 : <fmt:formatNumber value="${rsvOne.rsvMuse }" type="number"/><br>
                        	적립 : <fmt:formatNumber value="${rsvOne.rsvMsave}" type="number"/>  (결제금액의 5% 적립)
                        </td>
                    </tr>
                    <tr>
                        <th>객실료(${rsvOne.rsvDatecount}박)</th>
                        <td><fmt:formatNumber value="${rsvOne.room.rmPrice*rsvOne.rsvDatecount }" type="number"/>원</td>
                    </tr>
                    <tr>
                        
                        
                    </tr>
                    
                    </tbody>
                    <tfoot>
                    <tr>
                        <th>총결제하실금액</th>
                        <td><fmt:formatNumber value="${rsvOne.rsvPayment }" type="number"/>원</td>
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
                                            ${fn:substring(rsvOne.rsvCheckin,0,10) } ~ ${fn:substring(rsvOne.rsvCheckout,0,10) }
                                        </td>
                                        <td>${rsvOne.rsvDatecount }</td>
                                        <td><fmt:formatNumber value="${rsvOne.room.rmPrice*rsvOne.rsvDatecount }" type="number"/></td>
                                        <td><c:if test="${addition==null}">0</c:if>${addition}명(<fmt:formatNumber value="${addition*10000*rsvOne.rsvDatecount}" type="number"/>)</td>
                                        <td><fmt:formatNumber value="${rsvOne.rsvMuse }" type="number"/></td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                            <div class="margin-top-20 margin-bottom-5 text-right">
                                <strong><span class="text-primary">[결제하실금액]</span></strong>&nbsp;&nbsp;
                                <span class="text-info">
                                    <fmt:formatNumber value="${rsvOne.room.rmPrice*rsvOne.rsvDatecount}" type="number"/>
                                    + <fmt:formatNumber value="${addition*10000*rsvOne.rsvDatecount}" type="number"/>
                                    - <fmt:formatNumber value="${rsvOne.rsvMuse }" type="number"/>
                                </span>
                                <strong>
                                <span class="text-success">
                                    = <fmt:formatNumber value="${rsvOne.rsvPayment }" type="number"/>원
                                </span>&nbsp;&nbsp;&nbsp;
                                </strong>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 text-center">
                    	<c:choose>
                    		<c:when test="${rsvOne.rsvStatus==1 && (now < rsvOne.rsvCheckout)}">
                    			<button class="btn-u" type="button" onclick="rsvCancel1(${rsvOne.rsvNo})">예약취소</button>
                    		</c:when>
                    		<c:when test="${rsvOne.rsvStatus==2 && (now < rsvOne.rsvCheckout)}">
                    			<button class="btn-u" type="button" onclick="rsvCancel2(${rsvOne.rsvNo})">환불신청</button>
                    		</c:when>
                    	</c:choose>
                        <!-- <button class="btn-u" type="button">예약취소</button> -->
                        <a href="#" class="btn-u btn-u-blue" onClick="history.back(); return false;">뒤로가기</a>
                    
                    </div>
                </div>
            </form>
        </div>

    </div><!--/row-->
</div>

</div><!--/wrapper-->

<script type="text/javascript">
function rsvCancel1(rsvNo){
	if(confirm("예약을 취소하시겠습니까?")) {
		location.href="${pageContext.request.contextPath}/rsv/rsvCancel?rsvNo="+rsvNo;
	}
}

function rsvCancel2(rsvNo){
	if(confirm("환불신청 하시겠습니까?")) {
		location.href="${pageContext.request.contextPath}/rsv/rsvCancel2?rsvNo="+rsvNo;
	}
}

</script>
