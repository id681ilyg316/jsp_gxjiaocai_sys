<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材入库</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有教材入库列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  入库编号：<input name="rukubianhao" type="text" id="rukubianhao" class="form-control2" />  书名：<input name="shuming" type="text" id="shuming" class="form-control2" />  教材名称：<input name="jiaocaimingcheng" type="text" id="jiaocaimingcheng" class="form-control2" />  入库时间：<input name="rukushijian1" type="text" id="rukushijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="rukushijian2" type="text" id="rukushijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='jiaocairuku_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>入库编号</td>
    <td bgcolor='#cccccc'>书名</td>
    <td bgcolor='#cccccc'>教材名称</td>
    <td bgcolor='#cccccc'>作者</td>
    <td bgcolor='#cccccc'>出版社</td>
    <td bgcolor='#cccccc'>入库数量</td>
    <td bgcolor='#cccccc' width='65' align='center'>入库时间</td>
    <td bgcolor='#cccccc'>经办人</td>
    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaocairuku"); 
    String url = "jiaocairuku_list.jsp?1=1"; 
    String sql =  "select * from jiaocairuku where 1=1";
	
if(request.getParameter("rukubianhao")=="" ||request.getParameter("rukubianhao")==null ){}else{sql=sql+" and rukubianhao like '%"+request.getParameter("rukubianhao")+"%'";}
if(request.getParameter("shuming")=="" ||request.getParameter("shuming")==null ){}else{sql=sql+" and shuming like '%"+request.getParameter("shuming")+"%'";}
if(request.getParameter("jiaocaimingcheng")=="" ||request.getParameter("jiaocaimingcheng")==null ){}else{sql=sql+" and jiaocaimingcheng like '%"+request.getParameter("jiaocaimingcheng")+"%'";}
if (request.getParameter("rukushijian1")==""  ||request.getParameter("rukushijian1")==null ) {}else{sql=sql+" and rukushijian >= '"+request.getParameter("rukushijian1")+"'";}
if (request.getParameter("rukushijian2")==""  ||request.getParameter("rukushijian2")==null ) {}else {sql=sql+" and rukushijian <= '"+request.getParameter("rukushijian2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("rukubianhao") %></td>
    <td><%=map.get("shuming") %></td>
    <td><%=map.get("jiaocaimingcheng") %></td>
    <td><%=map.get("zuozhe") %></td>
    <td><%=map.get("chubanshe") %></td>
    <td><%=map.get("rukushuliang") %></td>
    <td><%=map.get("rukushijian") %></td>
    <td><%=map.get("jingbanren") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="jiaocairuku_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="jiaocairuku_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="jiaocairuku_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

