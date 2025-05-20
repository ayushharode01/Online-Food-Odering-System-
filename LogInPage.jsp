
<!DOCTYPE html>
<html>
<head>

 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<style type="text/css">

.divup{

   border:1px solid white;
   border-radius: 20px;
   box-shadow: -10px -10px 15px white;

}
.divdown{
border-top: 1px solid white;
border-radius: 20px;
background-color: #dde0d7;
box-shadow: 5px 9px 15px #888888;
margin-left: -17px;
margin-right: -18px;

}
.text
{
   border-color: transparent;
   border-bottom: 1px solid black;
   background-color: #dde0d7;


}

.forbutton{

   border-right: 1px solid #dde0d7;
   border-bottom: 1px solid #dde0d7;
   box-shadow: 5px 5px 5px #888888;
   border-radius: 40px;
   width:93%;

}

</style>
</head>
<body style="background-color: #dde0d7;">
<form  id="dologin">
<br><br><br>
<div class="container">
<div class="row">

<div class="col-sm-4 offset-4 divup">
<div height=40px width=100px class="divdown">
<h2 class="text-center text-dark font-weight-bold">Welcome</h2>
<div class="container text-center">
    
  <input type="text" placeholder="Email" class="form-control text" name="email" id="email"><br><br>

<input type="text" placeholder="Password" class="form-control text" name="password" id="password"><br><br>



<button class="btn btn-success bt-md forbutton"  type="submit" >Log-in</button><br><br>
   

<a href="" id="signup" class="text-dark font-weight-bold">Sign-Up</a>

&nbsp &nbsp
<a href="ForgotPassword" class="text-dark font-weight-bold">Forgot Password</a><br><br><br>
</div>

</div>




</div>

</div>

</div>
</form>
<!-- Registartion Successful Message -->




<script>
        $(document).ready(function(){
           
          $("#signup").click(function(event)
           {
             //alert('test');
               event.preventDefault();
              
              
                window.location.href = "http://localhost:8080/OnlineFoodOrder/RegistrationForm.jsp";
  
           });
           
           $("#dologin").submit(function(event)
           {
            //  alert('test');
               event.preventDefault();
              ajaxPost();
              
  
           });
           
   
           function ajaxPost()
           {
              // alert('test');
            var email = $("#email").val();
            var password = $("#password").val();
            var formData={
                   email:email,
                   password:password
                   
                           }
            //console.log(email +" "+password);   
       //   alert(formData);
       //   console.log(formData);
         try
         {
         
        $.ajax({
                        type : "post",
			contentType:"application/json",
			url:"http://localhost:8096/dologin" ,
			data:JSON.stringify(formData) , 
			datatype:"application/text",
                        success:function(data)
            {
               console.log("data "+data);
                if(data === 'success')
                {
                    alert("login Success");
                    //console.log("redired to employee page");
                    location.assign("http://localhost:8080/OnlineFoodOrder/Userdashboard.jsp");
                }
                else
                {
                    console.log("err");
                    alert("Wrong credential");
                }
                
                }
             });
         }
            catch(err)
            {
                
                 console.log(""+Error.message);
                     //console.log(status);
           
            }
          
        }
   
        });
   
   
       </script>


</body>
</html>