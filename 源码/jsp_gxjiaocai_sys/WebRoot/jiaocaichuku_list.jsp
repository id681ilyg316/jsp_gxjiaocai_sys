<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材出库</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有教材出库列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  出库编号：<input name="chukubianhao" type="text" id="chukubianhao" class="form-control2" />  书号：<input name="shuhao" type="text" id="shuhao" class="form-control2" />  教材名称：<input name="jiaocaimingcheng" type="text" id="jiaocaimingcheng" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='jiaocaichuku_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>出库编号</td>
    <td bgcolor='#cccccc'>书号</td>
    <td bgcolor='#cccccc'>教材名称</td>
    <td bgcolor='#cccccc'>作者</td>
    <td bgcolor='#cccccc'>出版社</td>
    <td bgcolor='#cccccc'>出库数量</td>
    <td bgcolor='#cccccc' width='65' align='center'>出库时间</td>
    <td bgcolor='#cccccc'>经办人</td>
    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaocaichuku"); 
    String url = "jiaocaichuku_list.jsp?1=1"; 
    String sql =  "select * from jiaocaichuku where 1=1";
	
if(request.getParameter("chukubianhao")=="" ||request.getParameter("chukubianhao")==null ){}else{sql=sql+" and chukubianhao like '%"+request.getParameter("chukubianhao")+"%'";}
if(request.getParameter("shuhao")=="" ||request.getParameter("shuhao")==null ){}else{sql=sql+" and shuhao like '%"+request.getParameter("shuhao")+"%'";}
if(request.getParameter("jiaocaimingcheng")=="" ||request.getParameter("jiaocaimingcheng")==null ){}else{sql=sql+" and jiaocaimingcheng like '%"+request.getParameter("jiaocaimingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("chukubianhao") %></td>
    <td><%=map.get("shuhao") %></td>
    <td><%=map.get("jiaocaimingcheng") %></td>
    <td><%=map.get("zuozhe") %></td>
    <td><%=map.get("chubanshe") %></td>
    <td><%=map.get("chukushuliang") %></td>
    <td><%=map.get("chukushijian") %></td>
    <td><%=map.get("jingbanren") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="jiaocaichuku_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="jiaocaichuku_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="jiaocaichuku_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

