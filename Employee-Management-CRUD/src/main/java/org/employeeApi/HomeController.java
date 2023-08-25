package org.employeeApi;

import org.employeeApi.exceptions.EmployeeNotFoundException;
import org.employeeApi.model.Employee;
import org.employeeApi.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@Autowired
	EmployeeService empService;

	@GetMapping("/home")
	public String homePage() {
		return "home";
	}

	@GetMapping("/getEmployee")
	public String getEmployee(Model model) {
		model.addAttribute("employeeList", empService.getEmployee());
		return "empRecordsPage";
	}

	@GetMapping("/addEmployee")
	public String addEmployeePage() {
		return "savePage";
	}

	@PostMapping("/addEmployee")
	public String addEmployee(@ModelAttribute Employee employee, Model model) {
		try {
			String saveResult = empService.saveEmployee(employee);
			model.addAttribute("resultMessage", saveResult);
		} catch (EmployeeNotFoundException e) {
			model.addAttribute("error", e.getMessage());
		}
		return "savePage";
	}

	@GetMapping("/deleteEmployee")
	public String deleteByName() {
		return "deletePage";
	}

	@PostMapping("/deleteEmployee")
	public String deleteByName(@RequestParam("name") String name, Model model) {
		String deleteResult = empService.deleteByName(name);
		model.addAttribute("message", deleteResult);
		return "deletePage";
	}

	@GetMapping("/findEmployee")
	public String showFindForm() {
		return "view-employee";
	}

	@PostMapping("/findEmployee")
	public String findEmployeeByName(@RequestParam("name") String name, Model model) {
		try {
			Employee employee = empService.findByName(name);
			model.addAttribute("employee", employee);
		} catch (EmployeeNotFoundException e) {
			model.addAttribute("error", e.getMessage());
		}
		return "view-employee";
	}
	
	@GetMapping("/updateEmployee")
	public String updateEmployee() {
		return "updatePage";
	}
	@PostMapping("/updateEmployee")
	public String updateEmployee(@ModelAttribute Employee employee,Model model) {
		try {
			String updatedEmp=empService.updateEmployee(employee);
			model.addAttribute("updatedEmployee", updatedEmp);
		} catch (Exception e) {
			model.addAttribute("errorMsg", e.getMessage());
		}
		return "redirect:getEmployee";
	}

}
