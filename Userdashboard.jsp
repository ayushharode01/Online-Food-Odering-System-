<!doctype html>
<html lang="en">
  <head>
       <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body style="background-color: #dde0d7;">
     
          <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand text-white" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-white" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">Link</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link text-white" href="#">Disabled</a>
      </li>
    </ul>
    
  </div>
  <div>
      
       <div class="form-inline my-3 my-lg-0">
      <a class="nav-link text-white" href="CartPage.jsp">Cart</a>
      <a class="nav-link text-white" href="ViewOrderPage.jsp">Myorder</a>
      <a class="nav-link text-white" href="#">Logout</a>
     
    </div>
  </div>
</nav>
      <div class="row" id="set">
          
          
         
          
      </div>
      <div id="display"></div>
      
          <script>
      
        
        
        $(document).ready(function(){
           
         
             $.get("http://localhost:8096/getitemlist",function (data,status)
             {
                  //alert(data.length); 
                  
                 // $("#tabl tbody").empty(); 
				      data.forEach(function (item)
                                      { 
				    
                     $("#set").append('<div class=" col-md-4"><button  class="getvalues"><image src="image_display/'+item.filename+'"><br><label>product name:</label><h5>'+item.productname+'</h5><label>Product Id:</lable><h3>'+item.id+'</h3><br><label>Price:</label><h5>'+item.price+'</h5></button></div>');
    
                 });
                 });
                 $(document).on('click', '#set .getvalues', function() {
                   //location.reload();
                   $("#set").hide();
                   console.log(" button clicked!");
                    var row = $(this).closest('div');
                    var id = row.find('h3').text();
                    console.log("ID: " + id);
                 
                /*   $.get("SelectOrder.jsp",{id:4},function(response,status){
	 				//alert(response);
	 				 if (status === 'success') {
           //Properly update the HTML
            $("#display").html(response);
      } else {
            console.log('Error: ' + status);
        }
	 			//});*/
                     
                     // $("#file").text(data.filename);
                   location.assign("http://localhost:8080/OnlineFoodOrder/SelectOrder.jsp?id=" + encodeURIComponent(id));
                      
                       
                     
                  
                   
               });                            
              
              
                
               
    });
     
        
        }); 
    </script>

 
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>