<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.gzu.user.User"%>
<%@page import="com.gzu.user.FindServletStu"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有学生信息</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
</head>
<body>
	<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="5">
				<h2>所有学生信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>ID</b></td>
			<td><b>学号</b></td>
			<td><b>姓名</b></td>
			<td><b>年级</b></td>
			<td><b>班级</b></td>
			<td><b>学院</b></td>
			
		</tr>
			<%
				// 获取图书信息集合
				//List<User> list =(List<User>)request.getAttribute("list");
				
					List<User> list = (List<User>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(User user : list){
			%>
				<tr align="center" bgcolor="white">
				
					<td><%=user.getNum()%></td>
					<td><%=user.getName()%></td>
					<td><%=user.getAge()%></td>
					<td><%=user.getStuclass()%></td>
					<td><%=user.getDept()%></td>
					
					
				</tr>
			<%
					}
				}
			%>
	</table>
</body>
</html>