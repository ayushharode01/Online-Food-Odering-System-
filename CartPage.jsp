<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

<h1>Ayush</h1>
    <div class="container">
        <div class="sidebar">
            <h2>Dashboard</h2>
            <ul>
                <li><a href="#overview">Overview</a></li>
                <li><a href="#analytics">Analytics</a></li>
                <li><a href="#reports">Reports</a></li>
                <li><a href="#settings">Settings</a></li>
            </ul>
        </div>
        <div class="main-content">
            
            
            
           <table class="table table-stripped"id="tabl" class="table"> 
              <thead> 
                <tr> 
                    <th scope="col">Order Id</th> 
                    <th scope="col">Product Id</th>
                    <th scope="col">Product Name</th> 
                     
                    <th scope="col">Price</th> 
                     <th scope="col">Quntity</th> 
                    <th scope="col">Product Total</th> 
                    <th scope="col">Action</th> 
                     
                      
                </tr> 
            </thead>
            <tbody> 
                
            </tbody> 
            <div style="float:right; text-align:center">

                <h1 id="totalprice">TotalPrice:</h1>

    </div>
        </table>     
           
        
             <div class="report-container"> 
				 
			</div> 
           
            
            
            
            
            
            
            
        </div>
    </div>
<script>
           // alert("hello");
           $(document).ready(function (){
               //alert("hello");
               $.get("http://localhost:8096/orderData",function (data,status){
               // alert(data.length); 
                  
                  $("#tabl tbody").empty(); 
	     data.forEach(function (item) { 
				    	 $("#tabl tbody").append('<tr> <td> '+item.orderid+' </td> <td><p>'+item. item_id+'</p></td><td> '+item.food_name+' </td> <td> '+item.item_price+' </td> <td> '+item.user_quantity+' </td> <td> '+item.item_totalprice+' </td><td><button type="button" id="btn" class="getid">Delete</button></td> <td><button type="submit" class="btn btn-success" id="orderdone">Add Order</button></td></tr>'
                                                 ); 	    	
        });  
               });
               
               $(document).on('click', '#tabl .getid', function()
               {
                   //location.reload();
                   console.log("Delete button clicked!");
                    var row = $(this).closest('tr');
                    var id = row.find('td:eq(0)').text();
                    var item_id = row.find('p').text();
                    console.log("ID: " + id); 
                    console.log("Product_id"+item_id);
                     $.ajax({
                        type: "DELETE",  
                        contentType: "application/json",
                        url: "http://localhost:8096/deleteorder/"+id+"/"+item_id, 
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
               
              $(document).on('click', '#tabl #orderdone', function()
               {
                   //location.reload();
                   console.log("order button clicked!");
                    var row = $(this).closest('tr');
                    var id = row.find('td:eq(0)').text();
                    var item_id = row.find('p').text();
                    console.log("ID: " + id); 
                    location.assign("http://localhost:8080/OnlineFoodOrder/ViewOrderPage.jsp?id=" + encodeURIComponent(id));
                     
               });
                
               
               function refreshData()
               {
                    $.get("http://localhost:8096/getitemlist",function (data,status){
                  //alert(data.length); 
                  
                  $("#tabl tbody").empty(); 
                    data.forEach(function (item) { 
				    	 $("#tabl tbody").append('<tr> <td> '+item.orderid+' </td> <td> '+item.food_name+' </td> <td> '+item.item_price+' </td> <td> '+item.user_quantity+' </td> <td> '+item.item_totalprice+' </td><td><button type="button" id="btn" class="getid">Delete</button></td> </tr>'
                                                 );  	    	
        });  
               });
               }
               
               
               /* Logic For TotalPrice*/
               
               
        $.get("http://localhost:8096/getsale",function (data,status)
             {
                  //alert(data.length); 
                  console.log(data);
                  $("#totalprice").append(data);
                  
                 // $("#tabl tbody").empty(); 
				      
              
    });
              
	
	
               
               
           });
        
    </script>
    
    
</body>
</html>