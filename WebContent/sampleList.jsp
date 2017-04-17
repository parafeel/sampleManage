<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/table.css">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<title>馆藏资源管理系统</title>
</head>
<body>
	 
	 <%@ include file="header.jsp"%>
	
	<div class="tableFixed">
    	<div class="container">
    	<div class="table-responsive">
    	<p class="text-left text-danger">${Message}</p>
			<table class="table table-striped table-bordered table-hover" >
			   	<tr>
			   	   <td>平台资源号</td>
			   	   <td>资源名称</td>
			       <td>资源外文名</td>
			       <td>产地</td>
			       <td>资源归类</td>
			       <td>库存编号</td>
			  	</tr>
			    <s:iterator value="samples" var="s">
			        <tr>
			            <td>${s.resourceID}</td>
			            <td><a href="showSample?sample.id=${s.id}">${s.sampleName}</a></td>
			            <td>${s.foreignName}</td>
			            <td>${s.province}${s.origin}</td>
			            <td>${s.sampleClassID}</td>
			            <td>${s.locationNumber}</td>			            
			        </tr>
			    </s:iterator>
			</table>
			<br/>
		</div>
		</div>
	</div>
    
    <%@ include file="footer.jsp"%>
</body>
</html>