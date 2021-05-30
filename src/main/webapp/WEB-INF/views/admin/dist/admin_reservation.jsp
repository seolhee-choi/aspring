<%@page import="org.springframework.ui.Model"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.btns{
	background: #e9ecef;
	font-weight: bold;
	font-size: 15px;
}

.abcabc{
	cursor: pointer;
}
</style>

<link href="${pageContext.request.contextPath }/admin/dist/css/styles.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
			<fmt:formatDate var="now" value="<%=new Date() %>" pattern="yyyy-MM-dd HH:mm:ss"/>
			
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">예약관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/test1">관리자 메인</a>
						</li>
						<li class="breadcrumb-item active">예약목록</li>
					</ol>
					<c:import url="/calendar"/>
					
					
					<!-- 조건 검색 영역  -->
					<div id="abc123"></div>
					<div class="card mb-4">
						<div class="card-header">
						<svg class="svg-inline--fa fa-table fa-w-16 mr-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="table" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
						<path fill="currentColor" d="M464 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zM224 416H64v-96h160v96zm0-160H64v-96h160v96zm224 160H288v-96h160v96zm0-160H288v-96h160v96z"></path></svg>
						조건검색</div>
							
						<div class="card-body">
							<form method="post" name="searchForm">
								<div class="searchTable">
									<table class="table table-bordered" id="searchArea" width="100%" cellspacing="0" style="border-top: none;">
										<tr>
											<th width="200px">예약검색</th>
												<td colspan="5">
												<select name="keyword" >
													<option value="rsv_no" <c:if test="${rsvSearch.keyword=='rsv_no'}">selected="selected"</c:if>>예약번호</option>
													<option value="reservation.m_id" <c:if test="${rsvSearch.keyword=='reservation.m_id'}">selected="selected"</c:if>>예약자ID</option>
													<option value="member.m_name" <c:if test="${rsvSearch.keyword=='member.m_name'}">selected="selected"</c:if>>예약자명</option>
												</select> 
												<input type="text" id="searchInput" name="search" value="${rsvSearch.search }" class="fText" style="width:240px;"></td>
										</tr>
										<tr>
										<th>예약상태</th>
										<td colspan="5">
											<!-- <select id="rsv_status" name="rsv_status">
												<option value="0" selected="selected">입금대기</option>
												<option value="1">입금완료</option>
												<option value="2">예약취소</option>
											</select> -->
											<%-- <c:if test="${rsvSearch.statusList==1}">checked</c:if> --%>
											
											<input type="checkbox" name="statusList" class="statusListClass" value="1" <c:if test="${statusL1!=null }">checked</c:if>>입금대기(1)&nbsp;&nbsp;&nbsp;
											<input type="checkbox" name="statusList" class="statusListClass" value="2" <c:if test="${statusL2!=null }">checked</c:if>>입금완료(2)&nbsp;&nbsp;&nbsp;
											<input type="checkbox" name="statusList" class="statusListClass" value="3" <c:if test="${statusL3!=null }">checked</c:if>>입금전취소(3)&nbsp;&nbsp;&nbsp;
											<input type="checkbox" name="statusList" class="statusListClass" value="4" <c:if test="${statusL4!=null }">checked</c:if>>환불대기(4)&nbsp;&nbsp;&nbsp;
											<input type="checkbox" name="statusList" class="statusListClass" value="5" <c:if test="${statusL5!=null }">checked</c:if>>환불완료(5)&nbsp;&nbsp;&nbsp;<br>
										</td>
										</tr>
										<tr>
											<th>객실</th>
											<td>
												<%-- 
												<input type="checkbox" name="rmList" value="98" <c:if test="${rmL98!=null }">checked</c:if>>ROOMTEST2(98)&nbsp;&nbsp;&nbsp;
												<input type="checkbox" name="rmList" value="99" <c:if test="${rmL99!=null }">checked</c:if>>ROOMTEST(99)&nbsp;&nbsp;&nbsp;
												--%>
												<%-- <li <c:if test="${RL.rmNo==room.rmNo}">class="active"</c:if> id="${RL.rmNo }">${RL.rmName }</li> --%>
												<c:forEach var="RL" items="${roomList }">
													<input type="checkbox" name="rmList" class="rmListClass" id="rmCheck${RL.rmNo}" value="${RL.rmNo }">${RL.rmName }(${RL.rmNo })&nbsp;&nbsp;&nbsp;
												</c:forEach>
											</td>
										</tr>
										<tr style="border-bottom: 1px solid #dee2e6;">
											<th >날짜</th>
												<td colspan="5">
													<select name="datekeyword">
														<option value="rsv_checkin" <c:if test="${rsvSearch.datekeyword=='rsv_checkin'}">selected="selected"</c:if>>체크인날짜</option>
														<option value="rsv_checkout" <c:if test="${rsvSearch.datekeyword=='rsv_checkout'}">selected="selected"</c:if>>체크아웃날짜</option>
														<option value="rsv_payment_date" <c:if test="${rsvSearch.datekeyword=='rsv_payment_date'}">selected="selected"</c:if>>결제완료일</option>
														<option value="rsv_cancel_date" <c:if test="${rsvSearch.datekeyword=='rsv_cancel_date'}">selected="selected"</c:if>>예약취소일</option>
													</select>
													<input type="date" id="rsv_start_date"  name="datesearch1" value="${rsvSearch.datesearch1}"> ~ 
													<input type="date" id="rsv_end_date" name="datesearch2" value="${rsvSearch.datesearch2 }"></td>
										</tr>
										
									</table>	
									<div style="position: relative; left:40%">
									<button type="submit" id="memberSearchBtn" class="btns">검 색</button>
									<button type="button" id="resetBtn" class="btns">초기화</button>
									</div>
								</div>
							</form>
						</div>	
						</div>
					<form id="rsvForm">
					<!-- 예약목록 테이블 -->
					<div class="card mb-4">
						<div class="card-header">
							<svg class="svg-inline--fa fa-table fa-w-16 mr-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="table" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
							<path fill="currentColor" d="M464 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zM224 416H64v-96h160v96zm0-160H64v-96h160v96zm224 160H288v-96h160v96zm0-160H288v-96h160v96z"></path>
							</svg>
							<!-- <i class="fas fa-table mr-1"></i> Font Awesome fontawesome.com -->예약목록</div>
						<div class="card-body">
							<div class="table-responsive"></div>
							<div class="col-sm-12">
								<div class="row">
									<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
										<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" style="text-align: center; width: 100%;" role="grid" aria-describedby="dataTable_info">
											<thead>
												<tr role="row">
													<th>예약번호</th>
													<th data-orderable="false">
														<input type="checkbox" id="checkAll" value="1">
													</th>
													<th>예약자(ID)</th>
													<th>전화번호</th>
													<th>객실이름</th>
													<th>인원</th>
													<th>체크인</th>
													<th>체크아웃</th>
													<th>숙박일</th>
													<th>결제금액</th>
													<th>결제완료일</th>
													<th>예약취소일</th>
													<th>결제상태</th>
													<th>변경</th>
												</tr>
											</thead>
											
											
											<tfoot>
												<tr>
													<th colspan="14">
													<button class="btns float-left" type="button" id="paymentCheckboxBtn">선택 예약 입금완료</button>
													<!-- <button type="button" class="btns float-right">저 장</button> -->
													</th>
												</tr>
											</tfoot>
											
												<%-- <fmt:parseDate var="date1"  value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/> --%>
											<tbody>
												<c:forEach var="rsv" items="${rsvDynamicList }">
												<%-- <fmt:parseDate var="date2"  value="${rsv.rsvCheckout }" pattern="yyyy-MM-dd"/> --%>
												<tr>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${rsv.rsvNo }</td>
													<td>
													<c:if test="${rsv.rsvStatus==1 && (now < rsv.rsvCheckout)}"><input type="checkbox" class="checkbox" id="check" name="checkname" value="${rsv.rsvNo }"></c:if>
													<%-- <c:if test="${rsv.rsvStatus!=1}"><input type="checkbox" class="checkbox" id="check" readonly="readonly"></c:if> --%>
													</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${rsv.member.mName}(${rsv.member.mId})</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${rsv.member.mPhone }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${rsv.room.rmName }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${rsv.rsvPpl }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${fn:substring(rsv.rsvCheckin,0,10) }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${fn:substring(rsv.rsvCheckout,0,10) }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${rsv.rsvDatecount }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'"><fmt:formatNumber value="${rsv.rsvPayment }" type="number"/></td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${fn:substring(rsv.rsvPaymentDate,0,16) }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">${fn:substring(rsv.rsvCancelDate,0,16) }</td>
													<td class="abcabc" onclick="location.href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo=${rsv.rsvNo }'">
													<c:choose>
														<c:when test="${rsv.rsvStatus==1}">입금대기</c:when>
														<c:when test="${rsv.rsvStatus==2}">예약완료</c:when>
														<c:when test="${rsv.rsvStatus==3}">예약취소</c:when>
														<c:when test="${rsv.rsvStatus==4}">환불대기</c:when>
														<c:when test="${rsv.rsvStatus==5}">환불완료</c:when>
													</c:choose>
													</td>
													<td>
													<c:choose>
														<c:when test="${(now >= rsv.rsvCheckout) && rsv.rsvStatus!=4 && rsv.rsvStatus!=1}">
														<font color="red">지난예약</font>
														</c:when>
														<c:otherwise>
															<c:if test="${rsv.rsvStatus==1}">
																<c:if test="${now < rsv.rsvCheckout}">
																	<button type="button" id="paymentBtn" onclick="rsvPayment(${rsv.rsvNo})">입금완료</button>
																</c:if>
																<button type="button" id="cancel1Btn" onclick="rsvCancel1(${rsv.rsvNo})">예약취소</button>
															</c:if>
															<c:if test="${rsv.rsvStatus==2}">
																<button type="button" id="cancel2Btn" onclick="rsvCancel2(${rsv.rsvNo})">환불대기</button>
																<button type="button" id="cancel2Btn" onclick="rsvRefundOk(${rsv.rsvNo})">환불완료</button>
															</c:if>
															<c:if test="${rsv.rsvStatus==4}">
																<button type="button" id="cancel2Btn" onclick="rsvRefundOk(${rsv.rsvNo})">환불완료</button>
															</c:if>
														</c:otherwise>
													</c:choose>
	                                                </td>
												</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					</form>
				</div>
				
	</main>
<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<%-- <script src="${pageContext.request.contextPath }/admin/dist/js/scripts.js"></script> --%>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath }/admin/dist/assets/demo/datatables-demo.js"></script>
<script type="text/javascript">
<c:forEach var="rm" items="${rmL }">
	$("#rmCheck${rm}").prop("checked",true);
</c:forEach>


$("#checkAll").change(function() {  
	if($(this).is(":checked")){     
		$(".checkbox").prop("checked",true);
	}else {
		$(".checkbox").prop("checked",false);
	}
});

$("#resetBtn").click(function(){
	$(".statusListClass").prop("checked",false);
	$(".rmListClass").prop("checked",false);
	$("#searchInput").val("");
	$("#rsv_start_date").val("");
	$("#rsv_end_date").val("");

});


$("#paymentCheckboxBtn").click(function() {
	if($(".checkbox").filter(":checked").size()==0) {
		alert("선택된 예약이 없습니다")
		return;
	}
	if(confirm("정말로 입금완료?")) {
		$("#rsvForm").attr("method","post");
		$("#rsvForm").attr("action","${pageContext.request.contextPath}/admin/rsvPayment");
		$("#rsvForm").submit();
	}
});

function rsvPayment(rsvNo){
	if(confirm("입금완료 상태로 변경하시겠습니까?")) {
		location.href="${pageContext.request.contextPath}/admin/rsvPayment?rsvNo="+rsvNo;
	}
}

function rsvCancel1(rsvNo){
	if(confirm("예약을 취소하시겠습니까?")) {
		location.href="${pageContext.request.contextPath}/rsv/rsvCancel?rsvNo="+rsvNo;
	}
}

function rsvCancel2(rsvNo){
	if(confirm("환불대기 상태로 변경하시겠습니까?")) {
		location.href="${pageContext.request.contextPath}/rsv/rsvCancel2?rsvNo="+rsvNo;
	}
}

function rsvRefundOk(rsvNo){
	if(confirm("환불완료 상태로 변경하시겠습니까?")) {
		location.href="${pageContext.request.contextPath}/admin/rsvRefundOk?rsvNo="+rsvNo;
	}
}

var aaa=document.getElementById("abc123").offsetTop;
window.scrollTo(0, aaa);


</script>
