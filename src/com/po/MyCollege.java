package com.po;

<<<<<<< HEAD
import org.hibernate.validator.constraints.NotBlank;

public class MyCollege {
	
    private Integer id;
    @NotBlank(message="{mycollege.name.required}")
    private String name;
    @NotBlank(message="{mycollege.sex.required}")
    private String sex;
    @NotBlank(message="{mycollege.password.required}")
    private String password;
    private String birth;
    private String hometown;
    private String id_card;
    private String nation;
    @NotBlank(message="{mycollege.phone.required}")
    private String phone;
    private String email;
    private String worklocation;
    private String industry;
    private String position;
    private String salary;
    private String selfevaluation;


    public String getWorklocation() {
        return worklocation;
    }

    public void setWorklocation(String worklocation) {
        this.worklocation = worklocation;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getSelfevaluation() {
        return selfevaluation;
    }

    public void setSelfevaluation(String selfevaluation) {
        this.selfevaluation = selfevaluation;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "MyCollege [id=" + id + ", name=" + name + ", sex=" + sex + ", password=" + password + ", birth=" + birth
                + ", hometown=" + hometown + ", id_card=" + id_card + ", nation=" + nation + ", phone=" + phone
                + ", email=" + email + "]";
    }

=======


public class MyCollege {
	private Integer id;
	private String name;
	private String sex;
	private String password;
	private String birth;
	private String hometown;
	private String id_card;
	private String nation;
	private String phone;
	private String email;
	private String worklocation;
	private String industry;
	private String position;
	private String salary;
	private String selfevaluation;
	
	
	public String getWorklocation() {
		return worklocation;
	}
	public void setWorklocation(String worklocation) {
		this.worklocation = worklocation;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getSelfevaluation() {
		return selfevaluation;
	}
	public void setSelfevaluation(String selfevaluation) {
		this.selfevaluation = selfevaluation;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String getId_card() {
		return id_card;
	}
	public void setId_card(String id_card) {
		this.id_card = id_card;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "MyCollege [id=" + id + ", name=" + name + ", sex=" + sex + ", password=" + password + ", birth=" + birth
				+ ", hometown=" + hometown + ", id_card=" + id_card + ", nation=" + nation + ", phone=" + phone
				+ ", email=" + email + "]";
	}
	
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
}
