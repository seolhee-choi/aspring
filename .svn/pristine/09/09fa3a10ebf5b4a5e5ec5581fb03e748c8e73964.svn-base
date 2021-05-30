<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Lato:300);

.login {
	width: 80%;
	padding: 60px 0 0;
	margin: auto;
}

.form2 {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 100%; 
	margin: 0 auto 140px;
	padding: 60px;
	padding-top: 20px;
	text-align: center;
	/* box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24); */
	/* border: 1px solid #ddd; */
	border-top: 2px solid #72c02c;
	border-bottom: 2px solid #687074;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
}

.form2 input,textarea {
	font-family: "Lato", sans-serif;
	/* font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif; */
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 72%;
	border: 1px solid #bbb;
	margin: 0 0 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 15px;
}
#join_label{
	font-family: "Lato", sans-serif;
	/* font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif; */
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 72%;
	border: 1px solid #bbb;
	margin: 0 0 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 15px;
}


.form2 button {
	font-family: "Lato", sans-serif;
	text-transform: uppercase;
	outline: 0;
	opacity: 0.8;
	background: #72c02c;
	width: 20%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form2 button:hover, .form button:active, .form button:focus {
	opacity: 1;
}
.form2 #btn:hover, .form #btn:active, .form #btn:focus {
	opacity: 1;
}

.form2 .alternate {
	margin: 20px 0 0;
	font-size: 16px;
}

.form2 .alternate a {
	color: #687074;
	/* text-decoration: underline; */
}

.join_label{
	font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
	text-align: left;
	/* font-size: 15px; */
	width: 17%
}

.form2 h3{
	text-align: center;
}
</style>
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
                        
                        <div class="container content">
							<div class="login">
								<div class="form2">
									<h3>객실정보변경</h3><br><br><br>
									<form name="modifyForm" class="login-form" method="post" enctype="multipart/form-data">	
									
											<input type="hidden" name="rmNo" value="${room.rmNo}"/>
											
										
											<label id="join_lable"class="join_label">객실이름&nbsp;</label>
											<input type="text" name="rmName" id="rmName" value="${room.rmName}"/><br>
											
										
											<label class="join_label">객실사진&nbsp;</label>
											<input type="file" name="file" id="file"/><br>
										
										
											<label id="join_lable" class="join_label" >객실상세설명&nbsp;</label>
											<textarea cols="30" rows="5" name="rmContent" id="rmContent">${room.rmContent}</textarea><br>
										
									
						
									<div style="text-align: center">
									<button type="button" onclick="modifyRoom();" id="modifyBtn">변경</button>&nbsp;&nbsp;
									<button type="button" onclick="location.href='${pageContext.request.contextPath }/admin/room';">취소</button>
									</div>	
									</form>
								</div>
							</div>
						</div>
                        
                        
                        
                    <script type="text/javascript">
                    function modifyRoom() {
						if(modifyForm.rmName.value==""){
							alert("객실 이름을 입력해주세요.");
							return;
						}
						if(modifyForm.file.value==""){
							alert("객실 사진을 등록해주세요.");
							return;
						}
						if(modifyForm.rmContent.value==""){
							alert("객실 설명을 입력해주세요.");
							return;
						}
						modifyForm.action = "${pageContext.request.contextPath}/admin/roomModify";
						modifyForm.submit();
					}
                    
                    </script>    
                        
                    </div>
                    </main>
                    
    

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath }/admin/src/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    </body>
    
</html>