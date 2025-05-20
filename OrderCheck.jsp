<%-- 
    Document   : PaymentPage
    Created on : 14 Sep, 2024, 3:08:21 PM
    Author     : Save
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table class="table table-stripped"id="tabl" class="table"> 
              <thead> 
                <tr> 
                    <th scope="col">Order Id</th> 
                    <th scope="col">Product Id</th>
                    <th scope="col">Product Name</th> 
                     
                    <th scope="col">Price</th> 
                     <th scope="col">Quntity</th> 
                    <th scope="col">Product Total</th> 
                    <th scope="col">Status</th> 
                    <th scope="col">About Delivery</th>
                     
                      
                </tr> 
            </thead>
            <tbody> 
                
            </tbody> 
           
        </table>
        
        
        
        <script>
            
            
     $(document).ready(function ()
     {
       //  alert("reached here");
        //   var id = getParameterByName('id');
          //      console.log("Retrieved ID: " + id);  
                
            
            
                $.get("http://localhost:8096/orderData",function (data,status){
               // alert(data.length); 
                  
                  $("#tabl tbody").empty(); 
	      data.forEach(function (item) { 
	$("#tabl tbody").append('<tr> <td name="orderid"> '+item.orderid+' </td> <td><p name="item_id">'+item. item_id+'</p></td><td name="food_name"> '+item.food_name+' </td> <td name="item_price"> '+item.item_price+' </td> <td name="user_quantity"> '+item.user_quantity+' </td> <td name="item_totalprice"> '+item.item_totalprice+' </td><td>'+item.status+'</td><td>'+item.delivery+'<br><br><label>Status:</label><select name="status" class="status"><option value="pending">pending</option><option value="approved">Approved</option></select><br><label>Delivery Date:</label><input type="date" name="delivery" class="delivery"><br><button type="submit" class="update">Update</button> </tr>'
                                                 ); 	
                                         
    });              
                });
                                         
           /*   $.get("http://localhost:8096/orderData", function(data, status) {
    // Empty the table body before appending new rows
    $("#tabl tbody").empty();

    // Iterate over each item in the response data
    data.forEach(function(item) {
        $("#tabl tbody").append
        (
           ' <tr>
                <td name="orderid"> $ </td>
                <td><p name="item_id"></p></td>
                <td name="food_name">  </td>
                <td name="item_price">  </td>
                <td name="user_quantity"> </td>
                <td name="item_totalprice">  </td>
                <td></td>
                <td>
                   
                    <br><br>
                    <label>Status:</label>
                    <select name="status" class="status">
                        <option value="pending">Pending</option>
                        <option value="approved">Approved</option>
                    </select>
                    <br>
                    <label>Delivery Date:</label>
                    <input type="date" name="delivery" class="delivery">
                    <br>
                    <button type="submit" class="update">Update</button>
                </td>
            </tr> );
            
        
    });
});
         */                  
                                         
                                         
              
              
              $(document).on("click", ".update", function(event) {
    event.preventDefault(); 
    alert('test');
    var row = $(this).closest('tr'); // Get the row context
    var formData = {
        orderid: parseInt(row.find("td[name='orderid']").text().trim()),
        item_id: row.find("p[name='item_id']").text().trim(),
        food_name: row.find("td[name='food_name']").text().trim(),
        item_price: row.find("td[name='item_price']").text().trim(),
        item_totalprice: row.find("td[name='item_totalprice']").text().trim(),
        user_quantity: row.find("td[name='user_quantity']").text().trim(),
        status: row.find("select[name='status']").val(),
        delivery: row.find("input[name='delivery']").val()
    }

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "http://localhost:8096/updateStatus",
        data: JSON.stringify(formData),
        dataType: "text",
        success: function(data) {
            if (data === 'success') 
            {
                alert("!!! Updated Successfully !!!!");
                location.assign("http://localhost:8080/OnlineFoodOrder/OrderCheck.jsp");
            }
            else 
            {
                alert("Sorry! stock not available");
            }
        }
    });
});

                
                
                
     }); 
        
     


        </script>
    </body>
</html>
