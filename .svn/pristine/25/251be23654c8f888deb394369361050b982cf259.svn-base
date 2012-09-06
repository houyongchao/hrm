<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	
	
	<style type="text/css">
		body{
			background: url('img/bg.png') repeat scroll 0% 0% #454545;
			padding-top: 120px;
		}
		.well{
			width: 400px;
			border-radius: 0px 0px 5px 5px;
			margin: 0px auto;
			padding:0px;
			border:none;
		}
		.well .box_head{
			background-color: #000;
			font-size: 18px;
			color: #FFF;
			padding:10px 17px;

		}
	</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="well">
				<div class="box_head">
					<img src="${basePath }/statics/img/logo.png" alt="">
				</div>
				<div class="login_form">

					<form action="${basePath }/login" method="post" style="padding:17px;">
						<c:if test="${param.code == '10000' }">
							<div class="alert alert-error">
							  <a class="close" data-dismiss="alert" href="#">×</a>
							  用户名或密码错误
							</div>
						</c:if>
						<label>用户名</label>
						<div class="input-prepend">
			                <span class="add-on"><i class="icon-user"></i></span><input class="span11" type="text" name="username"/>
			            </div>
			            <label>密码</label>
						<div class="input-prepend">
			                <span class="add-on"><i class="icon-lock"></i></span><input class="span11" type="password" name="password"/>
			            </div>
						<div class="input-prepend">
			                <input type="checkbox"/>记住用户名
			            </div>
			            <div style="margin-top:10px;position: relative">
			            	<button type="submit" class="btn btn-primary"><i class="icon-signin"></i>&nbsp;进入系统</button>
			            </div>
					</form>

				</div>

			</div>

		</div>

	</div>
	
</body>
</html>