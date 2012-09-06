<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'depart-salarystatis.jsp' starting page</title>
	<style type="text/css">
		.tu{
			margin-left:50px;
		}
	
	</style>
  </head>
  <body>
   <div class="container">
		<div class="row">
			<div class="span3 well">
				<div class="tabbable">
					<table class="nav nav-tabs table">
						<tr>
							<th>部门工资统计图</th>
						</tr>
						<tr>
							<td>
								<span>月份：</span>
								<select name="yuefen" id="input01" style="width:100px">
									<option value="1">1月份</option>
									<option value="2">2月份</option>
									<option value="3">3月份</option>
									<option value="4">4月份</option>
									<option value="5">5月份</option>
									<option value="6">6月份</option>
									<option value="7">7月份</option>
									<option value="8">8月份</option>
									<option value="9">9月份</option>
									<option value="10">10月份</option>
									<option value="11">11月份</option>
									<option value="12">12月份</option>
								</select>
							</td>
						</tr>
						<c:forEach items="${departList}" var="depart" varStatus="v">
							<tr>
								<td>
									<a href="#tab${v.count }" data-toggle="tab">${depart.names }</a> 
									<a href="javascript:;" class="tu" name="${depart.englishnames }">查看统计图</a>
								</td>
							</tr>
						</c:forEach>
						
					</table>
					
				</div>
			</div>
			<div class="tab-content">
						
				<div class="span7 well" style="padding:25px 20px 20px 20px;">
					<div class="tab-content">
						<c:if test="${requestScope.file == null }">
							<div>
								您选择月份后，点击查看统计图，再点击部门。
							</div>
						
						</c:if>
						<c:if test="${requestScope.file != null }">
							<div class="tab-pane" id="tab1">
								 <P ALIGN="CENTER">     
						            <img src="${requestScope.file }" border=0 usemap="#imgMap">     
						        </P>  
							</div>
						</c:if>
						<div class="tab-pane" id="tab2">
							 <P ALIGN="CENTER">     
					            <img src="${requestScope.file }" border=0 usemap="#imgMap">     
					        </P>  
						</div>
						<div class="tab-pane" id="tab3">
							 <P ALIGN="CENTER">     
						         <img src="${requestScope.file }" border=0 usemap="#imgMap">     
						      </P>  
						</div>
						<div class="tab-pane" id="tab4">
							<P ALIGN="CENTER">     
						         <img src="${requestScope.file }" border=0 usemap="#imgMap">     
						      </P> 
						</div>
						<div class="tab-pane" id="tab5">
							<P ALIGN="CENTER">     
						         <img src="${requestScope.file }" border=0 usemap="#imgMap">     
						      </P> 
						</div>
						<div class="tab-pane" id="tab6">
							<P ALIGN="CENTER">     
						         <img src="${requestScope.file }" border=0 usemap="#imgMap">     
						      </P> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".tu").click(function(){
				var  yuefen = $("#input01").val();
				var name = $(this).attr("name");
				window.location.href = "/hrm/manager/tupian?yuefen="+yuefen+"&name="+name;
			});
	
	});
	
	
	</script>
	
	
  </body>
</html>
