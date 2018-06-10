<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name=request.getParameter("name");
String password=request.getParameter("pwd");
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>学生管理系统</title>
<style>
*{
box-sizing:border-box;
}
body{
margin:0;
}
/* stytle of header*/
.header{
padding:20px;
text-align:center;
}
/* stytle of top navi*/
.topnavi{
overflow:hidden;
<img src="E:\图片\2.jpg">
padding:40px;
}
.topnavi a {
display:block;
text-decoration:none;
color:#f2f2f2;
float:left;/* all in one line*/
padding:28px;
}
.topnavi a:hover{
background-color:#ddd;
color:black;
}
/*style of main content*/
.column{
float:left;
}
.column.middle {
width:50%;
}
.column.side{
width:22%;
}
.row:after{
content:"";
display:table;
clear:both;
}
@media screen and (max-width:600px){
.column.middle,.column.side{
width:100%;
}
}
.footer{
background-color:#f1f1f1;
text-align:center;
padding:15px 10px;
}
</style>
</head>}
<body background=images/veer.jpg>
<div class="header">
<h1>欢迎进入学生管理系统</h1>
<div data-role="fieldcontain">
<label for="search">搜索</label>
<input type="search" name="search" id="search" value=""/>
</div>
</div>
<div class="topnavi">
<table width="1000" height="40" border="1" bgcolor="A4B6D7" align="center">
<tr>
<td align="center" valign="middle">外语辅导查询</td>
<td align="center" valign="middle">成绩查询</td>
<td align="center" valign="middle">奖学金管理</td>
<td align="center" valign="middle">勤工助学管理</td>
<td align="center" valign="middle">奖惩记录</td>
<td align="center" valign="middle">教材管理</td>
</tr>
</table>
</div>
<div class="row">
<div class="column side">
<table width="180" height="500" border="1" align="center">
<tr>
<td align="center" valign="middle"><a href="FindServletStu">学生信息查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">修改个人信息</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">班级添加</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">教师管理</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">课程管理</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">学生活动</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">宿舍管理</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">缺课查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">学生管理</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">修改个人密码</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">班级管理</a></td>
</tr>
</table>
</div>
<div class="column middle">
<form action="add.jsp" method="post" ">
<table align="center" width="450">
<tr>
<td align="center" colspan="2">
<h2>学生信息添加</h2>
<hr>
</td>
</tr>
<tr>
<td align="right">学生学号:</td>
<td><input type="text" name="num"/></td>
</tr>
<tr>
<td align="right">学生姓名:</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td align="right">学生年龄:</td>
<td><input type="text" name="age"/></td>
</tr>
<tr>
<td align="right">学生班级:</td>
<td><input type="text" name="stuclass"/></td>
</tr>
<tr>
<td align="right">学生学院:</td>
<td><input type="text" name="dept"/></td>
</tr>
<tr>
<td align="center" colspan="2">
<input type="submit" value="添加">
</td>
</tr>
</table>
</form>
</div>
<div class="column side">
<table width="180" height="500" border="1" align="center">
<tr>
<td align="center" valign="middle"><a href="1.jsp">心理辅导</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">考勤查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">医疗保险查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">一卡通查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">教室查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">学费查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">考研查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">选课查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">活动记录查询</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">教学评价</a></td>
</tr>
<tr>
<td align="center" valign="middle"><a href="2.jsp">档案查询</a></td>
</tr>
</table>
</div>
</body></html>