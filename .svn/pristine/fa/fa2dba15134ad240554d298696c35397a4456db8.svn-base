<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
#calendar{
	border: 1px solid #ddd;
	border-collapse: collapse;
	width: 100%
	
}

#calendar td {
	width: 170px; 
	height: 140px;
	text-align: left;
	font-size: 15px;
	font-weight:600;
	border: 1px solid #ddd;
	border-collapse: collapse;
	vertical-align: top;
	padding: 10px;
}

#tbCalendarYM{
	text-align: center;
	font-size: 30px;
	background-color: #72c02c;
	opacity: 0.7;
	color: white;
	height: 60px;
}
.prev1, .next1{
	background-color: #72c02c;	
	opacity: 0.7;
	text-align: center;
	font-size: 30px;
	color: white;
	cursor: pointer;
}
.prev1:hover, .next1:hover{
	opacity: 0.9;
}

.week{
	width: 180px;
	height: 60px;
	text-align: left;
	font-size: 18px;
	font-weight:bold;
	border: 1px solid #ddd;
	border-collapse: collapse;
	padding-left: 10px;
	text-align: center;
	background-color: #FCFCFC;
}
.reservation{
	margin-bottom: 0px;
	font-size: 13px;
	color: #8C8C8C;
	font-weight:normal;
	text-decoration:none;

}

.reservation a{
	font-size: 13px;
	color: #8C8C8C;
	font-weight:normal;
	text-decoration:none;
}
</style>
</head>
<body>
<table id="calendar">
							<tr>
								<th class="prev1" onclick="prevCalendar()">&lt;</th>
								<th align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</th>
								<th class="next1" onclick="nextCalendar()">&gt;</th>
							</tr>
							<tr>
								<th class="week">
									<font color="red">일</font>
								</th>
								<th class="week">월</th>
								<th class="week">화</th>
								<th class="week">수</th>
								<th class="week">목</th>
								<th class="week">금</th>
								<th class="week">
									<font color="blue">토</font>
								</th>
							</tr>
						</table><br><br>
						<script type="text/javascript">
						var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
						var date = new Date();//today의 Date를 세어주는 역할
						
						function prevCalendar() {//이전 달
							// 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
							//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
							//getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
							today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
							buildCalendar(); //달력 cell 만들어 출력 
						}
						
						function nextCalendar() {//다음 달
							// 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
							//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
							//getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
							today = new Date(today.getFullYear(), today.getMonth() + 1, today
									.getDate());
							buildCalendar();//달력 cell 만들어 출력
						}
						
						function buildCalendar() {//현재 달 달력 만들기
							var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
							//이번 달의 첫째 날,
							//new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
							//new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
							//왜냐면 getMonth()는 0~11을 반환하기 때문
							var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
							//이번 달의 마지막 날
							//new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
							//day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
							//대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
							var tbCalendar = document.getElementById("calendar");
							//날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
							var tbCalendarYM = document.getElementById("tbCalendarYM");
							//테이블에 정확한 날짜 찍는 변수
							//innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
							//new를 찍지 않아서 month는 +1을 더해줘야 한다. 
							tbCalendarYM.innerHTML = today.getFullYear() + "년 "
									+ (today.getMonth() + 1) + "월";
						
							/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
							while (tbCalendar.rows.length > 2) {
								//열을 지워줌
								//기본 열 크기는 body 부분에서 2로 고정되어 있다.
								tbCalendar.deleteRow(tbCalendar.rows.length - 1);
								//테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
								//30일 이후로 담을달에 순서대로 열이 계속 이어진다.
							}
							var row = null;
							row = tbCalendar.insertRow();
							//테이블에 새로운 열 삽입//즉, 초기화
							var cnt = 0;// count, 셀의 갯수를 세어주는 역할
							// 1일이 시작되는 칸을 맞추어 줌
							var prev_lastDate=new Date(today.getFullYear(), today.getMonth(), 0);
							var prev_start=(prev_lastDate.getDate())-(doMonth.getDay()-1);
							for (i = 0; i < doMonth.getDay(); i++) {
								/*이번달의 day만큼 돌림*/			
								cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
								cell.innerHTML ="<font color='#CFCFCF'>"+prev_start+"</font>";
								cell.id=today.getFullYear()+"-"+(today.getMonth())+"-"+prev_start;
								prev_start=prev_start+1;
								cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
							}
							/*달력 출력*/
							for (i = 1; i <= lastDate.getDate(); i++) {
								//1일부터 마지막 일까지 돌림
								cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
								cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
								cell.id=today.getFullYear()+"-"+(today.getMonth()+1)+"-"+i;
								cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
								if (cnt % 7 == 1) {/*일요일 계산*/
									//1주일이 7일 이므로 일요일 구하기
									//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
									cell.innerHTML = "<font color=red>" + i +"</font>";
									//1번째의 cell에만 색칠
								}
								if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
									//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
									cell.innerHTML = "<font color=blue>" +i+"</font>";
									//7번째의 cell에만 색칠
									row = calendar.insertRow();
									//토요일 다음에 올 셀을 추가
								}
								/*오늘의 날짜에 노란색 칠하기*/
								if (today.getFullYear() == date.getFullYear()
										&& today.getMonth() == date.getMonth()
										&& i == date.getDate()) {
									//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
									cell.bgColor = "#FFFFE4";//셀의 배경색을 노랑으로
								}		
							}
							
							//이번달 마지막일자 이후에 다음달 일자 회색 글씨로 채워주는 for문
							var next_firstDate=new Date(today.getFullYear(), today.getMonth()+1, 1);
							var next_start=next_firstDate.getDate();
							for(i=lastDate.getDay();i<6;i++ ){
								cell = row.insertCell();
								cell.innerHTML ="<font color='#CFCFCF'>"+next_start+"</font>";
								cell.id=today.getFullYear()+"-"+(today.getMonth()+2)+"-"+next_start;
								next_start=next_start+1;
							}
							
							var sessionId="${sessionScope.loginMember.mId}";
							var sessionStatus="${sessionScope.loginMember.mStatus}";
							
							$.ajax({
								type: "get",
								url: "../calendara",
								dataType: "json",
								success: function(data){
									$(data.rsvList).each(function(){
										var tdate=new Date((this.rsvCheckin).substring(0,10));
										var end=this.rsvDatecount;
										if(this.rsvStatus==1 || this.rsvStatus==2 || this.rsvStatus==4){
											for(var a=1;a<=end;a++){
												var adate=tdate.getFullYear()+"-"+(tdate.getMonth()+1)+"-"+tdate.getDate();
												tdate.setDate(tdate.getDate()+1);
												
												var status="";
												var rsvNo=this.rsvNo;
												if(this.rsvStatus==1){status="입금대기";}
												else if(this.rsvStatus==2){status="입금완료";}
												else if(this.rsvStatus==3){status="예약취소";}
												else if(this.rsvStatus==4){status="환불대기";}
												else{status="환불완료";}
												
												var ht="<br><label class='reservation'>";
												
												if(sessionId==this.mId || sessionStatus==9){
													ht+="<a href='${pageContext.request.contextPath}/rsv/rsvOne?rsvNo="+this.rsvNo+"'>";
												}
												
												ht+=this.room.rmName+"/";
												ht+=status+"/";
												ht+=this.member.mName; 
												
												if(sessionId==this.mId || sessionStatus==9){
													ht+="</a>";
												}
												ht+="</label>";
												
												$('#'+adate).append(ht);
											}
										}
									});
								},
								error: function(xhr) {
									alert("에러코드="+xhr.status);
								}
								
							});
							
						}
						
						
						buildCalendar();
						</script>
						<!-- 달력 END -->
</body>
</html>