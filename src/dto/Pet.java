package dto;

import java.io.Serializable;

public class Pet implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String petId;
	private String Aname;
	private Integer dutyPrice;
	private String sex;
	private String Atype;
	private String adopt;
	private String description;
	private String filename;
	private int quantity;

	public Pet() {
		super();
	}

	public Pet(String petId, String Aname, Integer dutyPrice) {
		this.petId = petId;
		this.Aname = Aname;
		this.dutyPrice = dutyPrice;
	}

	public String getPetId() {
		return petId;
	}

	public String getAname() {
		return Aname;
	}

	public void setAname(String Aname) {
		this.Aname = Aname;
	}

	public void setPetId(String petId) {
		this.petId = petId;
	}

	public Integer getDutyPrice() {
		return dutyPrice;
	}

	public void setDutyPrice(Integer dutyPrice) {
		this.dutyPrice = dutyPrice;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAtype() {
		return Atype;
	}

	public void setAtype(String Atype) {
		this.Atype = Atype;
	}

	public String getAdopt() {
		return adopt;
	}

	public void setAdopt(String adopt) {
		this.adopt = adopt;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}