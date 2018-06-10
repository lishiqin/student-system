<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
<title>学生管理系统</title>
</head>
<body background=images/login.jpg>
<center>
<H1>学生管理系统登录</H1>
</center>
<div align="center" class="box">
<form id="form" action="main.jsp" method="post">
用              户           名:
<input name="usename" type="text" id="UserName4" maxlength="20">
<br/>
密                        码:
<input name="pwd" type="password" id="PWD14" size="20" maxlength="20">
<br/>
<input type=reset value="重新填写">
<input type=submit value="登录">
</form>
<a class="btn_style" id "btn_login" href="javascript:login()">登录</a>
<a class="btn_style" id "btn_reset" href="javascript:reset()">重新填写</a>
<br/>
<font id="error" color="red">${error } </font>
</div>
</body>
</html>
