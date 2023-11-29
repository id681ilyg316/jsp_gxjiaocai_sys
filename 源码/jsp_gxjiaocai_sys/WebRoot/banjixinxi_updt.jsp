<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>班级信息</title>
	
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

new CommDAO().update(request,response,"banjixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"banjixinxi"); 

%>
  <form  action="banjixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改班级信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>班级名：</td><td><input name='banjiming' type='text' id='banjiming' value='<%= mmm.get("banjiming")%>' class="form-control" /></td></tr>
     <tr><td>入学时间：</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='<%= mmm.get("ruxueshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>
     <tr><td>所在院系：</td><td><input name='suozaiyuanxi' type='text' id='suozaiyuanxi' value='<%= mmm.get("suozaiyuanxi")%>' class="form-control" /></td></tr>
     <tr><td>所在专业：</td><td><input name='suozaizhuanye' type='text' id='suozaizhuanye' value='<%= mmm.get("suozaizhuanye")%>' class="form-control" /></td></tr>
     <tr><td>人数：</td><td><input name='renshu' type='text' id='renshu' value='<%= mmm.get("renshu")%>' class="form-control" /></td></tr>
     <tr><td>辅导员电话：</td><td><input name='fudaoyuandianhua' type='text' id='fudaoyuandianhua' value='<%= mmm.get("fudaoyuandianhua")%>' class="form-control" /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


