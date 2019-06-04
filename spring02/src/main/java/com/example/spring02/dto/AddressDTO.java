package com.example.spring02.dto;

public class AddressDTO {
	private int no;
	private String name;
	private String gender;
	private String phone;
	private String birthday;
	private String address;

	public AddressDTO() {
		super();
	}

	public AddressDTO(int no, String name, String gender, String phone, String birthday, String address) {
		super();
		this.no = no;
		this.name = name;
		this.gender = gender;
		this.phone = phone;
		this.birthday = birthday;
		this.address = address;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "AddressDTO [no=" + no + ", name=" + name + ", gender=" + gender + ", phone=" + phone + ", birthday="
				+ birthday + ", address=" + address + "]";
	}



}
