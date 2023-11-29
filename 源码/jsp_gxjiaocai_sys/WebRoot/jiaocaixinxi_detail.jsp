<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaocaixinxi");
     %>
  教材信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>书号：</td><td width='39%'><%=m.get("shuhao")%></td>
<td  rowspan=7 align=center><a href=<%=m.get("fengmian")%> target=_blank><img src=<%=m.get("fengmian")%> width=228 height=215 border=0></a></td></tr><tr>
<td width='11%' height=44>教材名称：</td><td width='39%'><%=m.get("jiaocaimingcheng")%></td>
</tr><tr>
<td width='11%' height=44>作者：</td><td width='39%'><%=m.get("zuozhe")%></td>
</tr><tr>
<td width='11%' height=44>出版社：</td><td width='39%'><%=m.get("chubanshe")%></td>
</tr><tr>
<td width='11%' height=44>出版编号：</td><td width='39%'><%=m.get("chubanbianhao")%></td>
</tr><tr>
<td width='11%' height=44>出版日期：</td><td width='39%'><%=m.get("chubanriqi")%></td>
</tr><tr>
<td width='11%' height=44>单价：</td><td width='39%'><%=m.get("danjia")%></td>
</tr><tr>

<td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;</td></tr>
    
  </table>

  </body>
</html>



