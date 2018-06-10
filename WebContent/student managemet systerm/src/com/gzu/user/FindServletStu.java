package com.gzu.user;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

public class FindServletStu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{// 加载数据库驱动，注册到驱动管理器
					Class.forName("com.mysql.jdbc.Driver");
					// 数据库连接字符串
					String url = "jdbc:mysql://localhost:3306/test";
					// 数据库用户名
					String username = "root";
					// 数据库密码
					String password = "root";
					// 创建Connection连接
					Connection conn =  (Connection) DriverManager.getConnection(url,username,password);
					// 获取Statement
					Statement stmt = conn.createStatement();
					// 添加图书信息的SQL语句
					String sql = "select * from tb_stu";
					// 执行查询
					ResultSet rs = stmt.executeQuery(sql);
					// 实例化List对象
					List<User> list = new ArrayList<User>();
					// 判断光标向后移动，并判断是否有效
					while(rs.next()){
						User user=new User();
						// 对id属性赋值
						user.setId(rs.getInt("id"));
						user.setNum(rs.getInt("num"));
						user.setName(rs.getString("name"));
						user.setAge(rs.getInt("age"));
						user.setStuclass(rs.getString("stuclass"));
						user.setDept(rs.getString("dept"));
						list.add(user);
						
	
					}
					// 将图书集合放置到request之中
					request.setAttribute("list", list);
					rs.close();		// 关闭ResultSet
					stmt.close();	// 关闭Statement
					conn.close();	// 关闭Connection
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				// 请求转发到book_list.jsp
				request.getRequestDispatcher("User_list.jsp").forward(request, response);
			}
		}