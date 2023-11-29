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
     <input type="submit" name="Submit" value="查找"  /> <input type="button" name="Submit5" value="切换视图"   onClick="javascript:location.href='jiaocaixinxilist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	


  	 new CommDAO().delete(request,"jiaocaixinxi"); 
    String url = "jiaocaixinxilisttp.jsp?1=1"; 
    String sql =  "select * from jiaocaixinxi where 1=1";
	
if(request.getParameter("shuhao")=="" ||request.getParameter("shuhao")==null ){}else{sql=sql+" and shuhao like '%"+request.getParameter("shuhao")+"%'";}
if(request.getParameter("jiaocaimingcheng")=="" ||request.getParameter("jiaocaimingcheng")==null ){}else{sql=sql+" and jiaocaimingcheng like '%"+request.getParameter("jiaocaimingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
                           <td height="316" align="center"><table width="225" height="285" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="250" align="center"><a href="jiaocaixinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("fengmian")%>" width="210" height="250" border="0" style="border-radius: 18px;" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("jiaocaimingcheng")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
${page.info }	
						  
        </div>
      </div>
    </section>

  </main>

</body> 
</html>

<!--yoxudixtu-->
