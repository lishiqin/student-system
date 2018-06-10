package com.gzu.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.valueOf(request.getParameter("id"));//这里用到了强制类型转换，   哪转换成什么
		int num = Integer.valueOf(request.getParameter("num")); 
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age")); 
		String stuclass =request.getParameter("stuclass");
		String dept = request.getParameter("dept"); 
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/test";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "root";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 更新SQL语句
			String sql = "update tb_stu set name=? where id=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第一个参数赋值
			ps.setString(1, name);
			// 对SQL语句中的第二个参数赋值
			ps.setInt(2, id);
			// 执行更新操作
			ps.executeUpdate();
			// 关闭PreparedStatement
			ps.close();
			// 关闭Connection
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// 重定向到FindServlet
		response.sendRedirect("FindServletStu");
	}
}
