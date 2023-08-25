<%@page import="org.employeeApi.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>

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

    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h3 {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
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

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Designation</th>
            <th>Salary</th>
        </tr>
        <%
            List<Employee> employees = (List<Employee>) request.getAttribute("employeeList");
            for (Employee employee : employees) {
        %>
            <tr>
                <td><%= employee.getId() %></td>
                <td><%= employee.getName() %></td>
                <td><%= employee.getDesg() %></td>
                <td><%= employee.getSalary() %></td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
