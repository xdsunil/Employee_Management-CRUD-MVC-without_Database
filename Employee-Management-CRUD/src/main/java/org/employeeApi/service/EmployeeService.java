package org.employeeApi.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.employeeApi.exceptions.EmployeeNotFoundException;
import org.employeeApi.model.Employee;
import org.employeeApi.repo.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {

	@Autowired
	EmployeeRepo empRepo;

	private List<Employee> employees = new ArrayList<Employee>();

	public List<Employee> getEmployee() {
		return empRepo.getEmployee();
	}

	public String saveEmployee(Employee employee) {
		if (employee.getName() == null) {
			throw new EmployeeNotFoundException("Employee Name is Required");
		} else {
			empRepo.saveEmployee(employee);
			return "employee " + employee.getName() + " is saved Successfully";
		}
	}

	public boolean deleteEmployee(int id) {
		Iterator<Employee> iterator = employees.iterator();
		while (iterator.hasNext()) {
			Employee employee = iterator.next();
			if (employee.getId() == id) {
				iterator.remove();
				return true;
			}
		}
		return false;
	}

	public String deleteByName(String name) {
		boolean deleted = empRepo.deletebyname(name);
		if (deleted) {
			return "Employee " + name + " is delted";
		} else {
			return "Employee not Found or not deleted";
		}
	}

	public Employee findByName(String employeeName) {
		return empRepo.findByName(employeeName);
	}

	public Employee findById(Integer employeeId) {
		return empRepo.findById(employeeId);
	}

	public String updateEmployee(Employee employee) {
		empRepo.updateEmployee(employee);
		return employee.getName() + " is updated successfuly..!";
	}

}
