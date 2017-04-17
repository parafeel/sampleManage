<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/table.css">
<title>资源管理页面</title>
</head>
<body>
	<%@ include file="adminHeader.jsp"%>
	
	<div class="tableFixed">
    <div class="container">
    	<div>
    		<form action="adminSelect" class="well form-search">
    			<table id="contentTable">
       			<tbody>
       			<tr>
       				<td style="width: 10%">
       					<span>
       						<select class="col-xs-3 col-md-2 form-control " name="selectSampleClass">
      							<option>${selectSampleClass}</option>
      							<option>矿物标本</option>
      							<option>岩石标本</option>
      							<option>化石标本</option>
      							<option>矿石标本</option>
      						</select>
      					</span>
       				</td>
			   		<td style="width: 10%">
       					<span>
       						<input type="text" class="form-control input-medium search-query" name="selectSampleName" value="${selectSampleName}" placeholder="输入标本名称" >
      					</span>
       				</td>
       				<td style="width: 10%">
       					<span>
       						<input type="text" class="form-control input-medium search-query" name="selectResourceID" value="${selectResourceID}" placeholder="输入平台资源号">
      					</span>
       				</td>
      				<td style="width: 30%">
      				 	<span>
			   			<button type="submit" class="btn">按条件查询</button>
			   			</span>
			   		</td>
			   	</tr>
			   	</tbody>
			   	</table>
		   	</form>
		   	
    		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover" >
			   	<tr>
			       <td>平台资源号</td>
			   	   <td>资源名称</td>
			       <td>资源外文名</td>
			       <td>产地</td>
			       <td>资源归类</td>
			       <td>修改</td>
			       <td>删除</td>
			  	</tr>
			    <s:iterator value="samples" var="s">
			        <tr>
			            <td>${s.resourceID}</td>
			            <td><a href="showSample?sample.id=${s.id}">${s.sampleName}</a></td>
			            <td>${s.foreignName}</td>
			            <td>${s.province}${s.origin}</td>
			            <td>${s.sampleClass}</td>
			            <td><a href="tryEdit?sample.id=${s.id}">编辑</a></td>
			            <td><a href="deleteSample?sample.id=${s.id}" onclick="return confirm('确认删除？');">删除</a></td>
			        </tr>
			    </s:iterator>
			</table>
			<br/>
			</div>
			
		</div>
	
	</div>
	</div>
    
    <%@ include file="adminFooter.jsp"%>
	
</body>
</html>