<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.join_label{
	font: 15px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
	text-align: left;
	/* font-size: 15px; */
	width: 17%
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

.form2 input {
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

.form2 #phone_1, #phone_2, #phone_3 {
	font-family: "Lato", sans-serif;
	outline: 0;
	/*     background: #e7e4e4; */
	background: white;
	width: 23.8%;
	border: 1px solid #bbb;
	margin: 0 0 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 14px;
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
.form2 h3{
	text-align: center;
}
#sample6_postcode{
	width: 56.2%
}
#sample6_postcode, #sample6_address{
	background: #EAEAEA70;
} 

.form2 #btn {
	font-family: "Lato", sans-serif;
	background: white;
	width: 15%;
}
hr{
	border-color: #ddd;
}
</style>
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">회원등록</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/test1">관리자 메인</a></li>
                        <li class="breadcrumb-item active">회원등록
                        <a href="admin_memberlist.html" style="position: relative; left: 1150px;">회원목록</a></li>
                    </ol>
                    
                  <!--   <div class="card mb-4">
                        <div class="card-body">
                            DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the
                            <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                            .
                        </div>
                    </div> -->
                    <div class="card mb-4">
                         	
	<!-- JoinForm start -->
	<div class="container content">
		<div class="login">
			<div class="form2">
				<h3>회원등록</h3><br><br><br>
				<form class="login-form">	
					<label class="join_label">아이디&nbsp;<img src="resources/images/aaa.gif"></label> 
					<input type="text" placeholder="ID" /><br>
					
					<label class="join_label">비밀번호&nbsp;<img src="resources/images/aaa.gif"></label>
					<input type="password" placeholder="PASSWORD" /><br>
					
					<label class="join_label">비밀번호 확인&nbsp;<img src="resources/images/aaa.gif"></label> 
					<input type="password" placeholder="PASSWORD CHECK" /><br>
	
					<hr>	
					
					<label class="join_label">이름&nbsp;<img src="resources/images/aaa.gif"></label>
					<input type="text" placeholder="NAME" /><br>
					
					<label class="join_label">전화번호&nbsp;<img src="resources/images/aaa.gif"></label>
					<select id="phone_1">
						<option>010</option>
						<option>011</option>
					</select>
					<input type="text" id="phone_2" placeholder="PHONE" />
					<input type="text" id="phone_3" placeholder="PHONE" /><br>
					
					<label class="join_label">이메일&nbsp;<img src="resources/images/aaa.gif"></label> 
					<input type="email" placeholder="E-MAIL" /><br>
					
					<!-- <label class="join_label">생년월일</label>
					<input type="text" placeholder="BIRTHDAY" /><br>
					<hr>
					<label class="join_label">주소</label><input type="text" id="sample6_postcode" placeholder="우편번호" readonly="readonly">&nbsp;
					<input type="button" id="btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<label class="join_label"></label><input type="text" id="sample6_address" placeholder="주소" readonly="readonly"><br>
					<input type="hidden" id="sample6_extraAddress" placeholder=""><br>
					<label class="join_label"></label><input type="text" id="sample6_detailAddress" placeholder="상세주소"><br>
					
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
					    function sample6_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
					                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					                var addr = ''; // 주소 변수
					                var extraAddr = ''; // 참고항목 변수
					
					                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					                    addr = data.roadAddress;
					                } else { // 사용자가 지번 주소를 선택했을 경우(J)
					                    addr = data.jibunAddress;
					                }
					
					                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					                if(data.userSelectedType === 'R'){
					                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
					                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있고, 공동주택일 경우 추가한다.
					                    if(data.buildingName !== '' && data.apartment === 'Y'){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					                    if(extraAddr !== ''){
					                        extraAddr = ' (' + extraAddr + ')';
					                    }
					                    // 조합된 참고항목을 해당 필드에 넣는다.
					                    document.getElementById("sample6_address").value = extraAddr;
					                
					                } else {
					                    document.getElementById("sample6_address").value = '';
					                }
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('sample6_postcode').value = data.zonecode;
					                document.getElementById("sample6_address").value = addr;
					                document.getElementById("sample6_address").value += extraAddr;
					                // 커서를 상세주소 필드로 이동한다.
					                document.getElementById("sample6_detailAddress").focus();
					            }
					        }).open();
					    }
					</script> -->
					<br>
					<!-- <br><br><br> --><hr>
					<div style="text-align: center">
					<button>등록</button>&nbsp;&nbsp;<button>취소</button>
					<!-- <p class="alternate">
						<a href="#">회원가입</a>&nbsp;/&nbsp;<a href="#">ID/PW 찾기</a>
					</p> -->
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- JoinForm end -->
                    </div>
                    </div>
                </main>
          <!--       
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
         -->
</body>
</html>
