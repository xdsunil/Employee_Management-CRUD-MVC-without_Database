<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
        /* Reset some default styles */
        body, h1, h2, h3, p {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: Arial, sans-serif;
        }

        /* Hero section */
        .hero {
            background-color: #f2f2f2;
            text-align: center;
            padding: 100px 0;
        }

        .hero h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 18px;
            color: #777;
            margin-bottom: 30px;
        }

        .hero a {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .hero a:hover {
            background-color: #555;
        }

        /* Sections */
        .section {
            padding: 50px 0;
            text-align: center;
        }

        .section h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .section p {
            font-size: 16px;
            color: #777;
            line-height: 1.6;
        }
    </style>


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
<title>Insert title here</title>
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
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Update</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findEmployee">search</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- Hero Section -->
<div class="hero">
    <h1>Welcome to Employee Management System</h1>
    <p>Your platform for managing employees and departments efficiently.</p>
    <a href="#" class="btn">Learn More</a>
</div>
</body>
</html>