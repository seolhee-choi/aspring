<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
table a:link {
	color: #666;
	font-weight: bold;
	text-decoration:none;
}
table a:visited {
	color: #999999;
	font-weight:bold;
	text-decoration:none;
}
table a:active,
table a:hover {
	color: #bd5a35;
	text-decoration:underline;
}
table {
	font-family:Arial, Helvetica, sans-serif;
	color:#666;
	font-size:12px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin:20px;
	border:#ccc 1px solid;
	width:95%;

	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;
}
table th {
	padding:15px;
	border-top:1px solid #fafafa;
	border-bottom:1px solid #e0e0e0;

	background: #ededed;
	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
	background: -moz-linear-gradient(top,  #ededed,  #ebebeb);
}
table th:first-child{
	text-align: left;
	padding-left:20px;
}
table tr:first-child th:first-child{
	-moz-border-radius-topleft:3px;
	-webkit-border-top-left-radius:3px;
	border-top-left-radius:3px;
}
table tr:first-child th:last-child{
	-moz-border-radius-topright:3px;
	-webkit-border-top-right-radius:3px;
	border-top-right-radius:3px;
}
table tr{
	text-align: center;
	padding-left:20px;
}
table tr td:first-child{
	text-align: left;
	padding-left:20px;
	border-left: 0;
}
table tr td {
	padding:12px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 1px solid #e0e0e0;
	
	background: #fafafa;
	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
}
table tr.even td{
	background: #f6f6f6;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
}
table tr:last-child td{
	border-bottom:0;
}
table tr:last-child td:first-child{
	-moz-border-radius-bottomleft:3px;
	-webkit-border-bottom-left-radius:3px;
	border-bottom-left-radius:3px;
}
table tr:last-child td:last-child{
	-moz-border-radius-bottomright:3px;
	-webkit-border-bottom-right-radius:3px;
	border-bottom-right-radius:3px;
}
table tr:hover td{
	background: #f2f2f2;
	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
}
.row{
	padding: 50px !important;
}
.table1{
	width: 900px !important; 
	margin-left: 150px;
}
.first{
	width:70px;
}
</style>
 
         <main>
             <div class="container-fluid">
                 <h1 class="mt-4">매출관리</h1>
                 <ol class="breadcrumb mb-4">
                     <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/test1">관리자메인</a></li>
                     <li class="breadcrumb-item active">매출관리</li>
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
                                 <i class="fas fa-chart-bar mr-1"></i>
                                 Bar Chart Example
                             </div>
                             <div class="card-body"><canvas id="myBarChart" width="100%" height="50"></canvas></div>
                             <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="card mb-4">
                             <div class="card-header">
                                 <i class="fas fa-chart-pie mr-1"></i>
                                 Pie Chart Example
                             </div>
                             <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                             <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                         </div>
                     </div>
                 </div>
             
                    	
    <table class="table1" cellspacing='0'>
	<tr>
		<th class="first">구분</th>
		<th>결제금액</th>
		<th>환불금액</th>
		<th>현재매출</th>
		<th>추가예상매출</th>
		<th>총예상매출</th>
	</tr>
    
	<tr>
		<td>1월</td>
		<td>100%</td>
		<td>Yes</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>
	<tr class='even'>
		<td>2월</td>
		<td>100%</td>
		<td>Yes</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>

	<tr>
		<td>3월</td>
		<td>20%</td>
		<td>No</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>
	<tr class='even'>
		<td>4월</td>
		<td>80%</td>
		<td>No</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>
	
    <tr>
		<td>5월</td>
		<td>100%</td>
		<td>Yes</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>
	<tr class='even'>
		<td>6월</td>
		<td>23%</td>
		<td>yes</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>

	<tr>
		<td></td>
		<td>80%</td>
		<td>No</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
		<td>Vital Task</td>
	</tr>
    
</table>
                    
                    
                    
                    
                    
              </div>
                    
        </main>
        
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath }/admin/dist/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath }/admin/dist/assets/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath }/admin/dist/assets/demo/chart-bar-demo.js"></script>
        <script src="${pageContext.request.contextPath }/admin/dist/assets/demo/chart-pie-demo.js"></script>
    </body>
</html>
