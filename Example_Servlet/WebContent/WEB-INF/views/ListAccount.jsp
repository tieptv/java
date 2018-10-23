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
<style>
.btn{
   width: 60px;
  }
  .th_btn{
  width:60px;
  }
  #th_password{
  width:60%;
  }
</style>
<body>
<jsp:include page="home.jsp"></jsp:include>
<div class="container">
  <h2>Account</h2>          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Email</th>
        <th id="th_password">Password</th>
        <th class="th_btn"></th>
        <th class="th_btn"></th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${accountList}" var="a" >
          <tr>
             <td id="id">${a.id}</td>
             <td id="email">${a.email}</td>
             <td id="pass">${a.password}</td>
              <td >
                <button type="button" class="btn btn-info btn-update " data-toggle="modal" data-target="#myModal">Edit</button>
             </td>
             <td >
                <button type="button" class="btn btn-info ">Delete</button>
             </td>
             </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal form-->
      <div class="modal-content">
        <form>
        <label >Email address</label>
        <input id="text_email" type="email" class="form-control" placeholder="Enter email">
        <label >Password</label>
        <input id="text_pass" type="password" class="form-control"  placeholder="Password">
        </form>
        <div class="modal-footer">
        <button id="btn_save" class="btn_default"></button>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <script type="text/javascript">
  
  
  
  </script>
</body>
</html>