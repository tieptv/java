<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div><h2>List Car</h2></div>
<table  class="table table-striped">
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
             <td id="c-id">${car.id}</td>
             <td id="c-maker">${car.maker}</td>
             <td id="c-model">${car.model}</td>
             <td id="c-year">${car.year}</td>
             <td id="c-color">${car.color}</td>
             <td id="c-note">${car.note}</td>
             <td>
                <button type="button" class="btn btn-info btn-update " data-toggle="modal" data-target="#myModal">Edit</button>
             </td>
             <td>
                <button type="button" class="btn btn-info ">Delete</button>
             </td>
          </tr>
       </c:forEach>
</table>
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="btn btn-link" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Edit Car</h4>
        </div>
       <form id="form">

      <label for="email">Maker</label>
      <input type="text" class="form-control" id="text-maker" placeholder="Maker">

 
      <label for="pwd">Model:</label>
      <input type="text" class="form-control" id="text-model" placeholder="Model">


      <label for="pwd">Year:</label>
      <input type="text" class="form-control" id="text-year" placeholder="Year">
   
       <label for="pwd">Color:</label>
       <input type="text" class="form-control" id="text-color" placeholder="Color">

       <label for="pwd">Note:</label>
       <input type="text" class="form-control" id="text-note" placeholder="Note">
 </form>
        <div class="modal-footer">
         <button type="button" class="btn btn-success btn-save">OK</button>
          <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <script>
  $(document).ready(function(){
	  //----//
	  $("body").on("click",".btn-update",function(){
	    var carID = $(this).closest("tr").find("td:first").text();
		var maker = $(this).closest("tr").find("#c-maker").text();
		var model = $(this).closest("tr").find("#c-model").text();
		var manufactureYear = $(this).closest("tr").find("#c-year").text();
		var color = $(this).closest("tr").find("#c-color").text();
		var note = $(this).closest("tr").find("#c-note").text();
		
		$("#form").find("#text-maker").val(maker);
		$("#form").find("#text-model").val(model);
		$("#form").find("#text-year").val(manufactureYear);
		$("#form").find("#text-color").val(color);
		$("#form").find("#text-note").val(note);
	  })
	  var self = $(this);
	  $("#btn-save-update").click(function(){
			var carID = $("#form").find("#text-car-id").val();
			var maker = $("#form").find("#text-maker").val();
			var model = $("#form").find("#text-model").val();
			var year = $("#form").find("#text-manufacture-year").val();
			var color = $("#form").find("#text-color").val();
			var note = $("#form").find("#text-note").val();
			
			$.ajax({
				url : "HomeServlet?method=updateCar",
				type : "POST",
				data : {
					carID: parseInt(carID),
					maker: maker,
					model: model,
					manufactureYear: manufactureYear,
					color: color,
					note: note
				},
				success : function(value) {
					if ("true" == value.toString()) {
						$("#modelFormUpdateCar").modal("hide");
						alert("Update successfully");
						self.closest("tr").find("#p-maker").text(maker);
						self.closest("tr").find("#p-model").text(model);
						self.closest("tr").find("#p-manufacture-year").text(manufactureYear);
						self.closest("tr").find("#p-color").text(color);
						self.closest("tr").find("#p-note").text(note);
						
					} else {
						$("#modelFormUpdateCar").modal("hide");
						alert("Update error");
					}

				}
			});
			
		});
  });
  </script>
</body>
</html>