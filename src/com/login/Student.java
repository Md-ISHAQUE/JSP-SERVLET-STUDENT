package com.login;

public class Student 
{
		private int id;
		private String name;
		private String email;
		private String password;
		private int phone;

		public void setID(int id)
		{
			this.id = id;
		}
		public int getID()
		{
			return id;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return password;	
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public void setPhone(int phone)
		{
			this.phone = phone;
		}
		public int getPhone()
		{
			return phone;
		}
	
}
