package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Roles {
	@Id
	@GeneratedValue
	private int Idroles;
	private String Name;
	private String Description;
	
	public Roles() {
		super();
	}

	public Roles(int id, String name, String description) {
		super();
		Idroles = id;
		Name = name;
		Description = description;
	}

	public Roles(String name, String description) {
		super();
		Name = name;
		Description = description;
	}

	public int getIdroles() {
		return Idroles;
	}

	public void setIdroles(int idroles) {
		Idroles = idroles;
	}

	public int getId() {
		return Idroles;
	}

	public void setId(int id) {
		Idroles = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}
	
	
	
}
