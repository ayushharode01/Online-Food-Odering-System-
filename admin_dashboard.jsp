<%-- 
    Document   : admin_dashboard
    Created on : 12 Sep, 2024, 7:36:21 AM
    Author     : Save
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="css/styles.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Bootstap 5 Responsive Admin Dashboard</title>
    </head>
    <body>
    <div>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                    class="fas fa-user-secret me-2"></i>OnlineFoodSystem</div>
            <div class="list-group list-group-flush my-3">
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text active" id="home"><i
                        class="fas fa-tachometer-alt me-2"></i>Home</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="adminpanelshow"><i
                        class="fas fa-project-diagram me-2"></i>Admin Panel</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-chart-line me-2"></i>Analytics</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-paperclip me-2"></i>Reports</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-shopping-cart me-2"></i>Store Mng</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-gift me-2"></i>Products</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-comment-dots me-2"></i>Chat</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-map-marker-alt me-2"></i>Outlet</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
                        class="fas fa-power-off me-2"></i>Logout</a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        
        
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                    <c:set var="userEmail" value="${userEmail}"></c:set>
                   
                    
                        <h2 class="fs-2 m-0" id="userid"></h2>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i>John Doe
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Profile</a></li>
                                <li><a class="dropdown-item" href="#">Settings</a></li>
                                <li><a class="dropdown-item" href="#">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

                    <div id="dataofcategory"> 
                        </div>
            
            <div  id="tp">
                        
                    </div>
                    <div  id="itemslist">
                        
                    </div>
                    <div id="cat">
                        
                    </div>
                    <div id="itempage">
                        
                    </div>
                    
        
            <div class="container-fluid px-4" id="panel">
                
                <div class="row  my-2">
                    
                    <div class="col-md-3">
                        <button id="proudctselect">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2" id="product"></h3>
                                <p class="fs-5"> Total Products</p>
                            </div>
                            <i class="fas fa-gift fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                            </button>
                    </div>
                    

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2" id="sales"></h3>
                                <p class="fs-5">Total Sales</p>
                            </div>
                            <i
                                class="fas fa-hand-holding-usd fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <button id="ordercheck">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2" id="totalorder"></h3>
                                <p class="fs-5" >View Order</p>
                            </div>
                            <i class="fas fa-truck fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                        </button>
                    </div>
                    
                </div>
                    
                    
                    <div class="row  my-2">
                    <div class="col-md-3">
                        <button id="userlist">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2" id="alluser"></h3>
                                <p class="fs-5">All User</p>
                            </div>
                            <i class="fas fa-chart-line fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                        </button>
                    </div>
                     <div class="col-md-3">
                         <button class="fs-5" id="category">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">Add Category</h3>
                                
                            </div>
                            <i class="fas fa-chart-line fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                             </button>
                    </div>
                     <div class="col-md-3 ml-auto">
                         <button class="fs-5" id="item">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2"> Add Item</h3>
                               
                            </div>
                            <i class="fas fa-chart-line fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                             </button>
                    </div>
                </div>

                

            </div>
           	
            <div class="row" id="card">
					
          </div>
                    
  		 	 	
  		 	 		
  			
          <!--  <h5 class="card-title">Product Name:<b id="prname"></b></h5> -->
    		
   
   			 
    	
  			
  			</div>
          
          
          
  		 	 	
  		 	 		
  			
  			
  			</div>
            
            
            
        </div>
        
  			
					   
					   
					
					
					
					
    </div>
    <!-- /#page-content-wrapper -->
     
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var el = document.getElementById("wrapper");
        var toggleButton = document.getElementById("menu-toggle");
        var em="${userEmail}";
        console.log(em);

        toggleButton.onclick = function () {
            el.classList.toggle("toggled");
        };
        
        $(document).ready(function(){
           $("#card").show();
           $("#panel").hide();
           
            $("#adminpanelshow").click(function(){  
          $("#panel").show();
           $("#card").hide();
           $("#tp").hide();
            $("#dataofcategory").hide();
             $("#itemslist").hide();
              $("#cat").hide();
              $("#itempage").hide();
           
           //$("#dataofcategory").hide();
      });
      $("#home").click(function(){  
          $("#panel").hide();
           $("#card").show();
            $("#itemslist").hide();
           $("#tp").hide();
            $("#dataofcategory").hide();
             $("#cat").hide();
             $("#itempage").hide();
      });
          
           $("#category").click(function(event)
           {
           // alert('test');
           $("#panel").hide();
           $("#card").hide();
               event.preventDefault();
               $.get("category.jsp", function(data, status) {
               $("#cat").html(data);
               $("#cat").show();
              });
                   
                    
               //ajaxPost();
              //  window.location.href = "http://localhost:8080/OnlineFoodOrder/category.jsp";
               
           });
           
           $("#ordercheck").click(function(event)
           {
           // alert('test');
               event.preventDefault();
               //ajaxPost();
               $("#panel").hide();
           $("#card").hide();
               $.get("OrderCheck.jsp", function(data, status) {
               $("#itemslist").html(data);
               $("#itemslist").show();
              });
               // window.location.href = "http://localhost:8080/OnlineFoodOrder/OrderCheck.jsp";
               
           });
           
           
           
           $("#userlist").click(function(event)
           {
           // alert('test');
           $("#panel").hide();
           $("#card").hide();
               event.preventDefault();
               //ajaxPost();
               $.get("UserList.jsp", function(data, status) {
               $("#dataofcategory").html(data);
                $("#dataofcategory").show();
              });
                
               //  
               //    window.location.href = "http://localhost:8080/OnlineFoodOrder/UserList.jsp";
               
           });
           
           $("#item").click(function(event)
           {
           // alert('test');
               event.preventDefault();
               //ajaxPost();
               $("#panel").hide();
           $("#card").hide();
               $.get("Item.jsp", function(data, status) {
               $("#itempage").html(data);
               $("#itempage").show();
              });
               
               // window.location.href = "http://localhost:8080/OnlineFoodOrder/Item.jsp";
               
           });
           
             $.get("http://localhost:8096/getitemlist",function (data,status)
             {
                  //alert(data.length); 
                  $("#product").append(data.length);
                 // $("#tabl tbody").empty(); 
				      data.forEach(function (item)
                                      { 
				    
                     $("#card ").append('<div class="col col-md-4"><button class="btn-primary"><image src="image_display/'+item.filename+'"><br><label>product name:</label><h5>'+item.productname+'</h5><label>Price:</label><h5>'+item.price+'</h5></button></div>');
    
                                                 
              
              
                });
                 });
                
                $("#proudctselect").click(function(event)
           {
           // alert('test');
               event.preventDefault();
               //ajaxPost();
               $("#panel").hide();
              $("#card").hide();
               $.get("ItemDisplay.jsp", function(data, status) {
               $("#tp").html(data);
               $("#tp").show();
              });
              //  window.location.href = "http://localhost:8080/OnlineFoodOrder/ItemDisplay.jsp";
               
           });
            $.get("http://localhost:8096/getuser",function (data,status)
             {
                  //alert(data.length); 
                  $("#alluser").append(data.length);
                 // $("#tabl tbody").empty(); 
				     
                 });
           
      
       
       $.get("http://localhost:8096/getuseremail",function (data,status)
             {
                  //alert(data.length); 
                  console.log(data.email);
                  $("#userid").append(data.email);
                  
                 // $("#tabl tbody").empty(); 
				      
              
    });
      
        $.get("http://localhost:8096/getsale",function (data,status)
             {
                  //alert(data.length); 
                  console.log(data);
                  $("#sales").append(data);
                  
                 // $("#tabl tbody").empty(); 
				      
              
    });
    
       $.get("http://localhost:8096/orderData",function (data,status){
               // alert(data.length); 
                  $("#totalorder").append(data.length);
                  
               });
    
        }); 
    </script>
</body>
</html>
