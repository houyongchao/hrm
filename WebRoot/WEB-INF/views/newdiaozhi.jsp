<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  	 <link rel="stylesheet" type="text/css" href="${ basePath}/static/css/bootstrap.min.css" />
    <title>添加新的调职人员</title>
    <style type="text/css">
    	input {
    		height:25px;
    	}
    </style>
</head>
<body>
	<div class="container" style="margin-top:20px; background-color:#fff;">
		<div class="row">
			<div class="span12"  >
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/transfer/save">	
					<div class="control-group">
					  <label class="control-label">职员</label>
					  <div class="controls">
						<!---调职的人名从职员表中读取出来 -->
						<select name="names">
							<c:forEach items="${wlist}" var="wl">
							  <option value="${wl.names}">${wl.names}</option>
						  </c:forEach>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">调前部门</label>
					  <div class="controls">
						<select name="beforedepart">
						<c:forEach items="${departlist }" var="bumen">
							  <option value="${bumen.names}">${bumen.names}</option>
						</c:forEach>
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">调动日期</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="transferdate"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">调后部门</label>
					  <div class="controls">
					  	<select name="afterdepart">
						<c:forEach items="${departlist }" var="bumen">
							  <option value="${bumen.names }">${bumen.names}</option>
						</c:forEach>
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">推荐人</label>
					  <div class="controls">
						<input type="text" name="approver"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">调动原因</label>
					  <div class="controls">
						<textarea rows="3" name="reason"></textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href="${basePath}/transfer/showAlldiaozhi">返回</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
