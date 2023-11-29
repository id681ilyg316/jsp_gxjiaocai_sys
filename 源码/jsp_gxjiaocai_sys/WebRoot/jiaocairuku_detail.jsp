<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材入库详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaocairuku");
     %>
  教材入库详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>入库编号：</td><td width='39%'><%=m.get("rukubianhao")%></td>
<td width='11%'>书名：</td><td width='39%'><%=m.get("shuming")%></td></tr><tr>
<td width='11%'>教材名称：</td><td width='39%'><%=m.get("jiaocaimingcheng")%></td>
<td width='11%'>作者：</td><td width='39%'><%=m.get("zuozhe")%></td></tr><tr>
<td width='11%'>出版社：</td><td width='39%'><%=m.get("chubanshe")%></td>
<td width='11%'>入库数量：</td><td width='39%'><%=m.get("rukushuliang")%></td></tr><tr>
<td width='11%'>入库时间：</td><td width='39%'><%=m.get("rukushijian")%></td>
<td width='11%'>经办人：</td><td width='39%'><%=m.get("jingbanren")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;</td></tr>
    
  </table>

  </body>
</html>



