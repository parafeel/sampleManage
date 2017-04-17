<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-headr">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">导航切换</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home">馆藏资源检索</a>
            </div>
            
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">                	
                    <li><a href="home">首页</a></li>
                    <li><a href="index">资源</a></li>
                    <li><a href="classifyDetail.html">分类</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="introduction.html">网站介绍</a></li>
                            <li class="divider"></li>
                            <li><a href="connectus.html">联系我们</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user">用户</span><span class="caret "></span></a>
                    	<ul class="dropdown-menu" role="menu">
                            <li><a href="login"><span class="glyphicon glyphicon-user"></span> 管理登录</a></li>
                        </ul>
                    	
                    </li>
                </ul>
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" value="" placeholder="搜索">
                </form>
            </div>
        </div>
    </nav>