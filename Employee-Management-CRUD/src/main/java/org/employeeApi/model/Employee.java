package org.employeeApi.model;

public class Employee {

	private Integer id;
	private String name;
	private String desg;
	private long salary;

	public Employee() {
		super();
	}

	public Employee(Integer id, String name, String desg, long salary) {
		super();
		this.id = id;
		this.name = name;
		this.desg = desg;
		this.salary = salary;
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

	public String getDesg() {
		return desg;
	}

	public void setDesg(String desg) {
		this.desg = desg;
	}

	public long getSalary() {
		return salary;
	}

	public void setSalary(long salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", desg=" + desg + ", salary=" + salary + "]";
	}
}
