package org.employeeApi.repo;

import java.util.ArrayList;
import java.util.List;

import org.employeeApi.model.Employee;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeRepo {

	private List<Employee>empList=new ArrayList<Employee>();
	
	public EmployeeRepo() {
		empList.add(new Employee(10, "Sunil Rathod", "Java Developer", 20000));
		empList.add(new Employee(20, "Shubham Jadhav", "React Developer", 25000));
	}
	
	public List<Employee> getEmployee() {
		return empList;
	}

	public void saveEmployee(Employee employee) {
		empList.add(employee);
	}

	public Employee findByName(String employeeName) {
		Employee employee = null;
		for (int i = 0; i < empList.size(); i++) {
			if (empList.get(i).getName().equals(employeeName)) {
				employee = empList.get(i);
			}
		}
		return employee;
	}
	
	public boolean deletebyname(String name) {
		Employee employeeToDelete=null;
		for (Employee employee : empList) {
			if(employee.getName().equals(name)) {
				employeeToDelete=employee;
				break;
			}
		}
		if(employeeToDelete != null) {
			empList.remove(employeeToDelete);
			return true;
		}
		return false;
}
	public Employee findById(Integer id) {
		Employee employee=null;
		for(int i=0;i<empList.size();i++) {
			if(empList.get(i).getId().equals(id)) {
				employee=empList.get(i);
		}
		}
		return employee;
	}

	public void updateEmployee(Employee updatedEmployee) {
		empList.forEach(employee ->{
			if(employee.getId().equals(updatedEmployee.getId())) {
				employee.setId(updatedEmployee.getId());
				employee.setName(updatedEmployee.getName());
				employee.setDesg(updatedEmployee.getDesg());
				employee.setSalary(updatedEmployee.getSalary());
			}
		});
		
	}
}
