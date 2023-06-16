<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Data</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

  <jsp:include page="userform.html"></jsp:include>  

  <%@page import="com.javaDB.dao.UserDao,com.javaBean.bean.*,java.util.*"%>  

 
 <%  
 List<User> list =UserDao.getAllRecords();
 request.setAttribute("list1",list);  
 %>
 
 
          <h1>Users List</h1> 

  <div class="container">
  
  <table class="table table-striped table-dark" width="90%"> 
   <tr>
		<th>Id</th>
		<th>Name</th>
		<th>Password</th>
		<th>Email</th>  
		<th>Sex</th>
		<th>Country</th>
		<th>Edit</th>
		<th>Delete</th>
  </tr>  
<c:forEach items="${list1}" var="u1">  
			<tr>
				<td>${u1.getId()}</td>
				<td>${u1.getName()}</td>
				<td>${u1.getPassword()}</td>  
				<td>${u1.getEmail()}</td>
				<td>${u1.getSex()}</td>
				<td>${u1.getCountry()}</td>  
			
				<td><a href="editform.jsp?id=${u1.getId()}">Edit</a></td>  
				<td><a href="deleteuser.jsp?id=${u1.getId()}">Delete</a></td>
			</tr>  
</c:forEach>
 




</table>
 
 
 
 <br/>
 <!--  
 <a href="adduserform.jsp"class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home For Register </a>
  
-->
  
  
  </div>
 
 
 
     <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
</body>
</html>
