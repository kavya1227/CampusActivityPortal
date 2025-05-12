package com.model;

public class Activity {
    private String id;
    private String aname;
    private String branch;
    private String uname;
    private String phone;

    public Activity(String id, String aname, String branch, String uname, String phone) {
        this.id = id;
        this.aname = aname;
        this.branch = branch;
        this.uname = uname;
        this.phone = phone;
    }

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
