<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaocaixinxi.xls");
%>
<html>
  <head>
    <title>教材信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有教材信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>书号</td>    <td bgcolor='#cccccc'>教材名称</td>    <td bgcolor='#cccccc'>作者</td>    <td bgcolor='#cccccc'>出版社</td>    <td bgcolor='#cccccc'>出版编号</td>    <td bgcolor='#cccccc'>出版日期</td>    <td bgcolor='#cccccc'>单价</td>    <td bgcolor='#cccccc' width='90' align='center'>封面</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "jiaocaixinxi_list.jsp?1=1"; 
    String sql =  "select * from jiaocaixinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("shuhao") %></td>    <td><%=map.get("jiaocaimingcheng") %></td>    <td><%=map.get("zuozhe") %></td>    <td><%=map.get("chubanshe") %></td>    <td><%=map.get("chubanbianhao") %></td>    <td><%=map.get("chubanriqi") %></td>    <td><%=map.get("danjia") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>    
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

