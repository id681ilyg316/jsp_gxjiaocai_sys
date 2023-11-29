<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>教材信息</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaocaixinxi_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"jiaocaixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiaocaixinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加教材信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">书号：</td><td><input name='shuhao' type='text' id='shuhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">教材名称：</td><td><input name='jiaocaimingcheng' type='text' id='jiaocaimingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">出版编号：</td><td><input name='chubanbianhao' type='text' id='chubanbianhao' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelchubanbianhao' />必需数字型</td></tr>
		<tr><td  width="200">出版日期：</td><td><input name='chubanriqi' type='text' id='chubanriqi' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">单价：</td><td><input name='danjia' type='text' id='danjia' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeldanjia' />必需数字型</td></tr>
		<tr><td  width="200">封面：</td><td><input name='fengmian' type='text' id='fengmian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fengmian')"  /></div></td></tr>
		
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
 
	var chubanbianhaoobj = document.getElementById("chubanbianhao"); if(chubanbianhaoobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(chubanbianhaoobj.value)){document.getElementById("clabelchubanbianhao").innerHTML=""; }else{document.getElementById("clabelchubanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var danjiaobj = document.getElementById("danjia"); if(danjiaobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(danjiaobj.value)){document.getElementById("clabeldanjia").innerHTML=""; }else{document.getElementById("clabeldanjia").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
