<%-- 
    Document   : Item
    Created on : 9 Sep, 2024, 5:48:56 PM
    Author     : Save
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Product List</h1>
        <form id="save" method="post" enctype="multipart/form-data">
            Product Name:<input type="text" id="productname" name="productname" placeholder="enter a product a name"><br><br>
            Category:<select id="category" name="category">
                <option value="select">Select</option>
            </select><br><br>
            Price:<input type="text" id="price" name="price" placeholder="enter a price"><br><br>
            Quantity: <input type="number" id="quantity" name="quantity" ><br><br>
            Description:<textarea id="description" name="description" placeholder="enter a description"></textarea><br><br>
            Image:<input type="file" name="file" id="file"><br><br>
            <button type="submit">Submit</button>
 
        </form>
        <script>
        $(document).ready(function(){
            
             $.get("http://localhost:8096/getcategory",function (data,status)
             {
                 // alert(data.length); 
                  
                 // $("#tabl tbody").empty(); 
				     data.forEach(function (i) 
                                     { 
				    	 $("#category").append('<option> '+i.category+' </option>  '); 	    	
                                             
                                    });  
              
                                       });
            
            
            
            
	$("#save").submit(function(event)
        {
            //alert('test');
		event.preventDefault();
		ajaxPost();
	}); 
	
	function ajaxPost()
	{
            let form = $("#save")[0]; 
            let formdata=new FormData(form);
		/*var formData = {
				 category : $("select[name='category']").val(),
				 productname:$("input[name='productname']").val(),
				 description : $("textarea[name='description']").val(),
                                 price:$("input[name='price']").val(),
                                 quantity:$("input[name='quantity']").val()
                                 
				 
				
				};
			console.log(formData);*/
		
		//Do Post
		$.ajax({
			type : "post",
			//contentType:"application/json",
			url:"http://localhost:8096/saveitem" ,
			data:formdata ,
                        contentType: false, // Important for file uploads
                        processData: false,
			//datatype:"application/text",
			success:function(data)
			{
                            console.log("data:"+data);
				if(data=== 'success')
                                {
					 alert("!!! Product Added  Successfully !!!!");
					//console.log("redired to login page");
                                         location.assign("http://localhost:8080/OnlineFoodOrder/admin_dashboard.jsp");
                                     }	
                                  else
                                   {
                                      console.log("err");
                                        alert("something going wrong");
                                   }      
                                        
                                   
                                   
			}
		});
		//ajaxPost();
	}
 });
 
</script>
    </body>
</html>
