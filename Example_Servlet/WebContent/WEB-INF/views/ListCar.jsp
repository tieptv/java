<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
div{
text-align: center;
  }
</style>
</head>
<body>

<div><h2>List Car</h2></div>
<table>
  <tr>
    <th>Id</th>
    <th>Maker</th>
    <th>Model</th>
    <th>Year</th>
    <th>Color</th>
    <th>Note</th>
    <th></th>
    <th></th>
  </tr>
        <c:forEach items="${carList}" var="car" >
          <tr>
             <td>${car.id}</td>
             <td>${car.maker}</td>
             <td>${car.model}</td>
              <td>${car.year}</td>
             <td>${car.color}</td>
             <td>${car.note}</td>
             <td>
                <a href="editProduct?code=${car.id}">Edit</a>
             </td>
             <td>
                <a href="deleteProduct?code=${car.id}">Delete</a>
             </td>
          </tr>
       </c:forEach>
</table>

</body>
</html>