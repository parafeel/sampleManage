<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/login.css">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<title>馆藏资源管理系统</title>
</head>
<body>
	
	<div class="container">
        <form action="" method="post"  class="form-signin">
            <h2 class="form-signin-heading">修改个人信息</h2>
            <input type="text" class="form-control" name="user.userName" placeholder="输入账号">
            <input type="password" class="form-control"  name="user.userPassword" placeholder="输入密码">
            <input type="password" class="form-control"  name="user.userPassword" placeholder="输入新密码">
            
            <div class="checkbox">
                <button target="_blank" type="submit" class="btn btn-lg btn-primary btn-block" >登录</button>
            </div>
        </form>

    </div>
	
    
	
</body>
</html>