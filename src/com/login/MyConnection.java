package com.login;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection 
{
	static Connection conn = null;
	public static Connection getConn(){
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/AsIntern01","root","");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return conn;
	}
}
