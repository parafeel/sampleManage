<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<link href="css/tree.css" rel="stylesheet">
<script src="JS/tree.js"></script>
<title>tree</title>
</head>
<body>
<div class="tree well">
 <ul>
  <li>
   <span><i class="glyphicon glyphicon-folder-open"></i> Parent</span> <a href="">Goes somewhere</a>
   <ul>
    <li>
      <span><i class="glyphicon glyphicon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
     <ul>
      <li>
        <span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
      </li>
     </ul>
    </li>
    <li>
      <span><i class="glyphicon glyphicon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
     <ul>
      <li>
        <span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
      </li>
      <li>
        <span><i class="glyphicon glyphicon-minus-sign"></i> Grand Child</span> <a href="">Goes somewhere</a>
       <ul>
        <li>
          <span><i class="glyphicon glyphicon-minus-sign"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
           <ul>
            <li>
              <span><i class="glyphicon glyphicon-leaf"></i> Great great Grand Child</span> <a href="">Goes somewhere</a>
            </li>
            <li>
              <span><i class="glyphicon glyphicon-leaf"></i> Great great Grand Child</span> <a href="">Goes somewhere</a>
            </li>
            </ul>
        </li>
        <li>
          <span><i class="glyphicon glyphicon-leaf"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
        </li>
        <li>
          <span><i class="glyphicon glyphicon-leaf"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
        </li>
       </ul>
      </li>
      <li>
        <span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
      </li>
     </ul>
    </li>
   </ul>
  </li>
  <li>
   <span><i class="glyphicon glyphicon-folder-open"></i> Parent2</span> <a href="">Goes somewhere</a>
   <ul>
    <li>
      <span><i class="glyphicon glyphicon-leaf"></i> Child</span> <a href="">Goes somewhere</a>
      </li>
     </ul>
  </li>
 </ul>
</div>
</body>
</html>