package com.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StoreRet implements StudentMethodContainer
{
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertStudent(Student s) {
		int status = 0;
		try
		{
			con=MyConnection.getConn(); // Establishing JDBC connection 
			ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
			ps.setInt(1, s.getID());
			ps.setString(2, s.getName());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getPassword());
			ps.setInt(5, s.getPhone());
			status=ps.executeUpdate();
			con.close();
	    }
		catch(Exception e){
	    	System.out.println(e);
		}
		return status;
	}

	@Override
	public Student getStudent(String email, String pass) {
		Student s = new Student();
		try{
			con = MyConnection.getConn();
			ps = con.prepareStatement("select * from student where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				s.setID(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setEmail(rs.getString(3));
				s.setPassword(rs.getString(4));
				s.setPhone(rs.getInt(5));
			}
			
		}catch(Exception e){
			System.out.println(e);
	}
	
		return s;
	}
		
}
