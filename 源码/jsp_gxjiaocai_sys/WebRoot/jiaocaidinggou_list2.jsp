<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材订购</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有教材订购列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  订单号：<input name="dingdanhao" type="text" id="dingdanhao" class="form-control2"  />  书号：<input name="shuhao" type="text" id="shuhao" class="form-control2"  />  采购日期：<input name="caigouriqi1" type="text" id="caigouriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="caigouriqi2" type="text" id="caigouriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />  采购人：<input name="caigouren" type="text" id="caigouren" class="form-control2"  />
     <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>订单号</td>
    <td bgcolor='#cccccc'>书号</td>
    <td bgcolor='#cccccc' width='65' align='center'>采购日期</td>
    <td bgcolor='#cccccc'>采购总数</td>
    <td bgcolor='#cccccc'>采购总金额</td>
    <td bgcolor='#cccccc'>采购人</td>
    <td bgcolor='#cccccc' width='80' align='center'>是否支付</td>
    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    <td width="220" align="center" bgcolor="cccccc">操作</td>
  </tr>
 <% 
  	double caigouzongjinez=0;


  	 new CommDAO().delete(request,"jiaocaidinggou"); 
    String url = "jiaocaidinggou_list2.jsp?1=1"; 
    String sql =  "select * from jiaocaidinggou where caigouren='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("dingdanhao")=="" ||request.getParameter("dingdanhao")==null ){}else{sql=sql+" and dingdanhao like '%"+request.getParameter("dingdanhao")+"%'";}
if(request.getParameter("shuhao")=="" ||request.getParameter("shuhao")==null ){}else{sql=sql+" and shuhao like '%"+request.getParameter("shuhao")+"%'";}
if (request.getParameter("caigouriqi1")==""  ||request.getParameter("caigouriqi1")==null ) {}else{sql=sql+" and caigouriqi >= '"+request.getParameter("caigouriqi1")+"'";}
if (request.getParameter("caigouriqi2")==""  ||request.getParameter("caigouriqi2")==null ) {}else {sql=sql+" and caigouriqi <= '"+request.getParameter("caigouriqi2")+"'";}
if(request.getParameter("caigouren")=="" ||request.getParameter("caigouren")==null ){}else{sql=sql+" and caigouren like '%"+request.getParameter("caigouren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	caigouzongjinez=caigouzongjinez+Float.valueOf((String)map.get("caigouzongjine")).floatValue();



     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("dingdanhao") %></td>
 <td><%=map.get("shuhao") %></td>
 <td><%=map.get("caigouriqi") %></td>
 <td><%=map.get("caigouzongshu") %></td>
 <td><%=map.get("caigouzongjine") %></td>
 <td><%=map.get("caigouren") %></td>
 
 <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("否")){%><a class="btn btn-info btn-small" href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=jiaocaidinggou"><font color='red'>支付</font></a> <%}%> </td>
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="jiaocaidinggou_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="jiaocaidinggou_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="jiaocaidinggou_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
共计采购总金额:<%=caigouzongjinez%>；  
<p class="fy">${page.info }</p>


  </body>
</html>

