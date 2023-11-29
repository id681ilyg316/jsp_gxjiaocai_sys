<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>教材订购</title>
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
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";

 
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"jiaocaixinxi");
 String shuhao="";
  	
 shuhao=(String)mlbdq.get("shuhao");
  	 
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var caigouzongshuobj = document.getElementById("caigouzongshu"); if(caigouzongshuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(caigouzongshuobj.value)){document.getElementById("clabelcaigouzongshu").innerHTML=""; }else{document.getElementById("clabelcaigouzongshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    
}
function gow()
{
	document.location.href="jiaocaidinggouadd.jsp?id=<%=id%>";
}
</script>


<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
    <section id="services" class="wow fadeInUp">
      <div class="container">
	   <div class="section-header">
            <h2>◇◆ 教材订购 ◆◇</h2>
          </div>
        <div class="row">
         
		      <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
<% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){

double caigouzongjinej=0;
caigouzongjinej = 0;


ext.put("iszf","否");
ext.put("caigouzongjine",caigouzongjinej);




new CommDAO().insert(request,response,"jiaocaidinggou",ext,true,false,""); 

 }
%>
   <form  action="jiaocaidinggouadd.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">订单号：</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">书号：</td><td><input name='shuhao' type='text' id='shuhao' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.shuhao.value='<%=shuhao%>';document.form1.shuhao.setAttribute("readOnly",'true');</script>
		<tr><td width="200">采购日期：</td><td><input name='caigouriqi' type='text' id='caigouriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
		<tr><td  width="200">采购总数：</td><td><input name='caigouzongshu' type='text' id='caigouzongshu' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelcaigouzongshu' />必需数字型</td></tr>
		<tr><td  width="200">采购总金额：</td><td> 此项不必填写，系统自动计算</td></tr>
		<tr><td  width="200">采购人：</td><td><input name='caigouren' type='text' id='caigouren' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return checkform();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>	
						  
        </div>
      </div>
    </section>

  </main>

</body> 
</html>

<!--yoxudixtu-->
