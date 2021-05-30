<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <style type="text/css">
        
        .room_modify {
      		color:black;
        	text-decoration: none;
        }
        .room_modify:hover{
        	color:black;
        	text-decoration: none;
        }
        
        </style>

                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">객실관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/test1">관리자메인</a></li>
                            <li class="breadcrumb-item active">객실관리</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                Chart.js is a third party plugin that is used to generate the charts in this template. The charts below have been customized - for further customization options, please visit the official
                                <a target="_blank" href="https://www.chartjs.org/docs/latest/">Chart.js documentation</a>
                                .
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        ROOM1
                                    </div>
                                    <img class="card-body" src="${pageContext.request.contextPath }/assets/img/aspring/room1/aspring_room1_inside1.jpg">
                                    <a href="${pageContext.request.contextPath }/admin/roomModify/1" class="room_modify"><div class="card-footer small text-muted" style="text-align: center; font-size: 15px;">객실정보변경</div></a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        ROOM2
                                    </div>
                                    <img class="card-body" src="${pageContext.request.contextPath }/assets/img/aspring/room2/aspring_room2_inside1.jpg">
                                    <a href="${pageContext.request.contextPath }/admin/roomModify/2" class="room_modify"><div class="card-footer small text-muted" style="text-align: center; font-size: 15px;">객실정보변경</div></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        ROOM3
                                    </div>
                                    <img class="card-body" src="${pageContext.request.contextPath }/assets/img/aspring/room3/aspring_room3_inside1.jpg">
                                    <a href="${pageContext.request.contextPath }/admin/roomModify/3" class="room_modify"><div class="card-footer small text-muted" style="text-align: center; font-size: 15px;">객실정보변경</div></a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        ROOM4
                                    </div>
                                    <img class="card-body" src="${pageContext.request.contextPath }/assets/img/aspring/room4/aspring_room4_inside1.jpg">
                                    <a href="${pageContext.request.contextPath }/admin/roomModify/4" class="room_modify"><div class="card-footer small text-muted" style="text-align: center; font-size: 15px;">객실정보변경</div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath }/admin/src/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    </body>
</html>
