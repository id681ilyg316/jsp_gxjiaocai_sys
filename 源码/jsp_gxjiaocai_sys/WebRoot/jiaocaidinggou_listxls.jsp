<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaocaidinggou.xls");
%>
<html>
  <head>
    <title>教材订购</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有教材订购列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>订单号</td>    <td bgcolor='#cccccc'>书号</td>    <td bgcolor='#cccccc' width='65' align='center'>采购日期</td>    <td bgcolor='#cccccc'>采购总数</td>    <td bgcolor='#cccccc'>采购总金额</td>    <td bgcolor='#cccccc'>采购人</td>        <td bgcolor='#cccccc' width='80' align='center'>是否支付</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "jiaocaidinggou_list.jsp?1=1"; 
    String sql =  "select * from jiaocaidinggou where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("dingdanhao") %></td>    <td><%=map.get("shuhao") %></td>    <td><%=map.get("caigouriqi") %></td>    <td><%=map.get("caigouzongshu") %></td>    <td><%=map.get("caigouzongjine") %></td>    <td><%=map.get("caigouren") %></td>        <td align='center'><%=map.get("iszf")%></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

