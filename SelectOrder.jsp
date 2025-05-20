<%-- 
    Document   : SelectOrder
    Created on : 13 Sep, 2024, 9:51:51 AM
    Author     : Save
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bhavesh System!</h1>
        <div class="row" id="set">
          
          
         
          
      </div>
        
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
            $(document).ready(function() {
                // Make sure the AJAX call to get the item information is working
                var id = getParameterByName('id');
                console.log("Retrieved ID: " + id);
                $.get("http://localhost:8096/getIteminfo/"+id, function(data, status) {
                   console.log(data);
                     
                        // Iterate over each item in the response data
                        
                             $("#set").append('<form id="ordersave"><div class="col col-md-6"><image src="image_display/'+data.filename+'"><br><h5 name="food_name">'+data.productname+'</h5><label>Product Id:</lable><h3 name="item_id">'+data.id+'</h3><br><label>Price:</label><h5 name="item_price">'+data.price+'</h5><br><label>Enter a Quantity</label><input type="number" name="user_quantity" placeholder="enter a quantity"><br><button  class="getvalues" type="submit" >Add to Cart</button></div></form>');
    
                     
                });
                
                $(document).on("submit", "#ordersave", function(event) {
    event.preventDefault(); // Prevent the default form submission
   // console.log("bhavesh");
  //  alert('test');
   ajaxPost();
           });
                function ajaxPost()
	{
            console.log("bhavesh");
		var formData = {
				food_name : $("h5[name='food_name']").text(),
				 
				item_price : $("h5[name='item_price']").text(),
				 item_id:$("h3[name='item_id']").text(),
				 user_quantity : $("input[name='user_quantity']").val()
                                 
				};
			console.log(formData);
		
		//Do Post
		$.ajax({
			type : "post",
			contentType:"application/json",
			url:"http://localhost:8096/ordersave" ,
			data:JSON.stringify(formData) , 
			datatype:"application/text",
			success:function(data)
			{
                            console.log("bhaveshpost");
                            console.log("data:"+data);
				if(data=== 'success')
                                {
					 alert("!!! Order Added  Successfully !!!!");
					//console.log("redired to login page");
                                         location.assign("http://localhost:8080/OnlineFoodOrder/Userdashboard.jsp");
                                     }	
                                  else
                                   {
                                      console.log("err");
                                        alert("Sorry! stock not available");
                                   }      
                                        
                                   
                                   
			}
		});
		//ajaxPost();
	}
                
            });
        </script>

    </body>
</html>
