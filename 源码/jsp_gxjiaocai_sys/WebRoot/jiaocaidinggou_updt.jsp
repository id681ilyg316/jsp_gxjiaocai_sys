<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材订购</title>
	
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

new CommDAO().update(request,response,"jiaocaidinggou",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jiaocaidinggou"); 

%>
  <form  action="jiaocaidinggou_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改教材订购:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>订单号：</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%= mmm.get("dingdanhao")%>' class="form-control" /></td></tr>
     <tr><td>书号：</td><td><input name='shuhao' type='text' id='shuhao' value='<%= mmm.get("shuhao")%>' class="form-control" /></td></tr>
     <tr><td>采购日期：</td><td><input name='caigouriqi' type='text' id='caigouriqi' value='<%= mmm.get("caigouriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>
     <tr><td>采购总数：</td><td><input name='caigouzongshu' type='text' id='caigouzongshu' value='<%= mmm.get("caigouzongshu")%>' class="form-control" /></td></tr>
     <tr><td>采购总金额：</td><td><input name='caigouzongjine' type='text' id='caigouzongjine' value='<%= mmm.get("caigouzongjine")%>' class="form-control" /></td></tr>
     <tr><td>采购人：</td><td><input name='caigouren' type='text' id='caigouren' value='<%= mmm.get("caigouren")%>' class="form-control" /></td></tr>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


