package com.infinity.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "USERMODEL")
public class User {
	@Id
	@Column(name = "USER_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	@Column(name = "USER_NAME")
	private String username;
	@Column(name = "USER_REGISTRATIONID")
	private Integer userRegistrationId;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user", orphanRemoval = true, fetch = FetchType.EAGER)
	private List<Address> address;

	public User() {
		super();
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<Address> getAddress() {
		if (address == null) {
			address = new ArrayList<>();
		}
		return address;
	}

	public Integer getUserRegistrationId() {
		return userRegistrationId;
	}

	public void setUserRegistrationId(Integer userRegistrationId) {
		this.userRegistrationId = userRegistrationId;
	}

	public void addAddress(Address addresslist) {

		addresslist.setUser(this);
		getAddress().add(addresslist);

	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", userRegistrationId=" + userRegistrationId
				+ ", address=" + address + "]";
	}
}
