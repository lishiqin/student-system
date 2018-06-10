<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<jsp:useBean id="user" class="com.gzu.user.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动，注册到驱动管理器
        out.print("加载数据库驱动成功！！！"+"<br/>");
        String url="jdbc:mysql://localhost:3306/test";//数据库连接字符串
        String name="root";//
        String password="root";
        Connection conn=DriverManager.getConnection(url,name,password);
        //创建connection连接，
        out.print("创建connection连接成功！！！"+"<br/>");
        String sql="insert into tb_stu(num,name,age,stuclass,dept) values(?,?,?,?,?)";
        //添加图书信息的sql语句
        PreparedStatement ps=conn.prepareStatement(sql);
        //获取PreparedStatement
        ps.setInt(1,user.getNum());//对sql语句中的第1个参数赋值
        ps.setString(2,user.getName());//对sql语句中的第2个参数赋值
        ps.setInt(3,user.getAge());//对sql语句中的第3个参数赋值
        ps.setString(4,user.getStuclass());//对sql语句中的第4个参数赋值
        ps.setString(5,user.getDept());//对sql语句中的第4个参数赋值
        int row=ps.executeUpdate();//执行更新操作，返回所影响的行数
        if(row>0){
            out.print("成功添加了 "+row+" 条数据！！！");
        }
        ps.close();
        conn.close();
    }catch(Exception e){
        out.print("学生信息添加失败！！！");
        e.printStackTrace();
    }
%>    
<br>
<a href="main.jsp">返回</a> 

</body>
</html>