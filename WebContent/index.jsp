<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/table.css">

<title>bwg</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	
    <div class="container">
        <div class="jumbotron">
            <h1>馆藏资源</h1>
            <p>
                <jsp:forward page="/sampleList.jsp"></jsp:forward>
            </p>
        </div>
    </div>
    
    <%@ include file="footer.jsp"%>
	
</body>
</html>