<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>山东省人力资源数据采集系统</title>
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/thems.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
p.leftmargin {
	margin-left: 35%
}

.download{margin-left: 30%
   
}
.datafill{
	text-align:center;
}
.input{text-align:center;}
.clear{clear:both;}
.ehdel_upload_show input{float:center; margin-top:10px;}
.ehdel_upload{float:center;margin-top:-20px; *margin-top:-40px; filter:alpha(opacity=0);-moz-opacity:0;opacity:0;}
.submit{magin-right:30%}
</style>
</head>

<!--头部-->
<div class="header">
<div class="space_hx">&nbsp;</div>
<div class="head_td"> 山东省人力资源数据管理系统</div>
    <div class="space_hx">&nbsp;</div>
    <div class="nav_m">
        <div class="n_icon">&nbsp;</div>
        <div>
        <ul class="nav clearfix">
        	<li><a href="shiuser_mainpage.jsp">首页</a></li>
            <li><a href="shiuser_1.dataOperation.jsp">数据操作</a></li>
            <li class="now"><a href="shiuser_2.dataFill.jsp">数据上报</a></li>
            <li><a href="shiuser_3.dataAnalyze.jsp">数据分析</a></li>
        </ul>
        </div>
        </div>
	<%
		Date date = new Date();
	%>
	<p align="right">
		<%=date.getMonth() + 1%>月<%=date.getDate()%>号&nbsp;星期<%=date.getDay()%></p>
	<hr>
	</div>
	<div class=insert>
	<table align="center">
	<tr><td>企业名称</td><td><input type="text" name="enterprisename" value="必填"></td></tr>
	<tr><td>建档期就业人数</td><td><input type="text" name="crewnumearly" value="必填"></td></tr>
	<tr><td>调查期就业人数</td><td><input type="text" name="crewnumlater" value="必填"></td></tr>
	<tr><td>其他原因</td><td><input type="text" name="otherreason" value="必填"></td></tr>
	<tr><td>就业人数减少类型</td><td><input type="text" name="typeofdecrease" value="选填"></td></tr>
	<tr><td>主要原因</td><td><input type="text" name="mainreason" value="选填"></td></tr>
	<tr><td>主要原因说明</td><td><input type="text" name="discriptionmain" value="选填"></td></tr>
	<tr><td>次要原因</td><td><input type="text" name="secondreason" value="选填"></td></tr>
	<tr><td>次要原因说明</td><td><input type="text" name="discriptionsecond" value="选填"></td></tr>
	<tr><td>第三原因</td><td><input type="text" name="thirdreason" value="选填"></td></tr>
	<tr><td>第三原因说明</td><td><input type="text" name="discriptionthird" value="选填"></td></tr>
	</table>
	<div class="submit"><input type="submit" value="提交" name="save"></div>
	</div>
	</div>
	</html>