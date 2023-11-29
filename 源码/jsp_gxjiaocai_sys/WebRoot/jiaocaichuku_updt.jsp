<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教材出库</title>
	
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

new CommDAO().update(request,response,"jiaocaichuku",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jiaocaichuku"); 

%>
  <form  action="jiaocaichuku_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改教材出库:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>出库编号：</td><td><input name='chukubianhao' type='text' id='chukubianhao' value='<%= mmm.get("chukubianhao")%>' class="form-control" /></td></tr>
     <tr><td>书号：</td><td><input name='shuhao' type='text' id='shuhao' value='<%= mmm.get("shuhao")%>' class="form-control" /></td></tr>
     <tr><td>教材名称：</td><td><input name='jiaocaimingcheng' type='text' id='jiaocaimingcheng' value='<%= mmm.get("jiaocaimingcheng")%>' class="form-control" /></td></tr>
     <tr><td>作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='<%= mmm.get("zuozhe")%>' class="form-control" /></td></tr>
     <tr><td>出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='<%= mmm.get("chubanshe")%>' class="form-control" /></td></tr>
     <tr><td>出库数量：</td><td><input name='chukushuliang' type='text' id='chukushuliang' value='<%= mmm.get("chukushuliang")%>' class="form-control" /></td></tr>
     <tr><td>出库时间：</td><td><input name='chukushijian' type='text' id='chukushijian' value='<%= mmm.get("chukushijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>
     <tr><td>经办人：</td><td><input name='jingbanren' type='text' id='jingbanren' value='<%= mmm.get("jingbanren")%>' class="form-control" /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


