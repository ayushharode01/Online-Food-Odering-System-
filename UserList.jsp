<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/styles.css">
    <style >
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f2f5;
}

.container {
    display: flex;
}

.sidebar{
    width: 200px;
    background-color: #333;
    color: white;
    padding: 20px;
}

.sidebar h2 {
    text-align: center;
}

.sidebar ul {
    list-style-type: none;
    padding: 0;
}

.sidebar ul li {
    margin: 20px 0;
}

.sidebar ul li a {
    color: white;
    text-decoration: none;
    font-size: 18px;
}

.sidebar ul li a:hover {
    text-decoration: underline;
}

.main-content {
    flex: 1;
    padding: 20px;
}

.section {
    background-color: white;
    margin-bottom: 20px;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

h3 {
    margin-top: 0;
}

.table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.table td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

.table tr:nth-child(even){background-color: #f2f2f2;}

.table tr:hover {background-color: #ddd;}

.table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
#btn{
    padding: 5px;
    background-color: green;
    color:white;
    border-radius: 5px;
    font-weight: bold;
}


.chart {
    text-align: center;
}

.chart img {
    max-width: 100%;
}
    
    
    </style>
</head>
<body>

<h1>Bhavesh</h1>
    <div class="container">
        
        
            
            
           <table class="table table-stripped"id="tabl" class="table"> 
              <thead> 
                <tr> 
                    <th scope="col">Id</th> 
                    <th scope="col">Name</th> 
                     
                    <th scope="col">Email</th> 
                     <th scope="col">Phone</th> 
                    <th scope="col">Gender</th> 
                    <th scope="col">City</th> 
                    <th scope="col">Address</th>
                    <th scope="col">Password</th>
                     <th scope="col">Delete</th>
                     
                      
                </tr> 
            </thead>
            <tbody> 
                
            </tbody> 
        </table>     
             
           
            
            
            
            
            
           
           
        </div>
    
<script>
           // alert("hello");
           $(document).ready(function (){
               //alert("hello");
               $.get("http://localhost:8096/getuser",function (data,status){
               // alert(data.length); 
                  
                  $("#tabl tbody").empty(); 
	     data.forEach(function (item) { 
				    	 $("#tabl tbody").append('<tr> <td> '+item.id+' </td> <td> '+item.name+' </td> <td> '+item.email+' </td> <td> '+item.phone+' </td> <td> '+item.gender+' </td><td> '+item.city+' </td><td> '+item.address+' </td><td>'+item.password+'  </td><td><button type="button" id="btn" class="getid">Delete</button></td> </tr>'
                                                 ); 	    	
        });  
               });
               
               $(document).on('click', '#tabl .getid', function()
               {
                   //location.reload();
                   console.log("Delete button clicked!");
                    var row = $(this).closest('tr');
                    var id = row.find('td:eq(0)').text();
                    console.log("ID: " + id); 
                     $.ajax({
                        type: "DELETE",  
                        contentType: "application/json",
                        url: "http://localhost:8096/deleteitem/"+id, 
                        dataType: "text",
                        success: function(data)
                        {
                            location.reload();
                            refreshData();
                        if (data === "deleted") 
                        {
                          alert("Data Deleted Successfully");
                        }
                    console.log(data);
                    }
                });
               });
               
                $(document).on('click', '#tabl .getvalues', function() {
                   //location.reload();
                   console.log("Edit button clicked!");
                    var row = $(this).closest('tr');
                    var id = row.find('td:eq(0)').text();
                    console.log("ID: " + id);
                  $.get("http://localhost:8096/editItem/"+id,
                  function(data,status)
                  {
                      console.log(data);
                      $("#id").val(data.id);
                      $("#productname").val(data.productname);
                     
                      $("#price").val(data.price);
                      $("#quantity").val(data.quantity);
                      $("#category").val(data.category);
                      $("#description").val(data.description);
                     // $("#file").text(data.filename);
                     
                      
                       
                     
                  });
                   
               });
               
               function refreshData()
               {
                    $.get("http://localhost:8096/getitemlist",function (data,status){
                  //alert(data.length); 
                  
                  $("#tabl tbody").empty(); 
                    data.forEach(function (item) { 
				    	 $("#card #set").append(' <td> '+item.id+' </td> <td> '+item.productname+' </td> <td> '+item.category+' </td> <td> '+item.price+' </td> <td> '+item.quantity+' </td><td> '+item.description+' </td><td> '+item.filename+' </td>  </td><td><button type="button" id="btn" class="getvalues">Edit</button></td><td><button type="button" id="btn" class="getid">Delete</button></td> </tr>'
                                                 ); 	    	
        });  
               });
               }
               
               
               /* Logic For Update*/
               
               
              $("#updatitem").submit(function(event){
                   // alert('test');
                   event.preventDefault();
		 ajaxPost();
	}); 
	
	function ajaxPost()
	{
		var formData = {
                                 id : $("#id").val(),
				 productname: $("#productname").val(),
				 
				 price : $("#price").val(),
				 quantity : $("#quantity").val(),
				 category: $("#category").val(),
                                 
				description: $("#description").val()
				}
                                console.log(formData);
		
		//Do Post
                   $.ajax({
			type : "post",
			contentType:"application/json",
			url:"http://localhost:8096/itemupdate" ,
			data:JSON.stringify(formData) , 
			datatype:"application/text",
			success:function(data)
			{
                             location.reload();
                            refreshData();
                            console.log("update");
				if(data==="success")
					{
                                            alert("Data Updated Success Successfully");
					}
                                    console.log(data);
			},
		});
                
                
		//ajaxPost();
	}
        
               
               
           });
        
    </script>
    
    
</body>
</html>