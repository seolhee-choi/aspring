<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Lato:300);


#privateuse{
	font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
	color: #555;
}

#privateuse input{
	width: 30px;
	text-align:center;
	font-size: 15px;
}

#privateuse a{
	font-size: 15px;
	color: red;
	cursor: pointer;
}

#sample6_postcode{
	width: 56.2%
}
#sample6_postcode, #sample6_address{
	background: #EAEAEA70;
} 


</style>

<div class="wrapper">
	
	
	
	<!--=== End Header ===-->
	<div class="breadcrumbs breadcrumbs-light">
    <div class="container">
        <h1 class="pull-left">객실 예약</h1>
        <ul class="pull-right breadcrumb">
            <li class="active">객실 예약</li>
            <li><a href="<%=request.getContextPath()%>/book/book_confirm.jsp">예약확인 및 취소</a></li>
            <li><a href="<%=request.getContextPath()%>/book/book_guidance.jsp">이용요금 및 안내</a></li>
            <li><a href="<%=request.getContextPath()%>/book/book_cancel.jsp">취소/환불 규정 안내</a></li>
        </ul>
    </div>
	</div>
	
<!--=== Content Part1 ===-->
<div class="container content">
    <div class="row margin-bottom-20">
        <!-- Comments -->
        <!-- method post면 리프레쉬 때 재전송 경고 나타남 이를 없애려면 get으로 바꿔주기만 하면 됨 -->
        <form id="book-form" class="sky-form" action="<%=request.getContextPath() %>/book/book_search2.jsp" method="post">
            <header class="panel-heading overflow-h">
                <h3 class="panel-title heading-sm pull-left">
                    
                    기간(03/26~03/28 : 2박)
                </h3>
                <button type="button" class="btn-u btn-brd rounded btn-u-default btn-u-xs pull-right accordion-toggle" data-toggle="collapse" href="#collapse-search-form">
                    날짜변경
                </button>
            </header>
            <div id="collapse-search-form" class="panel-collapse collapse">
                <fieldset>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">입실 날짜</label>
                            <label class="input">
                                <i class="icon-append fa fa-calendar"></i>
                                <input id="checkindate" name="checkindate" placeholder="체크인 날짜 선택" type="text" value="2021-03-26"/>
                            </label>
                            
                        </section>
                        <section class="col col-6">
                            <label class="label">퇴실 날짜</label>
                            <label class="input">
                                <i class="icon-append fa fa-calendar"></i>
                                <input id="checkoutdate" name="checkoutdate" placeholder="체크아웃 날짜 선택" type="text" value="2021-03-28"/>
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
        
        
            <div class="row portfolio-item">
               
                
                <div class="col-md-6">
                    
                        <div class="easy-block-v1">
                            <div class="easy-block-v1-badge">ROOM1 (예약가능)</div>
                            <img alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_main.jpg">
                            <div class="carousel slide carousel-v1" id="myCarousel0">
                                <div class="carousel-inner">
                                </div>
                                
                                <div class="carousel-arrow margin-bottom-10">
                                    <a data-slide="prev" href="#myCarousel0" class="left carousel-control">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a data-slide="next" href="#myCarousel0" class="right carousel-control">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                                
                                <div class="row text-center margin-bottom-30">
                                    <form action="<%=request.getContextPath() %>/book/book_option.jsp" method="post">
                                        <input type="hidden" name="room" value="room1">
                                        <input type="hidden" name="checkindate" value="2021-05-13">
                                        <input type="hidden" name="checkoutdate" value="2021-05-17">
                                        <button class="btn-u btn-brd rounded btn-u-green search-book"><i class="fa fa-calendar"></i> 예약하기</button>
                                  
                                    </form>
                                </div>
                            </div>
                        </div>

                    
                
                    
                    <!-- 
                        <div class="easy-block-book">
                            <div class="easy-bg-book rgba-book">예약완료</div>
                            <img alt="" src="resources/assets/img/aspring/room1/aspring_room1_main.jpg">
                            <div class="row text-center">
                                <h5 class="color-grey">ROOM1 (예약완료)</h5>
                            </div>
                        </div>
                    
                     -->
                </div>
                
                <div class="col-md-6">
                    
                    
                        <div class="easy-block-book">
                            <div class="easy-bg-book rgba-book">예약완료</div>
                            <img alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room2/aspring_room2_main.jpg">
                            <div class="row text-center">
                                <h5 class="color-grey">ROOM2 (예약완료)</h5>
                            </div>
                        </div>
                </div>         
            </div>
        
            <div class="row portfolio-item">
                <div class="col-md-6">
                    
                    
                        <div class="easy-block-book">
                            <div class="easy-bg-book rgba-book">예약완료</div>
                            <img alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room3/aspring_room3_main.jpg">
                            <div class="row text-center">
                                <h5 class="color-grey">ROOM3 (예약완료)</h5>
                            </div>
                        </div>
                    
                    
                </div>
                
                <div class="col-md-6">
                    
                    
                        <div class="easy-block-book">
                            <div class="easy-bg-book rgba-book">예약완료</div>
                            <img alt="" src="${pageContext.request.contextPath }/assets/img/aspring/room4/aspring_room4_main.jpg">
                            <div class="row text-center">
                                <h5 class="color-grey">ROOM4 (예약완료)</h5>
                            </div>
                        </div>
                    
                    
                </div>
                
            </div>
        
    </div><!--/container-->

</div><!--/container-->
<!--=== End Content Part1 ===-->



		<!-- footer -->
		
	</div><!--/wrapper-->
	
	


<!-- ============================================================================================================= -->

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

<!-- ============================================================================================================= -->
