<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教师信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaoshixinxi");
     %>
  教师信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>学工号：</td><td width='39%'><%=m.get("xuegonghao")%></td>
<td width='11%'>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr>
<td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td>
<td width='11%'>性别：</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr>
<td width='11%'>系别：</td><td width='39%'><%=m.get("xibie")%></td>
<td width='11%'>出生日期：</td><td width='39%'><%=m.get("chushengriqi")%></td></tr><tr>
<td width='11%'>联系电话：</td><td width='39%'><%=m.get("lianxidianhua")%></td>
<td width='11%'>籍贯：</td><td width='39%'><%=m.get("jiguan")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;</td></tr>
    
  </table>

  </body>
</html>



