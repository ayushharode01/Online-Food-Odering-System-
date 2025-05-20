<!doctype html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page isELIgnored = "false" %>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <link rel="icon" href="Favicon.png">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="cssfile/RegCss.css">

    <title>Registration Form</title>
</head>
<body style="background-color: #dde0d7;">
<!--Email ALready Registered  -->
<c:set var="ses_exist" value="${ses_exist }"></c:set>
<c:if test="${ses_exist=='predefine' }">

<script type="text/javascript">

alert("Email Already Registered");
</script>

</c:if>
<c:remove var="ses_exist" scope="session"/>

<!-- Registered Issued  -->
<c:set var="reg_wrong" value="${reg_wrong }"></c:set>
<c:if test="${reg_wrong=='wrong' }">

<script type="text/javascript">

alert(" Registration Problem");
</script>

</c:if>
<c:remove var="reg_wrong" scope="session"/>

<!-- New user Message -->

<c:set var="login_new" value="${login_new}"></c:set>
<c:if test="${login_new=='notuser' }">

<script type="text/javascript">

alert("Email id Not exist,Please Registered First");
</script>

</c:if>
<c:remove var="login_new" scope="session"/>

<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
    <a class="navbar-brand text-dark font-weight-bold" href="LogInPage.jsp">Back</a>
    

   
    </div>
</nav>

<main class="my-form" style="background-color: #dde0d7;" >
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="text-center text-dark font-weight-bold"><b>Registration Form</b></div>
                        <div class="card-body">
                            <form   method="post" id="usersave">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="name" class="form-control" name="name" >
                                        <p id="check" style="background-color: red;"></p>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                    <div class="col-md-6">
                                        <input type="text" id="email" class="form-control" name="email" >
                                        <p id="check2" style="background-color: red;"></p>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label  class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <input type="radio" name="gender" value="Male" id="male">Male &nbsp &nbsp &nbsp &nbsp &nbsp
                                         <input type="radio" name="gender" value="Female" id="female">Female
                                        <p id="check4" style="background-color: red;"></p>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Phone Number</label>
                                    <div class="col-md-6">
                                        <input type="text" id="phone" class="form-control" name="phone" >
                                        <p id="check3" style="background-color: red;"></p>
                                        
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">City</label>
                                    <div class="col-md-6">
                                        <select class="form-control" name="city" id="city">
                                        <option value="Nagpur">Nagpur</option> 
                                         <option value="Bhandara">Bhandara</option> 
                                          <option value="Amrwati">Amrawati</option> 
                                        
                                        </select>
                                        
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right"> Address</label>
                                    <div class="col-md-6">
                                       <textarea rows="3" cols="20" class="form-control" id="address" name="address" ></textarea>
                                       <p id="check5" style="background-color: red;"></p>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="text" id="password" class="form-control" name="password" >
                                        <p id="check6" style="background-color: red;"></p>
                                    </div>
                                </div>

                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-secondary text-center">
                                        Register
                                        </button>
                                    </div>
                                     </form>
                                </div>
                           
                        </div>
                    </div>
            </div>
        </div>
    
   

</main>
 <script>
$(document).ready(function(){
	$("#usersave").submit(function(event)
        {
            alert('test');
		event.preventDefault();
		ajaxPost();
	}); 
	
	function ajaxPost()
	{
		var formData = {
				 name : $("input[name='name']").val(),
				 
				 phone : $("input[name='phone']").val(),
				 
				 email : $("input[name='email']").val(),
                                 city : $("select[name='city']").val(),
                                 address : $("textarea[name='address']").val(),
                                 gender : $("input[name='gender']").val(),
				 
				password : $("input[name='password']").val()
				};
			console.log(formData);
		
		//Do Post
		$.ajax({
			type : "post",
			contentType:"application/json",
			url:"http://localhost:8096/usersave" ,
			data:JSON.stringify(formData) , 
			datatype:"application/text",
			success:function(data)
			{
                            console.log("data:"+data);
				if(data=== 'success')
                                {
					 alert("!!! Registered  Successfully !!!!");
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

<!-- Java Script -->
<!--<script>
var statusname=false;
var statusemail=false;
var statusphone=false;
var statusgender=false;
var statuspass=false;
var statusadd=false;


function val()
{
	//alert("done");
	if( statusname==false)
		{
		  alert("please check name");
		document.getElementById('check').innerHTML="*Please check ";
		   //alert("name filled is required");
		   document.getElementById('names').focus();
		   return false;
		  
		}
	/*else if(statusemail==false)
		{
		document.getElementById('check2').innerHTML="*Please email check ";
		   alert("*Please check email ");
		   document.getElementById('mail').focus();
		   return false;
		}*/
	else if(statusphone==false)
		{
		document.getElementById('check3').innerHTML="*Please check mobile number";
		   alert("please check mobile numer");
		   document.getElementById('phone').focus();
		   return false;
		
		}
	
	/*else if(statusadd==false)
	{
	document.getElementById('check5').innerHTML="*Please enter address";
	   alert("please enter address");
	   document.getElementById('add').focus();
	   return false;
	}*/
	/*else if(statuspass==false)
	{
	document.getElementById('check6').innerHTML="*Please enter password";
	   alert("please enter password");
	   document.getElementById('pass').focus();
	   return false;
	}*/
	else
		{
		//alert("Form Submit");
		return true;
		}
     	
}

function vadd()

{
	
     var add=document.getElementById('add').value;
	
	if(add==""||add==null)
	   {
		
	   document.getElementById('check5').innerHTML="*Please enter address";
	   //alert("name filled is required");
	   document.getElementById('add').focus();
	   statusadd=false;
	   }
   else
	   {
	  // alert("bhavesh");
	   document.getElementById('check5').innerHTML="";
	   statusadd=true;
	   }
}
function vpass()

{
	
     var pass=document.getElementById('pass').value;
	
	if(pass==""||pass==null)
	   {
		
	   document.getElementById('check6').innerHTML="*Please enter password";
	   //alert("name filled is required");
	   document.getElementById('pass').focus();
	   statuspass=false;
	   }
	else if(pass.length<8||pass.length>16)
	   {
		
	   document.getElementById('check6').innerHTML="*Please enter password 8 to 16 character";
	   //alert("name filled is required");
	   document.getElementById('pass').focus();
	   statuspass=false;
	   }
   else
	   {
	  // alert("bhavesh");
	   document.getElementById('check6').innerHTML="";
	   statuspass=true;
	   }
}


function vgender() 
{
	
	if(document.getElementById('male').checked==false && document.getElementById('female').checked==false)
	   {
		
	   document.getElementById('check4').innerHTML="*Please select a gender";
	   //alert("name filled is required");
	   document.getElementById('male').focus();
	   statusgender=false;
	   }
   else
	   {
	  // alert("bhavesh");
	   document.getElementById('check4').innerHTML="";
	   statusgender=true;
	   }
}
	function vphone() {
		 let phn=document.getElementById('phone').value;
		 
		 
		 if(phn==""||phn==null)
			 {
			 document.getElementById('check3').innerHTML="*Please mobile number required";
			   //alert("name filled is required");
			   document.getElementById('phone').focus();
			   statusphone=false;
			   
			 }
		 else if(phn.length<10||phn.length>10)
			 {
			 document.getElementById('check3').innerHTML="*Please mobile number must be 10 digit";
			   //alert("name filled is required");
			   document.getElementById('phone').focus();
			   statusphone=false;
			 
			 }
		 else if(isNaN(phn))
			 {
			 document.getElementById('check3').innerHTML="*Please mobile number must be digit not a alphanumerical";
			   //alert("name filled is required");
			   document.getElementById('phone').focus();
			   statusphone=false;
			 }
		 else
			 {
			 document.getElementById('check3').innerHTML="";
			 statusphone=true;
			 
			 }
		
		
		
	}


	function vname() 
	{
		let name=document.getElementById('name').value;
		let letterNumber = /^[a-z A-Z]+$/;
		
		//alert(name);
		if(name==""||name==null)
			{
			   document.getElementById('check').innerHTML="*Please name field is required ";
			   //alert("name filled is required");
			   document.getElementById('name').focus();
			   statusname=false;
			   
			}
		
		else if(name.length<8||name.length>25)
			{
			document.getElementById('check').innerHTML="*Please name should be 8 to 16 character ";
			   //alert("*Please name should be 8 to 16 character ");
			   document.getElementById('name').focus();
			    statusname=false;
			
			}
		else if(!name.match(letterNumber))
			{
			 document.getElementById('check').innerHTML="*Please name should be in alphabet ";
			   //alert("*Please name should be in alphabet ");
			   document.getElementById('name').focus();
			   statusname=false;
			}
		else
			{
			document.getElementById('check').innerHTML="";
			statusname=true;
			}
	}
	function vemail()
	{
		let mail1=document.getElementById('mail').value;
		
		let ema=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		
		if(mail1=="" ||mail1==null)
			{
			  document.getElementById('check2').innerHTML="*Please email field is required ";
			   //alert("*Please name should be in alphabet ");
			   document.getElementById('mail').focus();
			   statusemail=false;
			}
		else if(!mail1.match(ema))
			{
			document.getElementById('check2').innerHTML="*Please enter valid email ";
			   //alert("*Please name should be in alphabet ");
			   document.getElementById('mail').focus();
			   statusemail=false;
			}
		else
		{
			document.getElementById('check2').innerHTML="";
			statusemail=true;	
		}
		
		
		
		
		}

</script> -->


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>