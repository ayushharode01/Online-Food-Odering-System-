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
            
            function getParameterByName(name) {
    name = name.replace(/[\[\]]/g, '\\$&'); // Escape special characters
    var url = window.location.href; // Get the current URL
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'), // Regular expression to find the parameter
        results = regex.exec(url);
    
    if (!results) return null; // If no results, return null
    if (!results[2]) return ''; // If no value found, return an empty string
    return decodeURIComponent(results[2].replace(/\+/g, ' ')); // Decode the parameter value
}
     $(document).ready(function ()
     {
       //  alert("reached here");
        //   var id = getParameterByName('id');
          //      console.log("Retrieved ID: " + id);  
                
            
            
                $.get("http://localhost:8096/orderData",function (data,status){
               // alert(data.length); 
                  
                  $("#tabl tbody").empty(); 
	      data.forEach(function (item) { 
	$("#tabl tbody").append('<tr> <td> '+item.orderid+' </td> <td><p>'+item. item_id+'</p></td><td> '+item.food_name+' </td> <td> '+item.item_price+' </td> <td> '+item.user_quantity+' </td> <td> '+item.item_totalprice+' </td><td>'+item.status+' </td><td>'+item.delivery+'</td></tr>'
                                                 ); 	    	
              });
               });
            
                
                
                
     }); 
            


        </script>
    </body>
</html>
