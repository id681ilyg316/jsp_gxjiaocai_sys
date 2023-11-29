<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <span class="white">欢迎来到高校教材管理系统!</span>
      </div>
      <div class="social-links float-right line-30">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
        <a href="userlog.jsp" class="twitter">登录</a><font color="#FFFFFF"></font>
		 <%}else{ %>
	    <font color="#FFFFFF"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp;</font> <a href="logout.jsp" onclick="return confirm('确定要退出？')" >退出</a><a href="main.jsp" >后台</a>
	    <%} %>
		
        
      </div>
    </div>
  </section>

  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <h1><a href="index.jsp" class="scrollto">
            <img src="./qtimages/images/logo.png" alt="" width="60">高校教材管理系统
          </a></h1>
      </div>
      <nav id="nav-menu-container">
        <ul class='nav-menu'>
          <li class='menu-active'><a href='index.jsp'>首页</a></li>
		<li><a href='jiaocaixinxilist.jsp'>教材信息</a></li>

		  <li class='menu-has-children'><a href=''>新闻信息</a>
            <ul><li><a href='news.jsp?lb=公告信息'>公告信息</a></li> </ul>
          </li><!--yoxulixuyaxn-->
          <li><a href='login.jsp'>后台管理</a></li>
        </ul>
      </nav>
    </div>
  </header>
