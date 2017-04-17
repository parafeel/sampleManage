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
<title>增加资源记录</title>
</head>
<body>
	<%@ include file="adminHeader.jsp"%>

	<div class="tableFixed">
    <div class="container">
  	<div class="table-responsive">
		<div class="contentMiddle clearfix">
   		<div class="guide">
       	当前位置：<a href="adminList">首页</a> &gt; <a href="adminList">标本数据</a> &gt; 标本详细信息
   		</div>
   		
   		<form action="insertSample" method="post">
   		
   			<table id="contentTable" class="table table-striped table-bordered table-hover">
       		<tbody><tr>
	           <td colspan="2" style="background-color: #F0F0F0;">
	               <div align="center" style="font-size: 16px;margin: 5px 0px;color: #2fa4e7">护照信息</div>
	           </td>
		       </tr>
		       <tr>
		           <td style="width: 50%"><label class="control-label">平台资源号：</label><span><input type="text" class="form-control" name="sample.resourceID" value=""></span></td>
		           <td><label class="control-label">资源编号：</label> <span><input type="text" class="form-control" name="sample.sampleID" value=""></span></td>
		       </tr>
		       <tr>
		           <td><label class="control-label">资源名称：</label> <span><input type="text" class="form-control" name="sample.sampleName" value=""></span></td>
		           <td><label class="control-label">资源外文名称：</label> <span><input type="text" class="form-control" name="sample.foreignName" value=""></span></td>
		       </tr>
		       <tr>
		           <td><label class="control-label">产地：</label><span><input type="text" class="form-control" name="sample.origin" value=""></span></td>
		           <td><label class="control-label">省：</label><span><input type="text" class="form-control" name="sample.province" value=""></span></td>
		       </tr>
		       <tr>
		           <td colspan="2">
		               <label class="control-label">国家：</label><span><input type="text" class="form-control" name="sample.country" value=""></span></td>
		       </tr>
		       <tr>
		           <td colspan="2" style="background-color: #F0F0F0;">
		               <div align="center" style="font-size: 16px;margin: 5px 0px;color: #2fa4e7">标记信息（类型与特征信息）</div>
		           </td>
		       </tr>
		       <tr>
		           <td><label class="control-label">资源归类编码：</label>
		               <span><input type="text" class="form-control" name="sample.sampleClassID" value=""></span>
		           </td>
		           <td><label class="control-label">主要用途：</label>
		               <span><input type="text" class="form-control" name="sample.mainUse" value=""></span>
		           </td>
		       </tr>
		       <tr>
		           <td><label class="control-label">资源归类：</label>
		           <span class="notifySpan">
		           		<select class="form-control"  name="sample.sampleClass">
    						<s:iterator value="categorys" var="c">
      							 <option>${c.categoryClass}</option>
      						</s:iterator>
      					</select>
		           	</span>
		               <span></span>
		           </td>
		           <td><label class="control-label">地质产状或层位：</label>
		           <span class="notifySpan"><input type="text" class="form-control" name="sample.geologyPosition" value=""></span>
		               <span></span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2" style="background-color: #F0F0F0;">
		               <div align="center" style="font-size: 16px;margin: 5px 0px;color: #2fa4e7">基本特征特性描述信息</div>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2">
		               <table width="100%">
		                   <tbody><tr>
		                       <td style="background-color: #fff;width: 10%"><label class="control-label">简要特征描述：</label></td>
		                       <td style="background-color: #fff;word-break:break-all;"><input type="text" class="form-control" name="sample.briefDescription" value=""></td>
		                   </tr>
		               </tbody></table>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">具体用途：</label>
		               <span><input type="text" class="form-control" name="sample.specificUse" value=""></span>
		           </td>
		       </tr>
		       <tr>
		           <td><label class="control-label">资源提供者：</label><span><input type="text" class="form-control" name="sample.sampleProvider" value=""></span></td>
		           <td><label class="control-label">资源提供时间：</label><span><input type="text" class="form-control" name="sample.sampleProvideTime" value=""></span></td>
		       </tr>
		       <tr>
		           <td><label class="control-label">经度：<span class="notifySpan">暂无</span></label><span></span>
		           </td>
		           <td><label class="control-label">纬度：<span class="notifySpan">暂无</span></label><span></span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">高程：<span class="notifySpan">暂无</span></label>
		               <span></span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2">
		               <div align="center" style="font-size: 16px;margin: 5px 0px;color: #2fa4e7">其他描述信息</div>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2">
		               <table width="100%">
		                   <tbody><tr>
		                       <td width="10%"><label class="control-label">图片资料：</label></td>
		                       <td>
		                           <ul>
		                               <li>
		                               	暂无1
		                               </li>
		                               <li>
		                               	暂无2
		                               </li>
		                           </ul>
		                       </td>
		                   </tr>
		               </tbody></table>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">地址记录：</label> <span><input type="text" class="form-control" name="sample.sampleNumber" value=""></span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2" style="background-color: #F0F0F0;">
		               <div align="center" style="font-size: 16px;margin: 5px 0px;color: #2fa4e7">收藏单位信息</div>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">保存单位：</label> <span><input type="text" class="form-control" name="sample.saveLocation" value=""></span>
		           </td>
		       </tr>
		       <tr>
		           <td><label class="control-label">样本编号：</label> <span><input type="text" class="form-control" name="sample.sampleNumber" value=""></span>
		           </td>
		           <td><label class="control-label">库存位置号：</label> <span><input type="text" class="form-control" name="sample.locationNumber" value=""></span></td>
		       </tr>
		       <tr>
		           <td><label class="control-label">采集号：<span class="notifySpan">(可选项)</span></label><span><input type="text" class="form-control" name="sample.collectionNumber" value=""></span>
		           </td>
		           <td><label class="control-label">保存资源数量：</label> <span><input type="text" class="form-control" name="sample.collectionCount" value=""></span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">保存资源类型：</label>
		               <span>标本</span>
		       	</td>
		       </tr>
		       <tr>
		           <td colspan="2" style="background-color: #F0F0F0;">
		               <div align="center" style="font-size: 16px;margin: 5px 0px;color: #2fa4e7">共享方式</div>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">共享方式：</label>
		               <span>暂无</span>
		           </td>
		       </tr>
		       <tr>
		           <td><label class="control-label">资源状态：</label>
		               <span>暂无</span>
		           </td>
		           <td><label class="control-label">获取途径：</label><span>现场获取</span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">联系方式：</label>
		               <span>地质博物馆</span>
		           </td>
		       </tr>
		       <tr>
		           <td colspan="2"><label class="control-label">数据最后更新时间：</label>
		               <span>2017-01-01</span>
		           </td>
		       </tr>
		   </tbody>
		   </table>
		   
		   <button type="submit" class="btn btn-primary">添加标本数据</button>
		</form>
 	
 	</div>
 	</div>
 	</div>
	</div>
    
    <%@ include file="adminFooter.jsp"%>
	
</body>
</html>