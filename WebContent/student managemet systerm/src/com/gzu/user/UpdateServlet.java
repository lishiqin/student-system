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
		int id = Integer.valueOf(request.getParameter("id"));//�����õ���ǿ������ת����   ��ת����ʲô
		int num = Integer.valueOf(request.getParameter("num")); 
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age")); 
		String stuclass =request.getParameter("stuclass");
		String dept = request.getParameter("dept"); 
		try {
			// �������ݿ�������ע�ᵽ����������
			Class.forName("com.mysql.jdbc.Driver");
			// ���ݿ������ַ���
			String url = "jdbc:mysql://localhost:3306/test";
			// ���ݿ��û���
			String username = "root";
			// ���ݿ�����
			String password = "root";
			// ����Connection����
			Connection conn = DriverManager.getConnection(url,username,password);
			// ����SQL���
			String sql = "update tb_stu set name=? where id=?";
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�һ��������ֵ
			ps.setString(1, name);
			// ��SQL����еĵڶ���������ֵ
			ps.setInt(2, id);
			// ִ�и��²���
			ps.executeUpdate();
			// �ر�PreparedStatement
			ps.close();
			// �ر�Connection
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// �ض���FindServlet
		response.sendRedirect("FindServletStu");
	}
}
