<!DOCTYPE html>
<%@page import="org.employeeApi.model.Employee"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Result</title>
 <!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
    <h3 class="mb-4">Search Employee</h3>
    <form action="findEmployee" method="post" class="mb-3">
        <div class="mb-3">
            <label for="name" class="form-label fs-6">Employee Name:</label>
            <input type="text" id="name" name="name" class="form-control form-control-sm" required>
        </div>
        <button type="submit" class="btn btn-primary">Find</button>
    </form>
    
    <div class="container">
        <% if (request.getAttribute("error") != null) { %>
            <div class="alert alert-danger">
                <%= request.getAttribute("error") %>
            </div>
        <% } else if (request.getAttribute("employee") != null) {
            Employee employee = (Employee) request.getAttribute("employee");
        %>
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th>Employee ID</th>
                        <th>Employee Name</th>
                        <th>Designation</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= employee.getId() %></td>
                        <td><%= employee.getName() %></td>
                        <td><%= employee.getDesg() %></td>
                        <td><%= employee.getSalary() %></td>
                    </tr>
                </tbody>
            </table>
        <% } %>
    </div>
</div>

</body>
</html>
