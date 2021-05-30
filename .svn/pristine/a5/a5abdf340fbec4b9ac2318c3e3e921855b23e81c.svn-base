<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
.btns{
	background: #e9ecef;
	font-weight: bold;
	font-size: 15px;
}
</style>
<%-- <link href="${pageContext.request.contextPath }/admin/dist/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --%>
</head>
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">회원목록</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/test1">관리자 메인</a></li>
                            <li class="breadcrumb-item active">회원목록</li>
                        </ol>
					
					
                  <!-- 조건 검색 영역 -->
                  <div class="card mb-4">
                  	<div class="card-header" style="border: 1px solid rgba(0, 0, 0, 0.125);">
                    <i class="fas fa-table mr-1"></i>조건검색</div>
					
					<div class="card-body">
						<form method="post" name="searchForm">
							<div class="searchTable">
								<table class="table table-bordered" id="searchArea" width="100%" cellspacing="0" style="border-top: none;">
									<tr>
										<th width="200px">회원검색</th>
											<td colspan="5">
											<select name="search_type" >
												<option  selected="selected">이름</option>
												<option >아이디</option>
												<option >전화번호</option>
												<option >이메일</option>
												<option >마일리지</option>
											</select> 
											<input type="text"  class="fText" style="width:240px;"></td>
									</tr>
									<tr>
										<th>회원상태</th>
										<td colspan="5">
											<select id="sales_type" name="sales_type">
												<option value=""  selected="selected">전체</option>
												<option value="0" >일반회원</option>
												<option value="1" >탈퇴회원</option>
												<option value="9" >관리자</option>
											</select></td>
									</tr>
								<!-- 	<tr style="border-bottom: 1px solid #dee2e6;">
										<th>가입일</th>
											<td colspan="5">
												<select id="date_kind" name="date_kind" class="fSelect">
													<option value="join_date">가입일</option>
												</select>
												<input type="date" id="join_start_date"  name="join_start_date" value=""> ~ 
												<input type="date" id="join_end_date" name="join_end_date" value=""></td>
									</tr> -->
								</table>
								<div style="position: relative; left:50%"><button type="button" id="memberSearchBtn" class="btns">검 색</button>
								</div>
							</div>
						</form>
					</div> 
					</div>
					
					<!-- 회원목록 테이블 -->
					<div class="card mb-4">
						<div class="card-header">
							<svg class="svg-inline--fa fa-table fa-w-16 mr-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="table" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
							<path fill="currentColor" d="M464 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zM224 416H64v-96h160v96zm0-160H64v-96h160v96zm224 160H288v-96h160v96zm0-160H288v-96h160v96z"></path></svg>
							<!-- <i class="fas fa-table mr-1"></i> Font Awesome fontawesome.com -->회원목록</div>
							<div class="card-body">
								<div class="table-responsive"></div>
								<div class="col-sm-12">
									<div class="row">
										<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
											 <div class="row">
												<!--  
												<div class="col-sm-12 col-md-6">
													<div class="dataTables_length" id="dataTable_length">
														<label>Show
															<select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
																<option value="10">10</option>
																<option value="25">25</option>
																<option value="50">50</option>
															</select>&nbsp;entries</label>
													</div>
												</div>
												<div class="col-sm-12 col-md-6">
													<div id="dataTable_filter" class="dataTables_filter">
														<label>Search:
															<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable">
														</label>
													</div>
												</div>
											</div> -->
											<div class="row">
												<div class="col-sm-12">
													<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center; width: 100%;" role="grid" aria-describedby="dataTable_info">
														<thead>
															<tr role="row">
																<th class="#" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1">
																	<!-- <input type="checkbox" class="checkBox" id="checkAll" value="1"> -->
																	<input type="checkbox" class="checkAll" id="checkAll" value="1"></th>
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >아이디</th>
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >이름</th>
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >전화번호</th>
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >이메일</th>
																<!-- <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >생년월일</th>
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >주소</th> 
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >가입일</th>-->
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >마일리지</th>
																<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" >회원상태</th>
															</tr>
														</thead>
														<tfoot>
															<tr>
																<th style="white-space: nowrap;" rowspan="1" colspan="1">
																	<button type="button" id="m_remove_btn" class="btns">삭 제</button></th>
																<th rowspan="1" colspan="1">아이디</th>
																<th rowspan="1" colspan="1">이름</th>
																<th rowspan="1" colspan="1">전화번호</th>
																<th rowspan="1" colspan="1">이메일</th>
																<!-- <th rowspan="1" colspan="1">생년월일</th>
																<th rowspan="1" colspan="1">주소</th> -->
																<!-- <th rowspan="1" colspan="1">가입일</th> -->
																<th rowspan="1" colspan="1">마일리지</th>
																<th rowspan="1" colspan="1"><button type="button" class="btns">저 장</button></th>
															</tr>
														</tfoot>
														<tbody>
															<c:forEach var="member" items="${memberList }">
															<tr>
																<td><input type="checkbox" class="checkbox"></td>
																<td>${member.mId }</td>
																<td>${member.mName }</td>
																<td>${member.mPhone }</td>
																<td>${member.mEmail }</td>
																<td>${member.mMileage }</td>
																<td>
																	<select id="m_status" name="m_status">
																		<option value="0" <c:if test="${member.mStatus==0 }">selected="selected"</c:if>>일반회원</option>
																		<option value="1" <c:if test="${member.mStatus==1 }">selected="selected"</c:if>>탈퇴회원</option>
																		<option value="9" <c:if test="${member.mStatus==9 }">selected="selected"</c:if>>관리자</option>
																	</select>
																</td>
															</c:forEach>
															
														
														</tbody>
													</table>
												</div>
											</div>
											<div class="row">
												<!-- 
												<div class="col-sm-12 col-md-5">
													<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 11 entries</div>
												</div>
												<div class="col-sm-12 col-md-7">
													<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
														<ul class="pagination">
															<li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
															</li>
															<li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
															</li>
															<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
															</li>
															<li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">Next</a>
															</li>
														</ul>
													</div>
												</div>
												 -->
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>
					</div>
					</div>
                </main>

            <!-- </div> -->
<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script> -->
		<script type="text/javascript">
		$("#checkAll").change(function() {  
			if($(this).is(":checked")){     
				$(".checkbox").prop("checked",true);
			}else {
				$(".checkbox").prop("checked",false);
			}
		});
		</script>