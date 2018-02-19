package edu.northeastern.cs5200.model;

public class User extends Person {
	private boolean userAgreement;
	private String userKey;
	
	public User() {
		super();
	}

	public User(int id, String firstName, String lastName, String username, String password, String email, String dob, boolean userAgreement, String userKey) {
		super(id, firstName, lastName, username, password, email, dob);
		this.userAgreement = userAgreement;
		this.userKey = userKey;
	}

	public boolean isUserAgreement() {
		return userAgreement;
	}

	public void setUserAgreement(boolean userAgreement) {
		this.userAgreement = userAgreement;
	}

	public String getUserKey() {
		return userKey;
	}

	public void setUserKey(String userKey) {
		this.userKey = userKey;
	}

}
