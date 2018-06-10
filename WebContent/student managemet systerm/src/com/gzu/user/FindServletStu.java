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
		try{// �������ݿ�������ע�ᵽ����������
					Class.forName("com.mysql.jdbc.Driver");
					// ���ݿ������ַ���
					String url = "jdbc:mysql://localhost:3306/test";
					// ���ݿ��û���
					String username = "root";
					// ���ݿ�����
					String password = "root";
					// ����Connection����
					Connection conn =  (Connection) DriverManager.getConnection(url,username,password);
					// ��ȡStatement
					Statement stmt = conn.createStatement();
					// ���ͼ����Ϣ��SQL���
					String sql = "select * from tb_stu";
					// ִ�в�ѯ
					ResultSet rs = stmt.executeQuery(sql);
					// ʵ����List����
					List<User> list = new ArrayList<User>();
					// �жϹ������ƶ������ж��Ƿ���Ч
					while(rs.next()){
						User user=new User();
						// ��id���Ը�ֵ
						user.setId(rs.getInt("id"));
						user.setNum(rs.getInt("num"));
						user.setName(rs.getString("name"));
						user.setAge(rs.getInt("age"));
						user.setStuclass(rs.getString("stuclass"));
						user.setDept(rs.getString("dept"));
						list.add(user);
						
	
					}
					// ��ͼ�鼯�Ϸ��õ�request֮��
					request.setAttribute("list", list);
					rs.close();		// �ر�ResultSet
					stmt.close();	// �ر�Statement
					conn.close();	// �ر�Connection
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				// ����ת����book_list.jsp
				request.getRequestDispatcher("User_list.jsp").forward(request, response);
			}
		}