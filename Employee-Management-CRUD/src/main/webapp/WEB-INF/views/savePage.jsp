<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Save Employee</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getEmployee">Employee Record</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addEmployee">Save</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="deleteEmployee" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Delete
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">by Id</a></li>
            <li><a class="dropdown-item" href="#">by Name</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">by Designation</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="updateEmployee" tabindex="-1">Update</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findEmployee">search</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container mt-5">
    <form action="addEmployee" method="post">
        <div class="mb-3">
            <label for="employeeId" class="form-label">Employee ID</label>
            <input type="number" id="employeeId" name="id" class="form-control form-control-sm" required>
        </div>
        <div class="mb-3">
            <label for="employeeName" class="form-label">Employee Name</label>
            <input type="text" id="employeeName" name="name" class="form-control form-control-sm" required>
        </div>
        <div class="mb-3">
            <label for="employeeDesg" class="form-label">Employee Designation</label>
            <input type="text" id="employeeDesg" name="desg" class="form-control form-control-sm">
        </div>
        <div class="mb-3">
            <label for="employeeSalary" class="form-label">Employee Salary</label>
            <input type="number" id="employeeSalary" name="salary" class="form-control form-control-sm" required>
        </div>
        <button type="submit" class="btn btn-primary">Add Employee</button>
    </form>
    
    <hr>
    
    <% String error = (String) request.getAttribute("error");
       if (error != null && !error.isEmpty()) { %>
        <p class="text-danger"><%= error %></p>
    <% } %>
    
    <% String resultMessage = (String) request.getAttribute("resultMessage");
       if (resultMessage != null && !resultMessage.isEmpty()) { %>
        <h5 class="mt-3"><%= resultMessage %></h5>
    <% } %>
</div>

<!-- Include Bootstrap JS and other scripts here if needed -->

</body>
</html>
