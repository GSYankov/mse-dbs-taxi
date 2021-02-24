package com.ru.mag.db.jdbc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	
	private PreparedStatement studentsForCourse = null;
	
	private static final String GET_RATING_QUERY = "Select %s.firstname, %sRating.rating from Dispatch join %sRating on Dispatch.request_id=%sRating.request_id join %s on Dispatch.driver_id=%s.%s_id WHERE %s.%s_id = ?";
	private static final String GET_PURE_TABLE_QUERY = "SELECT * FROM %s";
	
	private Connection cachedConnection = null;
	
	private static final DBUtil instance = new DBUtil();
	
	private DBUtil()
	{
		
	}
	
	public static DBUtil getInstance(){
		return instance;
	}
	
	private Connection getConnection()
	{
		try {
			if (cachedConnection == null ||
					cachedConnection.isClosed() ||
					!cachedConnection.isValid(10)){
				System.out.println("Attempting to get a new connection to DB!");
				DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
				cachedConnection = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:orcl", "c##ex20_georgi", "123456");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return this.cachedConnection;
	}
	
	private PreparedStatement getStudentsStatement(){
		if (studentsForCourse == null){
			try {
				studentsForCourse = getConnection().prepareStatement(GET_RATING_QUERY);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return studentsForCourse;
	}
	
	public ResultSet getRating(String table, int id){
		ResultSet result = null;
		try {
			String query = String.format(GET_RATING_QUERY, table, table, table, table, table, table, table, table, table);
			PreparedStatement stmt = getConnection().prepareStatement(query);
			stmt.setInt(1, id);
			result = stmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public ResultSet getPureTable(String tableName){
		ResultSet result = null;
		try {
			String query = String.format(GET_PURE_TABLE_QUERY, tableName);
			PreparedStatement stmt = getConnection().prepareStatement(query);
			result = stmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
