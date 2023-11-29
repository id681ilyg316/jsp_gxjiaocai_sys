<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>教材信息</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Author" name="WebThemez">
  <link href="qtimages/images/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="qtimages/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="qtimages/lib/animate/animate.min.css" rel="stylesheet">
  <link href="qtimages/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="qtimages/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="qtimages/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="qtimages/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="qtimages/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="qtimages/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="qtimages/css/custom.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
<%

%>

<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
    <section id="services" class="wow fadeInUp">
      <div class="container">
	   <div class="section-header">
            <h2>◇◆ 教材信息 ◆◇</h2>
          </div>
        <div class="row">
         
		      <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" action="" style="width:100%">
   搜索:  书号：<input name="shuhao" type="text" id="shuhao" class="form-control2"  />  教材名称：<input name="jiaocaimingcheng" type="text" id="jiaocaimingcheng" class="form-control2"  />
   <input type="submit" name="Submit" value="查找"  />
 </form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>书号</td>
    <td bgcolor='#CCFFFF'>教材名称</td>
    <td bgcolor='#CCFFFF'>作者</td>
    <td bgcolor='#CCFFFF'>出版社</td>
    <td bgcolor='#CCFFFF'>出版编号</td>
    <td bgcolor='#CCFFFF'>出版日期</td>
    <td bgcolor='#CCFFFF'>单价</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>封面</td>
    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaocaixinxi"); 
    String url = "jiaocaixinxilist.jsp?2=2"; 
    String sql =  "select * from jiaocaixinxi where 1=1";
	
if(request.getParameter("shuhao")=="" ||request.getParameter("shuhao")==null ){}else{sql=sql+" and shuhao like '%"+request.getParameter("shuhao")+"%'";}
if(request.getParameter("jiaocaimingcheng")=="" ||request.getParameter("jiaocaimingcheng")==null ){}else{sql=sql+" and jiaocaimingcheng like '%"+request.getParameter("jiaocaimingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("shuhao") %></td><td><%=map.get("jiaocaimingcheng") %></td><td><%=map.get("zuozhe") %></td><td><%=map.get("chubanshe") %></td><td><%=map.get("chubanbianhao") %></td><td><%=map.get("chubanriqi") %></td><td><%=map.get("danjia") %></td><td width='90'><a href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>
    
    <td width="30" align="center"> <a href="jiaocaixinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }							
						  
        </div>
      </div>
    </section>

  </main>

</body> 
</html>

<!--yoxudixtu-->
