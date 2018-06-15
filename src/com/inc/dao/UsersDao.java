package com.inc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.inc.util.DbCloser;
import com.inc.util.DbConnector;
import com.inc.util.MyBatisConnector;
import com.inc.vo.UsersVo;

public class UsersDao {
	private static UsersDao single;
	private UsersDao() {
	}
	
	public static UsersDao getInstance() {
		if(single == null) {
			single = new UsersDao();
		}
		return single;
	}
	
	public String getIdCount(String id2) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String searchedId = null;
		try {
			conn = DbConnector.getInstance().getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(
				"select id2 from users where id2 = '"+id2+"'");
			if(rs.next()) {
				searchedId = rs.getString("id2");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbCloser.close(conn, stmt, rs);
		}
		
		return searchedId;
	}
	
	public void signup(UsersVo uvo) {
		Connection conn = null;
		Statement stmt = null;

		try {
			conn = DbConnector.getInstance().getConnection();
			stmt = conn.createStatement();
			String query = 
				String.format(
				"insert into users values(seq_users_id.nextval,'%s','%s','%s')", 
				uvo.getId2(), uvo.getName(),uvo.getPassword());
			stmt.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbCloser.close(conn, stmt, null);
		}
	}

	public UsersVo selectOne(String id2) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		UsersVo uvo = null;
		try {
			conn = DbConnector.getInstance().getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(
				"select * from users where id2 = '"+id2+"'");
			if(rs.next()) {
				uvo = new UsersVo(rs.getInt("id"), 
								rs.getString("id2"),
								rs.getString("name"), 
						        rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbCloser.close(conn, stmt, rs);
		}
		return uvo;
	}
}
