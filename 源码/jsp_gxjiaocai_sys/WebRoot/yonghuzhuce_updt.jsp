<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>用户注册</title><script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:320,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}
}
</script>

  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"yonghuzhuce",ext,true,false,"yonghuzhuce_list.jsp"); 
HashMap mmm = new CommDAO().getmap(id,"yonghuzhuce"); 
%>
  <body >
 
  <form  action="yonghuzhuce_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1"  onsubmit="return checkform();">
  修改用户注册:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='' readonly="readonly" /> 此项不得修改 </td>
     </tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='' /></td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='' /></td></tr>
	 <tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr>
	 <tr><td>出生年月：</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' /></td></tr>
	 <tr><td>QQ：</td><td><input name='QQ' type='text' id='QQ' value='' /></td></tr><tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='' /></td></tr>
	 <tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' /></td></tr>
	 <tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' /></td></tr>
	 <tr><td>头像：</td><td><input name='touxiang' type='text' id='touxiang' size='50' value='' />&nbsp;<input type='button' value='上传' onClick="up('touxiang')"/></td></tr>
	 <tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='' /></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
<%=Info.tform(mmm,"f1")%> 

