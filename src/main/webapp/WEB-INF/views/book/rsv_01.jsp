<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">

</script>

<div class="wrapper">
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">객실 예약</h1>
        <ul class="pull-right breadcrumb">
            <li class="active">객실 예약</li>
            <li><a href="${pageContext.request.contextPath}/rsv/myRsvList">예약확인 및 취소</a></li>
            <li><a href="${pageContext.request.contextPath}/rsvtest3">이용요금 및 안내</a></li>
            <li><a href="${pageContext.request.contextPath}/rsvtest1">취소/환불 규정 안내</a></li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<div>
<%-- 로그인아이디 : ${sessionScope.testMember.mId }${sessionScope.loginMember.mId }<br> --%>
<%-- <a href="${pageContext.request.contextPath}/rsv/testL">테스트 qwe123 로그인</a><br>
<a href="${pageContext.request.contextPath}/rsv/testL2">로그아웃</a> --%>
</div>
<!--=== Content Part1 ===-->
<div class="container content">
    <div class="row">
        <form id="book-form1" class="sky-form" action="${pageContext.request.contextPath}/rsv/stepTwo" method="post">
            <header class="panel-heading overflow-h">
                <h2 class="panel-title heading-sm pull-left"><i class="icon-line icon-magnifier"></i>객실 조회</h2>
            </header>
            <fieldset>
                <div class="row">
                    <section class="col col-6">
                        <label class="label">입실 날짜</label>
                        <label class="input">
                            <i class="icon-append fa fa-calendar"></i>
                            <input id="checkindate" name="checkin" placeholder="체크인 날짜 선택" type="text" value=""/>
                        </label>
                        
                    </section>
                    <section class="col col-6">
                        <label class="label">퇴실 날짜</label>
                        <label class="input">
                            <i class="icon-append fa fa-calendar"></i>
                            <input id="checkoutdate" name="checkout" placeholder="체크아웃 날짜 선택" type="text" value=""/>
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
