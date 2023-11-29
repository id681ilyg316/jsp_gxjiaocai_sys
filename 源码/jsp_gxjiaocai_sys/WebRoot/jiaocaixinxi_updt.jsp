<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材信息</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"jiaocaixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jiaocaixinxi"); 

%>
  <form  action="jiaocaixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改教材信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>书号：</td><td><input name='shuhao' type='text' id='shuhao' value='<%= mmm.get("shuhao")%>' class="form-control" /></td></tr>
     <tr><td>教材名称：</td><td><input name='jiaocaimingcheng' type='text' id='jiaocaimingcheng' value='<%= mmm.get("jiaocaimingcheng")%>' class="form-control" /></td></tr>
     <tr><td>作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='<%= mmm.get("zuozhe")%>' class="form-control" /></td></tr>
     <tr><td>出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='<%= mmm.get("chubanshe")%>' class="form-control" /></td></tr>
     <tr><td>出版编号：</td><td><input name='chubanbianhao' type='text' id='chubanbianhao' value='<%= mmm.get("chubanbianhao")%>' class="form-control" /></td></tr>
     <tr><td>出版日期：</td><td><input name='chubanriqi' type='text' id='chubanriqi' value='<%= mmm.get("chubanriqi")%>' class="form-control" /></td></tr>
     <tr><td>单价：</td><td><input name='danjia' type='text' id='danjia' value='<%= mmm.get("danjia")%>' class="form-control" /></td></tr>
     <tr><td>封面：</td><td><input name='fengmian' type='text' id='fengmian' size='50' value='<%= mmm.get("fengmian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fengmian')"/></div></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


