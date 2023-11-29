<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>班级信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有班级信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  班级名：<input name="banjiming" type="text" id="banjiming" class="form-control2"  />  入学时间：<input name="ruxueshijian1" type="text" id="ruxueshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruxueshijian2" type="text" id="ruxueshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />  所在院系：<input name="suozaiyuanxi" type="text" id="suozaiyuanxi" class="form-control2"  />  所在专业：<input name="suozaizhuanye" type="text" id="suozaizhuanye" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='banjixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>班级名</td>
    <td bgcolor='#cccccc' width='65' align='center'>入学时间</td>
    <td bgcolor='#cccccc'>所在院系</td>
    <td bgcolor='#cccccc'>所在专业</td>
    <td bgcolor='#cccccc'>人数</td>
    <td bgcolor='#cccccc'>辅导员电话</td>
    
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"banjixinxi"); 
    String url = "banjixinxi_list.jsp?1=1"; 
    String sql =  "select * from banjixinxi where 1=1";
	
if(request.getParameter("banjiming")=="" ||request.getParameter("banjiming")==null ){}else{sql=sql+" and banjiming like '%"+request.getParameter("banjiming")+"%'";}
if (request.getParameter("ruxueshijian1")==""  ||request.getParameter("ruxueshijian1")==null ) {}else{sql=sql+" and ruxueshijian >= '"+request.getParameter("ruxueshijian1")+"'";}
if (request.getParameter("ruxueshijian2")==""  ||request.getParameter("ruxueshijian2")==null ) {}else {sql=sql+" and ruxueshijian <= '"+request.getParameter("ruxueshijian2")+"'";}
if(request.getParameter("suozaiyuanxi")=="" ||request.getParameter("suozaiyuanxi")==null ){}else{sql=sql+" and suozaiyuanxi like '%"+request.getParameter("suozaiyuanxi")+"%'";}
if(request.getParameter("suozaizhuanye")=="" ||request.getParameter("suozaizhuanye")==null ){}else{sql=sql+" and suozaizhuanye like '%"+request.getParameter("suozaizhuanye")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("banjiming") %></td>
    <td><%=map.get("ruxueshijian") %></td>
    <td><%=map.get("suozaiyuanxi") %></td>
    <td><%=map.get("suozaizhuanye") %></td>
    <td><%=map.get("renshu") %></td>
    <td><%=map.get("fudaoyuandianhua") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1-->  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

