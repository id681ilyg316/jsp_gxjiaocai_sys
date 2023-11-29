<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教师信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有教师信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  学工号：<input name="xuegonghao" type="text" id="xuegonghao" class="form-control2" />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2" />  系别：<input name="xibie" type="text" id="xibie" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='jiaoshixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>学工号</td>
    <td bgcolor='#cccccc'>密码</td>
    <td bgcolor='#cccccc'>姓名</td>
    <td bgcolor='#cccccc' width='40' align='center'>性别</td>
    <td bgcolor='#cccccc'>系别</td>
    <td bgcolor='#cccccc' width='65' align='center'>出生日期</td>
    <td bgcolor='#cccccc'>联系电话</td>
    <td bgcolor='#cccccc'>籍贯</td>
    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaoshixinxi"); 
    String url = "jiaoshixinxi_list.jsp?1=1"; 
    String sql =  "select * from jiaoshixinxi where 1=1";
	
if(request.getParameter("xuegonghao")=="" ||request.getParameter("xuegonghao")==null ){}else{sql=sql+" and xuegonghao like '%"+request.getParameter("xuegonghao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xibie")=="" ||request.getParameter("xibie")==null ){}else{sql=sql+" and xibie like '%"+request.getParameter("xibie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("xuegonghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("xibie") %></td>
    <td><%=map.get("chushengriqi") %></td>
    <td><%=map.get("lianxidianhua") %></td>
    <td><%=map.get("jiguan") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="jiaoshixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="jiaoshixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

