<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Account</h2>          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Email</th>
        <th>Password</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${accountList}" var="a" >
          <tr>
             <td id="c-id">${a.id}</td>
             <td id="c-id">${a.email}</td>
             <td id="c-maker">${a.password}</td>
              <td>
                <button type="button" class="btn btn-info btn-update " data-toggle="modal" data-target="#myModal">Edit</button>
             </td>
             <td>
                <button type="button" class="btn btn-info ">Delete</button>
             </td>
             </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>