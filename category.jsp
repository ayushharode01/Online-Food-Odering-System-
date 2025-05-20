<%-- 
    Document   : category
    Created on : 9 Sep, 2024, 4:10:50 PM
    Author     : Save
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>
        <h1>Add Category</h1><br>
        <form method="post" id="cat">
        Category Name:<input type="text" id="category" name="category"><br><br>
        Description:<textarea placeholder="Enter a Description" id="description" name="description"></textarea><br>
        <button type="submit">Submit</button>
        </form>
         <script>
$(document).ready(function(){
	$("#cat").submit(function(event)
        {
            //alert('test');
		event.preventDefault();
		ajaxPost();
	}); 
	
	function ajaxPost()
	{
		var formData = {
				 category : $("input[name='category']").val(),
				 
				 description : $("textarea[name='description']").val()
				 
				
				};
			console.log(formData);
		
		//Do Post
		$.ajax({
			type : "post",
			contentType:"application/json",
			url:"http://localhost:8096/savecategory" ,
			data:JSON.stringify(formData) , 
			datatype:"application/text",
			success:function(data)
			{
                            console.log("data:"+data);
				if(data=== 'success')
                                {
					 alert("!!! Category Added  Successfully !!!!");
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
