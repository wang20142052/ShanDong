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
</style>
</head>

<!--头部-->
<div class="header">
<div class="space_hx">&nbsp;</div>
<div class="head_td"> 山东省人力资源数据管理系统</div>
    <div class="space_hx">&nbsp;</div>
    <div class="nav_m">
        <div class="n_icon">&nbsp;</div>
        <ul class="nav clearfix">
        	<li><a href="shiuser_mainpage.jsp">首页</a></li>
            <li class="now"><a href="shiuser_1.dataOperation.jsp">数据操作</a></li>
            <li><a href="shiuser_2.dataFill.jsp">数据上报</a></li>
            <li><a href="shiuser_3.dataAnalyze.jsp">数据分析</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>数据操作</span></div>
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li>
                    <div class="li_m">
                        <a href="shiuser_1.dataOperation_xiugai.jsp"><span>数据修改</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="shiuser_1.dataOperation_shanchu.jsp"><span>数据删除</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="shiuser_1.dataOperation_tuihui.jsp"><span>数据退回</span></a>
                    </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href="shiuser_1.dataOperation_chaxun.jsp"><span>数据查询</span></a>
                     </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href="shiuser_1.dataOperation_daochu.jsp"><span>数据导出</span></a>
                    </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href="shiuser_1.dataOperation_huizong.jsp"><span>数据汇总</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>

</html>