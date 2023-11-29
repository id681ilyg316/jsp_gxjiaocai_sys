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
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"jiaocaixinxi");
 String shuhao="";  	
 shuhao=(String)mlbdq.get("shuhao");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaocaidinggou_add.jsp?id=<%=id%>";
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

double caigouzongjinej=0;


ext.put("iszf","否");
ext.put("caigouzongjine",caigouzongjinej);




new CommDAO().insert(request,response,"jiaocaidinggou",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiaocaidinggou_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加教材订购:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">订单号：</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">书号：</td><td><input name='shuhao' type='text' id='shuhao' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.shuhao.value='<%=shuhao%>';document.form1.shuhao.setAttribute("readOnly",'true');</script>		<tr><td width="200">采购日期：</td><td><input name='caigouriqi' type='text' id='caigouriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>		<tr><td  width="200">采购总数：</td><td><input name='caigouzongshu' type='text' id='caigouzongshu' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelcaigouzongshu' />必需数字型</td></tr>		<tr><td  width="200">采购总金额：</td><td> 此项不必填写，系统自动计算</td></tr>		<tr><td  width="200">采购人：</td><td><input name='caigouren' type='text' id='caigouren' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
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
 
	var caigouzongshuobj = document.getElementById("caigouzongshu"); if(caigouzongshuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(caigouzongshuobj.value)){document.getElementById("clabelcaigouzongshu").innerHTML=""; }else{document.getElementById("clabelcaigouzongshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
