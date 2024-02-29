<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.ums.model.User" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "a" %>
  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>USER MANAGEMENT SYSTEM</title>
</head>
<body style="background-color:aqua">

<nav class="navbar navbar-expand-lg style="background-color:aqua">
  <div class="container-fluid">
    <a class="navbar-brand"><i>USER MANAGEMENT SYSTEM</i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/list"><u><i>USERS</i></u></a>
        </li>
      </ul>
    </div>
   </div>
</nav>


<h1 style="color:blue" align="center">USER MANAGEMENT SYSTEM</h1>
<hr></hr>
<br>

<div class="container">
<a href="<%=request.getContextPath()%>/add" class="btn btn-success">ADD USER</a>
<br><br>

<table class="table table-striped">
	
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>EMAIL</th>
		<th>CITY</th>
		<th>ACTIONS</th>
	</tr>

	<tbody>
		<%ArrayList<User> al = (ArrayList<User>) request.getAttribute("display"); %>
	
	<a:forEach items="${display}" var="u">
	<tr>
	<td><a:out value="${u.id}"></a:out></td>
	<td><a:out value="${u.name}"></a:out></td>
	<td><a:out value="${u.email}"></a:out></td>
	<td><a:out value="${u.city}"></a:out></td>
	<td> <a href="edit?id=<a:out value="${u.id}"></a:out>">EDIT</a>&nbsp;&nbsp;&nbsp;<a href="delete?id=<a:out value="${u.id}"></a:out>">DELETE</a></td>
	
	</tr>
	</a:forEach>
	</tbody>
		
	
 
</table>
</div>


</body>
</html>