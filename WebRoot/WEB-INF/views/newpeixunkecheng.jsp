<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>添加新的培训课程</title>
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
				<form class="bs-docs-example form-horizontal" style="padding-left:150px;" method="post" action="${basePath}/peixunkecheng/save">
					<div class="control-group">
					  <label class="control-label">课程名</label>
					  <div class="controls">
						<input type="text" name="kechengname">
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">培训对象</label>
					  <div class="controls">
						<!---考核的人名从职员表中读取出来 -->
						<select name="names">
							<c:forEach items="${wlist}" var="wl">
							  <option value="${wl.names}">${wl.names}</option>
						  </c:forEach>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">培训机构电话</label>
					  <div class="controls">
						<select name="contactemail">
							<c:forEach items="${tglist}" var="tg">
							  <option value="${tg.contactemail}">${tg.contactemail}</option>
						  </c:forEach>						  
						</select>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">课程类别</label>
					  <div class="controls">
						<select name="category">
						  <option value="营销类">营销类</option>
						  <option value="管理类">管理类</option>
						  <option value="生产类">生产类</option>						  
						</select>
					  </div>
					</div>					
					<div class="control-group">
					  <label class="control-label">开始时间</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="begindate"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">结束时间</label>
					  <div class="controls">
						<input id="d422" class="Wdate" type="text" onclick="WdatePicker()" name="enddate"/>
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label">课时</label>
					  <div class="controls">
						<input type="text" name="keshi">
					  </div>
					</div>					
					<div class="control-group">
					  <label class="control-label">备注</label>
					  <div class="controls">
						<textarea rows="3" name="beizhu" ></textarea>
					  </div>
					</div>
					<div class="form-actions">
					  <button class="btn btn-primary" type="submit">保存</button>
					  <a class="btn" type="button" href=" ${basePath}/peixunkecheng/showAllkecheng">返回</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
