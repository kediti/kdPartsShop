package com.kdparts.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kdparts.user.User;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/test";
			String dbID="root";
			String dbPassword = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String userId, String userPw) {
		String SQL = "SELECT userPw FROM USER WHERE userId =?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPw)) {
					return 1; //done!
				}
				else return 0; //pw wrong! 
			}
			return -1; //no ID!
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //db error!
	}
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES(?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, user.getUserNo());
			pstmt.setString(2, user.getUserId());
			pstmt.setString(3, user.getUserPw());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getNickname());
			pstmt.setString(6, user.getTelecom());
			pstmt.setString(7, user.getPhone());
		}catch (Exception e) {
			e.printStackTrace();
		}
		return-1; //db error!
	}
}
