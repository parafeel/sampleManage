<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>


<nav class="navbar navbar-inverse navbar-fixed-top " role="navigation">
        <div class="container">
            <div class="navbar-headr">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">导航切换</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="adminList">后台页面</a>
            </div>
            
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="adminList">标本管理</a></li>
                    <li class="dropdown">
                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>标本分类    </span><span class="glyphicon glyphicon-list"></span><span class="caret "></span></a>
                    	<ul class="dropdown-menu" role="menu">
                            <li><a href="classList?sample.sampleClass=矿物标本"><span class="glyphicon"></span>矿物标本</a></li>
                            <li><a href="classList?sample.sampleClass=岩石标本"><span class="glyphicon"></span>岩石标本</a></li>
                            <li><a href="classList?sample.sampleClass=化石标本"><span class="glyphicon"></span>化石标本</a></li>
                            <li><a href="classList?sample.sampleClass=矿石标本"><span class="glyphicon"></span>矿石标本</a></li>
                        </ul>
                    	
                    </li>
                    <li><a href="tryInsert">录入标本</a></li>
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
                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user">${currentUser.userName}</span><span class="caret "></span></a>
                    	<ul class="dropdown-menu" role="menu">
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>用户设置</a></li>
                            <li><a href="loginOut"><span class="glyphicon glyphicon-leaf"></span>退出登录</a></li>
                        </ul>
                    	
                    </li>
                </ul>
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" value="" placeholder="搜索">
                </form>
            </div>
        </div>
    </nav>
    
</div>