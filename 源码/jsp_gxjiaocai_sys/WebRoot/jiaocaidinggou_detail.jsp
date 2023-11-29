<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材订购详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaocaidinggou");
     %>
  教材订购详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>订单号：</td><td width='39%'><%=m.get("dingdanhao")%></td>
<td width='11%'>书号：</td><td width='39%'><%=m.get("shuhao")%></td></tr><tr>
<td width='11%'>采购日期：</td><td width='39%'><%=m.get("caigouriqi")%></td>
<td width='11%'>采购总数：</td><td width='39%'><%=m.get("caigouzongshu")%></td></tr><tr>
<td width='11%'>采购总金额：</td><td width='39%'><%=m.get("caigouzongjine")%></td>
<td width='11%'>采购人：</td><td width='39%'><%=m.get("caigouren")%></td></tr><tr>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;</td></tr>
    
  </table>

  </body>
</html>



