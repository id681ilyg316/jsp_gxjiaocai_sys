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
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"jiaocaixinxi");
 String shuming="";  	String jiaocaimingcheng="";  	String zuozhe="";  	String chubanshe="";  	
 shuming=(String)mlbdq.get("jiaocaimingcheng");  	jiaocaimingcheng=(String)mlbdq.get("jiaocaimingcheng");  	zuozhe=(String)mlbdq.get("zuozhe");  	chubanshe=(String)mlbdq.get("chubanshe");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaocairuku_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"jiaocairuku",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiaocairuku_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加教材入库:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">入库编号：</td><td><input name='rukubianhao' type='text' id='rukubianhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr> 		<tr><td  width="200">教材名称：</td><td><input name='jiaocaimingcheng' type='text' id='jiaocaimingcheng' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiaocaimingcheng.value='<%=jiaocaimingcheng%>';document.form1.jiaocaimingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.zuozhe.value='<%=zuozhe%>';document.form1.zuozhe.setAttribute("readOnly",'true');</script>		<tr><td  width="200">出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.chubanshe.value='<%=chubanshe%>';document.form1.chubanshe.setAttribute("readOnly",'true');</script>		<tr><td  width="200">入库数量：</td><td><input name='rukushuliang' type='text' id='rukushuliang' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelrukushuliang' />必需数字型</td></tr>		<tr><td width="200">入库时间：</td><td><input name='rukushijian' type='text' id='rukushijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>		<tr><td  width="200">经办人：</td><td><input name='jingbanren' type='text' id='jingbanren' value='' onblur='' class="form-control" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var rukushuliangobj = document.getElementById("rukushuliang"); if(rukushuliangobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(rukushuliangobj.value)){document.getElementById("clabelrukushuliang").innerHTML=""; }else{document.getElementById("clabelrukushuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
