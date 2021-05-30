<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="wrapper">
	<%-- <jsp:include page="<%=request.getContextPath() %>/header.jsp"/> --%>
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">객실 예약</h1>
        <ul class="pull-right breadcrumb">
            <li class="active">객실 예약</li>
            <li><a href="<%=request.getContextPath()%>/book/book_confirm.jsp">예약확인 및 취소</a></li>
            <li><a href="<%=request.getContextPath()%>/book/book_guidance.jsp">이용요금 및 안내</a></li>
            <li><a href="<%=request.getContextPath()%>/book/book_cancel.jsp">취소/환불 규정 안내</a></li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Purchase Block ===-->


<!-- End Purchase Block -->

<!--=== Content Part1 ===-->
<div class="container content">
    <div class="row">
        <!-- Comments -->
        <!-- method post면 리프레쉬 때 재전송 경고 나타남 이를 없애려면 get으로 바꿔주기만 하면 됨 --> 
        <form id="book-form1" class="sky-form" action="<%=request.getContextPath() %>/book/book_search2.jsp" method="post">
            

            <header class="panel-heading overflow-h">
                <h2 class="panel-title heading-sm pull-left"><i class="icon-line icon-magnifier"></i>객실 조회</h2>
            </header>
            <fieldset>      
                    
                
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
            </fieldset>

            <footer>
                <button type="submit" name="submit" class="button pull-right">조회</button>
            </footer>

        </form>
        <!-- End Comments-->
    </div>
</div><!--/container-->
<!--=== End Content Part1 ===-->
</div><!--/wrapper-->

