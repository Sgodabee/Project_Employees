package com.vsc;
import java.sql.*;

import com.vsc.branch.Branch;

public class EmployeeDAO {
	
	static Connection conn;
	static PreparedStatement statement;
	static Branch brc ;
	
	public static int insetEmployee(Employee emp)
	{   
		 int status = 0;
		 
		try {
				String name =emp.getName();
				String surname = emp.getSurname();
				
				char c []= name.toCharArray();
				char d[] = surname.toCharArray();
				
				//initials
				String initials = c[0]+""+""+d[0];
				
				//Random Number
				int randomId = (int) (Math.random()*9000)+1000;
				
				
				String empId =initials+""+String.valueOf(randomId);
				
			
				
			conn = OpenConnection.getConnection();
			statement=conn.prepareStatement("insert into employees values(?,?,?,?,?,?,?,?)");
			statement.setString(1,empId);
			statement.setString(2,emp.getName());
			statement.setString(3,emp.getSurname());
			statement.setString(4,emp.getBirthday());
			statement.setInt(5,emp.getTelephone());
			statement.setString(6,emp.getLocation());
			statement.setString(7, emp.getMarital_stat());
			statement.setString(8,brc.getBranch_name());
			status= statement.executeUpdate();
			conn.close();
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return status;
	}

}
