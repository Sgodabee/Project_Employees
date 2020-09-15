package com.vsc;
 import java.sql.*;
public class OpenConnection implements Supplier {
	
	static Connection connect = null;
	
	public static Connection getConnection()
	{
		try {
			Class.forName("org.postgresql.Driver");
			connect= DriverManager.getConnection(URL, username, password);
			
			
			
		} catch (Exception e) {
			System.out.println();
			
		}
		return connect;
		
		
	}

}
