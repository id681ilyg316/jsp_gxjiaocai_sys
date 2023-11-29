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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"jiaocaixinxi");
	
	
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
         
		      
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>书号：</td><td width='39%'><%=mqt.get("shuhao")%></td><td  rowspan=7 align=center><a href=<%=mqt.get("fengmian")%> target=_blank><img src=<%=mqt.get("fengmian")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>教材名称：</td><td width='39%'><%=mqt.get("jiaocaimingcheng")%></td></tr><tr>
         <td width='11%' height=44>作者：</td><td width='39%'><%=mqt.get("zuozhe")%></td></tr><tr>
         <td width='11%' height=44>出版社：</td><td width='39%'><%=mqt.get("chubanshe")%></td></tr><tr>
         <td width='11%' height=44>出版编号：</td><td width='39%'><%=mqt.get("chubanbianhao")%></td></tr><tr>
         <td width='11%' height=44>出版日期：</td><td width='39%'><%=mqt.get("chubanriqi")%></td></tr><tr>
         <td width='11%' height=44>单价：</td><td width='39%'><%=mqt.get("danjia")%></td></tr><tr>
         
         <td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
 <!--jixaaxnnxiu-->
</td></tr>
    
  </table>	
						  
        </div>
      </div>
    </section>

  </main>
<a class='bshareDiv' href='http://www.bshare.cn/share'>分享按钮</a><script type='text/javascript' charset='utf-8' src='http://static.bshare.cn/b/buttonLite.js#uuid=&amp;style=3&amp;fs=4&amp;textcolor=#fff&amp;bgcolor=#9C3&amp;text=分享到'></script>
</body> 
</html>

<!--yoxudixtu-->
