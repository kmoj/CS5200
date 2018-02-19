package edu.northeastern.cs5200.model;

public class Developer extends Person {
	
	private String developerKey;

	public String toString() {
		return "Id: " + super.getId() + " username: " 
				+ super.getUsername() + " developerKey: " + this.developerKey + "\n";
	}
	
	public Developer() {
		super();
	}

	public Developer(int id, String firstName, String lastName, String username, String password, String email,
			String dob, String developerKey) {
		super(id, firstName, lastName, username, password, email, dob);
		this.developerKey = developerKey;
	}

	public String getDeveloperKey() {
		return developerKey;
	}

	public void setDeveloperKey(String developerKey) {
		this.developerKey = developerKey;
	}
	
}
