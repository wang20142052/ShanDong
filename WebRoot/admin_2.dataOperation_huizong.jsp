﻿<%@ page contentType="text/html; charset=utf-8"%>
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
            <li><a href="admin_1.interchange.jsp">企业交互</a></li>
            <li class="now"><a href="admin_2.dataOperation.jsp">数据操作</a></li>
            <li><a href="admin_3.dataAnalyze.jsp">数据分析</a></li>
            <li><a href="admin_4.systemManagement.jsp">系统管理</a></li>
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
                    	<a href="admin_2.dataOperation_chaxun.jsp"><span>数据查询</span></a>
                     </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href="admin_2.dataOperation_daochu.jsp"><span>数据导出</span></a>
                    </div>
                </li>
                <li class="now">
                	<div class="li_m">
                    	<a href="admin_2.dataOperation_huizong.jsp"><span>数据汇总</span></a>
                    </div>
                </li>
                      
           
            </ul>
        </div>
    </div>
    <div class="scd_r">
    	<div class="title">
        	<span>数据汇总</span>
        </div>
        <div class="scd_m">
        	<ul class="alfx clearfix">
			<table border="1" >
            <td> 数据编号</td><td>原人数</td><td> 现人数</td>
            <td> 减少类型</td><td> 首要原因</td><td> 次要原因</td>
            <td> 其他原因</td><td>操作</td>
            </table>
            </ul>
            
    </div>
     <div class="pages">
            	<a href="" class="now">1</a>
                <a href="">2</a>
                <a href="">上一页</a>
                <a href="">下一页</a>

            </div>
        </div>
</div>
</body>
</html>