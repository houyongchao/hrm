<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>home</title>
	<style type="text/css">
		.well{
			padding-top:5px;
			padding-left:10px;
			padding-right:10px;
			font-size:16px;
		}
		.well span{
			margin-left:45px;
		}
	
	</style>
  </head>
  <body>
   <div class="container">
		<div class="row">
			<div class="span12 well">
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab1" data-toggle="tab">人事管理</a></li>
						<li><a href="#tab2" data-toggle="tab">工作管理</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
							<div class="row">
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<a href="${basePath }/people"><img src="${basePath }/statics/img/people.png" style="height:128px;width:128px;"/></a>
										<span>职员</span>
									</div>
								</div>
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<img src="${basePath }/statics/img/email.png" style="height:128px;width:128px;margin-bottom:0px;"/>
										<a href="${basePath}/zhaopin/showAllzhaopin" style="font-size:14px;  height:12px;"><span style="color:black; ">招聘项目</span></a>
										<a href="${basePath}/mianshi/showAllmianshi" style="font-size:14px; height:12px;"><span style="color:black; ">面试记录</span>	</a>
									</div>
								</div>
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<a href="${basePath}/transfer/showAlldiaozhi"><img src="${basePath }/statics/img/arrow.png" style="height:128px;width:128px;"/></a>
										<span>调离</span>
									</div>
								</div>
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<a href="${basePath }/lizhi/showall"><img src="${basePath }/statics/img/exit.png" style="height:128px;width:128px;"/></a>
										<span>离职</span>
									</div>
								</div>
							</div>
							<div class="row">
								
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<a href="${basePath}/rewards/showAlljiangfa"><img src="${basePath }/statics/img/money.png" style="height:128px;width:128px;"/></a>
										<span>奖惩</span>
									</div>
								</div>
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<a href="${basePath}/kaohe/showAllkaohe"><img src="${basePath }/statics/img/spellcheck.png" style="height:128px;width:128px;"/></a>
										<span>考核</span>
									</div>
								</div>
								<div class="span3">
									<div class="well" style="width:128px;height:140px;">
										<a href="${basePath}/vacation/showAllVacation"><img src="${basePath }/statics/img/calendar.png" style="height:128px;width:128px;"/></a>
										<span>休假</span>
									</div>
								</div>
								<div class="span3">
									<div class="well" style="width:128px;height:140px;" class="container">
										<a href="#"><img src="${basePath }/statics/img/wordpress.png" style="height:128px;width:128px;"/></a>
											<a href="${basePath}/peixunkecheng/showAllkecheng" style="font-size:12px;"><span style="color:black; ">培训课程</span></a>
											<a href="${basePath}/peixunjigou/showAlljigou" style="font-size:12px;"><span style="color:black; ">培训公司</span></a>		
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab2">
						  <div class="row">
							<div class="span3">
								<div class="well" style="width:128px;height:140px;">
									<a href="${basePath }/manager/salary"><img src="${basePath }/statics/img/excel.png" style="height:128px;width:128px;"/></a>
									<span style="margin-left:35px;">工资表</span>
								</div>
							</div>
							<div class="span3">
								<div class="well" style="width:128px;height:140px;">
									<a href="${basePath }/manager/salaryfangan"><img src="${basePath }/statics/img/money_calculator.png" style="height:128px;width:128px;"/></a>
									<span style="margin-left:15px;">工资计算方案</span>
								</div>
							</div>
							<div class="span3">
								<div class="well" style="width:128px;height:140px;">
									<a href="${basePath }/manager/departsalary"><img src="${basePath }/statics/img/money-stats.png" style="height:128px;width:128px;"/></a>
									<span style="margin-left:15px;">部门工资统计</span>
								</div>
							</div>
						  </div>
						</div>
						
					</div>
				</div>
			
			</div>
		</div>
	
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#c").click(function(){
			
				$(".dropdown-toggle").dropdown();
			});
		});
	</script>
  </body>
</html>
