<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="wrapper">



<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">
            ROOM1 (그레이테마) 예약
        </h1>
        <form id="room-book-form" action="http://www.aspring.co.kr/book/order/main" method="post">
            <input type="hidden" name="room">
            <input type="hidden" name="user">
            <input type="hidden" name="phoneno">
            <input type="hidden" name="checkindate">
            <input type="hidden" name="checkoutdate">
            <input type="hidden" name="adult">
            <input type="hidden" name="children">
            <input type="hidden" name="infant">
            <ul class="pull-right breadcrumb">
                  
            </ul>
        </form>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->



<!-- Small modal target -->

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
                <p><span class="text-primary">객실 모두 이용요금은 동일합니다.</span></p>
            </div>
            <div class="modal-body">
                


    <div class="panel panel-purple margin-bottom-10">
        <div class="panel-heading">
            <h3 class="panel-title">
                <i class="fa fa-edit"></i>
                    이용요금
                
            </h3>
        </div>
        <table class="table table-striped">
            <tbody>
            <tr>
                <th>평일</th>
                <td>￦130,000</td>
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
                <i class="fa fa-edit"></i>
                    성수기
                
                    (21/06/01 ~ 21/07/15)
                
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
                <i class="fa fa-edit"></i>
                    극성수기
                
                    (21/07/16 ~ 21/08/22)
                
            </h3>
        </div>
        <table class="table table-striped">
            <tbody>
            <tr>
                <th>평일</th>
                <td>￦210,000</td>
            </tr>
            <tr>
                <th>주말(금,토)</th>
                <td>￦210,000</td>
            </tr>
            <tr>
                <th>공휴일</th>
                <td>￦210,000</td>
            </tr>
            <tr>
                <th>연휴공휴일</th>
                <td>￦210,000</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="panel panel-brown margin-bottom-10">
        <div class="panel-heading">
            <h3 class="panel-title">
                <i class="fa fa-edit"></i>
                    성수기
                
                    (21/08/23 ~ 21/09/19)
                
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

<!-- End Small Modal target -->

<!--=== Content Part ===-->
<div class="container content">
    
    <div class="row">
        <form id="book-form" class="sky-form" action="###" method="post">
            <input type="hidden" name="search" value="false">
            <input id="room" name="room" type="hidden" value="room1"/>
            <header class="panel-heading overflow-h">
                <h2 class="panel-title heading-sm pull-left"><i class="fa fa-calendar"></i>예약 설정</h2>
                <button type="button" class="btn-u btn-brd rounded btn-u-default btn-u-xs pull-right" data-toggle="modal" data-target="#cancelRule" type="button">
                    <span class="">이용요금</span>
                </button>
            </header>
           <fieldset>
               <div class="row">
                   <div class="col">
                       
                   </div>
               </div>
               <section>
                   <label class="checkbox">
                       <input type="checkbox" name="privateuse" id="privateuse" ><i></i>개인정보 활용동의 (필수)
                       <a class="small" data-toggle="modal" data-target=".bs-book-consent1-sm">내용</a>
                   </label>
                   
                   <label class="checkbox">
                       <input type="checkbox" name="privatecollect" id="privatecollect" ><i></i>개인정보 수집동의 (선택)
                       <a class="small" data-toggle="modal" data-target=".bs-book-consent2-sm">내용</a>
                   </label>
                   
               </section>
                <div class="row">
                    <section class="col col-6">
                        <label class="label">예약자 성함</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-user"></i>
                            <input id="user" name="user" placeholder="예약자분 성함을 입력해 주세요" type="text" value=""/>
                        </label>
                        
                    </section>
                    <section class="col col-6">
                        <label class="label">연락처</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-mobile-phone"></i>
                            <input id="phoneno" name="phoneno" placeholder="연락처를 입력해 주세요" type="text" value=""/>
                        </label>
                        
                    </section>
                </div>
                <div class="row">
                    <section class="col col-6">
                        <label class="label">입실 날짜</label>
                        <label class="input">
                            <i class="icon-append fa fa-calendar"></i>
                            <input id="checkindate" name="checkindate" placeholder="체크인 날짜 선택" type="text" value=""/>
                        </label>
                        
                    </section>
                    <section class="col col-6">
                        <label class="label">퇴실 날짜</label>
                        <label class="input">
                            <i class="icon-append fa fa-calendar"></i>
                            <input id="checkoutdate" name="checkoutdate" placeholder="체크아웃 날짜 선택" type="text" value=""/>
                        </label>
                        
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">성인/청소년(만13세이상)</label>
                        <label class="select">
                            <select id="adult" name="adult">
                                <option value="0" selected="selected">0명</option>
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                                
                            </select>
                            <i></i>
                        </label>
                        
                    </section>
                    <section class="col col-4">
                        <label class="label">소아(13개월부터~만12세이하)</label>
                        <label class="select">
                            <select id="children" name="children">
                                <option value="0" selected="selected">0명</option>
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                
                            </select>
                            <i></i>
                        </label>
                        
                    </section>
                    <section class="col col-4">
                        <label class="label">유아(12개월이하)</label>
                        <label class="select">
                            <select id="infant" name="infant">
                                <option value="0" selected="selected">0명</option>
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                
                            </select>
                            <i></i>
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

    <div class="margin-bottom-10">
		<span id="null.errors">이미 예약이 완료된 객실 입니다.<br>
		해당 기간에는 예약가능한 객실이 없습니다.</span>
    </div>
    

    <div class="row">
        
        <div class="carousel slide carousel-v2" id="portfolio-carousel">
            <div class="easy-block-v1">
                <div class="easy-block-v1-badge"><span class="font-bold">ROOM1 (그레이테마)</span></div>
                <div class="carousel-inner">
                    








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
                <a class="left carousel-control rounded-x" href="#portfolio-carousel" role="button" data-slide="prev">
                    <i class="fa fa-angle-left arrow-prev"></i>
                </a>
                <a class="right carousel-control rounded-x" href="#portfolio-carousel" role="button" data-slide="next">
                    <i class="fa fa-angle-right arrow-next"></i>
                </a>
            </div>
        </div>
    </div>
</div><!--/container-->
<!--=== End Content Part ===-->



</div><!--/wrapper-->
