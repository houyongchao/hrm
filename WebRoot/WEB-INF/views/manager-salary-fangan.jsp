<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>salary-fangan</title>
  </head>
  <style type="text/css">
  	th{
  		height:35px;
  	}
  	
  
  </style>
  <body>
    <div class="container">
		<div class="row">
			<div class="span3 well">
				<div class="tabbable">
					<table class="nav nav-tabs table">
						<tr class="active">
							<td><a href="#tab4" data-toggle="tab">销售人员工资计算方案</a></td>
						</tr>
						<tr>
							<td><a href="#tab5" data-toggle="tab">行政人员工资计算方案</a></td>
						</tr>
						<tr>
							<td><a href="#tab6" data-toggle="tab">开发人员工资计算方案</a></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="span8 well">
				<div class="tab-content">
					<div class="tab-pane active" id="tab4">
						<table class="table table-hover table-bordered">
							<thead>
								<tr>
									<th width="20%">项目名称</th>
									<th>计算公式</th>
									<th width="10%">小数位</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>基本工资</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>事假小时</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>事假扣除</td>
									<td>基本工资/21.75/8*事假小时</td>
									<td>0</td>
								</tr>
								<tr>
									<td>绩效标准</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>考核分时</td>
									<td></td>
									<td>2</td>
								</tr>
								<tr>
									<td>绩效工资</td>
									<td>绩效标准*考核分时</td>
									<td>0</td>
								</tr>
								<tr>
									<td>出差天数</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>差补金额</td>
									<td>20*出差天数</td>
									<td>0</td>
								</tr>
								<tr>
									<td>工龄工资</td>
									<td>if([AgeOfWork]=2, 30, (if([AgeOfWork]=3, 50, (if([AgeOfWork]=4, 80, 
										(if([AgeOfWork]=5, 80, (if([AgeOfWork]&ge;6, 100)))))))))
									</td>
									<td>0</td>
								</tr>
								<tr>
									<td>平时加班小时</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>节假日加班小时</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>加班费</td>
									<td>基本工资/21.75/8*平时加班小时*1.5 + 基本工资/21.75/8*节假加班小时*3</td>
									<td>0</td>
								</tr>
								<tr>
									<td>销售额</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>销售目标</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>销售达成率</td>
									<td>销售额/销售目标</td>
									<td>2</td>
								</tr>
								<tr>
									<td>销售提成</td>
									<td>if(销售达成率&lt;0.8, 销售额*0.023, if(销售达成率&ge;1, 销售额*0.03, if(销售达成率&ge;0.8, 销售额*0.025))) </td>
									<td>0</td>
								</tr>
								<tr>
									<td>工资合计</td>
									<td>基本工资-事假扣除+绩效工资+差补金额+工龄工资+加班费+销售提成</td>
									<td>0</td>
								</tr>
								<tr>
									<td>代扣个税</td>
									<td style="height:50px;width:100px;">if(应纳税额&ge;80000, 0.45*应纳税额-13505, 
										(if(应纳税额&ge;55000, 0.35*应纳税额-5505, 
										if(应纳税额&ge;35000, 0.3*应纳税额-2755, 
										if(应纳税额&ge;9000, 0.25*应纳税额-1005, 
										if(应纳税额&ge;4500, 0.2*应纳税额-555, 
										if(应纳税额&ge;1500, 0.1*应纳税额-105, 
										if(应纳税额&ge;0, 0.03*应纳税额-0, 0))))))))
									</td>
									<td>2</td>
								</tr>
								<tr>
									<td>合计应发</td>
									<td>工资合计-代扣个税</td>
									<td>2</td>
								</tr>
							</tbody>
						
						</table>
					
					</div>
					<div class="tab-pane" id="tab5">
						<table class="table table-hover table-bordered">
							<thead>
								<tr>
									<th width="20%" height="30px">项目名称</th>
									<th height="30px">计算公式</th>
									<th width="10%" height="30px">小数位</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>基本工资</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>事假小时</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>事假扣除</td>
									<td>基本工资/21.75/8*事假小时</td>
									<td>0</td>
								</tr>
								<tr>
									<td>绩效标准</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>考核分时</td>
									<td></td>
									<td>2</td>
								</tr>
								<tr>
									<td>绩效工资</td>
									<td>绩效标准*考核分时</td>
									<td>0</td>
								</tr>
								<tr>
									<td>出差天数</td>
									<td></td>
									<td>0</td>
								</tr>
								<tr>
									<td>差补金额</td>
									<td>20*出差天数</td>
									<td>0</td>
								</tr>
								<tr>
									<td>工龄工资</td>
									<td>if([AgeOfWork]=2, 30, (if([AgeOfWork]=3, 50, (if([AgeOfWork]=4, 80, 
										(if([AgeOfWork]=5, 80, (if([AgeOfWork]&ge;6, 100, 0)))))))))
									</td>
									<td>0</td>
								</tr>
								<tr>
									<td>工资合计</td>
									<td>基本工资-事假扣除+绩效工资+差补金额+工龄工资</td>
									<td>0</td>
								</tr>
								<tr>
									<td>代扣个税</td>
									<td style="width:100px;height:50px;">if(应纳税额&ge;80000, 0.45*应纳税额-13505, 
										(if(应纳税额&ge;55000, 0.35*应纳税额-5505, 
										if(应纳税额&ge;35000, 0.3*应纳税额-2755, 
										if(应纳税额&ge;9000, 0.25*应纳税额-1005, 
										if(应纳税额&ge;4500, 0.2*应纳税额-555, 
										if(应纳税额&ge;1500, 0.1*应纳税额-105, 
										if(应纳税额&ge;0, 0.03*应纳税额-0, 0))))))))</td>
									<td>2</td>
								</tr>
								<tr>
									<td>合计应发</td>
									<td>工资合计-代扣个税</td>
									<td>2</td>
								</tr>
							</tbody>
								
							</table>
					
					</div>
					<div class="tab-pane" id="tab6">
						<h3>参照行政人员工资计算方案</h3>
						
					</div>
				</div>
			
			
			</div>
		
		</div>
	
	
	</div>
  </body>
</html>
