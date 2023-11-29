<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaocairuku.xls");
%>
<html>
  <head>
    <title>教材入库</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有教材入库列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>入库编号</td>    <td bgcolor='#cccccc'>书名</td>    <td bgcolor='#cccccc'>教材名称</td>    <td bgcolor='#cccccc'>作者</td>    <td bgcolor='#cccccc'>出版社</td>    <td bgcolor='#cccccc'>入库数量</td>    <td bgcolor='#cccccc' width='65' align='center'>入库时间</td>    <td bgcolor='#cccccc'>经办人</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "jiaocairuku_list.jsp?1=1"; 
    String sql =  "select * from jiaocairuku where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("rukubianhao") %></td>    <td><%=map.get("shuming") %></td>    <td><%=map.get("jiaocaimingcheng") %></td>    <td><%=map.get("zuozhe") %></td>    <td><%=map.get("chubanshe") %></td>    <td><%=map.get("rukushuliang") %></td>    <td><%=map.get("rukushijian") %></td>    <td><%=map.get("jingbanren") %></td>    
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

