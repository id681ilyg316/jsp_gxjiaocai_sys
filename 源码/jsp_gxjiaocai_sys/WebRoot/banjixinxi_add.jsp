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
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="banjixinxi_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"banjixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="banjixinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加班级信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">班级名：</td><td><input name='banjiming' type='text' id='banjiming' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelbanjiming' /></td></tr>
		<tr><td width="200">入学时间：</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
		<tr><td  width="200">所在院系：</td><td><input name='suozaiyuanxi' type='text' id='suozaiyuanxi' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">所在专业：</td><td><input name='suozaizhuanye' type='text' id='suozaizhuanye' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">人数：</td><td><input name='renshu' type='text' id='renshu' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelrenshu' />必需数字型</td></tr>
		<tr><td  width="200">辅导员电话：</td><td><input name='fudaoyuandianhua' type='text' id='fudaoyuandianhua' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelfudaoyuandianhua' />必需电话格式[7或8位电话，或11位手机]</td></tr>
		
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
 
	var banjimingobj = document.getElementById("banjiming"); if(banjimingobj.value==""){document.getElementById("clabelbanjiming").innerHTML="&nbsp;&nbsp;<font color=red>请输入班级名</font>";return false;}else{document.getElementById("clabelbanjiming").innerHTML="  "; } 
	var banjimingobj = document.getElementById("banjiming");  
if(banjimingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=banjixinxi&col=banjiming&value="+banjimingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelbanjiming").innerHTML="&nbsp;&nbsp;<font color=red>班级名已存在</font>";  
return false;
}else{document.getElementById("clabelbanjiming").innerHTML="  ";  
}  
} 
	var renshuobj = document.getElementById("renshu"); if(renshuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(renshuobj.value)){document.getElementById("clabelrenshu").innerHTML=""; }else{document.getElementById("clabelrenshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var fudaoyuandianhuaobj = document.getElementById("fudaoyuandianhua"); if(fudaoyuandianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(fudaoyuandianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(fudaoyuandianhuaobj.value)){document.getElementById("clabelfudaoyuandianhua").innerHTML=""; }else{document.getElementById("clabelfudaoyuandianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需电话格式[7或8位电话，或11位手机]</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
