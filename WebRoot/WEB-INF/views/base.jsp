<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="basePath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
	<script type="text/javascript" src="${basePath }/statics/js/jquery.js"></script>
	<script type="text/javascript" src="${basePath }/statics/js/bootstrap-dropdown.js"></script>	
	<script type="text/javascript" src="${basePath }/statics/js/bootstrap.min.js"></script>
	<script type="text/javascript" src = "${basePath }/statics/js/select2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${basePath}/statics/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/statics/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/statics/css/demo.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/statics/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="${basePath}/statics/css/icon.css">
	<script type="text/javascript" src="${basePath }/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="${basePath }/statics/js/jquery.easyui.min.js"></script>
	<style type="text/css">
		.navbar-inner{	 		
			height:50px;		
		}
		div .container{
			padding-top:4px;
			
		}
		.row{
			margin-top:20px;
		}
		div .navbar-inner{
			background-color:#106792;
		}
	</style>
  </head>
  
  <body>
   <div class="navbar navbar-fixed-top" style="background-color:#000;">
		<div class="navbar-inner" style="background-color:#106792;">
			<div class="container" >
				<a href="${basePath }/manager/home" class="brand" style="color:white; font-size:25px;">HRM</a>
				<ul class="nav pull-right">
					<li>								
						<a  href="#" style="font-size:20px; color:white;"><shiro:principal/></a>							
					</li>
					<li>								
					<a  href="${basePath }/loginout" style="font-size:20px; color:white;">安全退出</a>									
					</li>
					<li >								
					<a  href="${basePath }/manager/home" style="font-size:20px; color:white;" >首页</a>									
					</li>
				</ul>
				
			</div>
		</div>
	</div>	
  </body>
</html>
