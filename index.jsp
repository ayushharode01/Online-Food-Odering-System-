<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trend Town - Online Clothing Store</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lilita+One&family=Playwrite+HR+Lijeva:wght@100..400&family=Playwrite+HU:wght@100..400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            background-color: #FFFFDF;
        }
        h1 {
            font-family: "Lilita One", sans-serif;
            font-weight: 400;
            font-style: normal;
            font-size: 5rem; /* Adjust size as needed */
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Optional shadow for depth */
            margin: 0;
            padding: 0rem;
            text-align: center;
            letter-spacing: 1px; /* Optional spacing for style */
            background-image: url("https://i.pinimg.com/236x/2e/4c/c0/2e4cc0ccc9126ddb6b75bab32493d0cd.jpg");
            background-size: cover;
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .navbar-custom {
            background-image: url('https://images.pexels.com/photos/3377405/pexels-photo-3377405.jpeg?auto=compress&cs=tinysrgb&w=600'); /* Replace with your background image URL */
            background-size: cover; /* Ensures the background image covers the navbar */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            padding: 0.5rem 1rem; /* Adds padding for better spacing */
        }
        .navbar-custom .navbar-brand,
        .navbar-custom .nav-link {
            color: white;
            transition: color 0.3s, background-color 0.3s, padding 0.3s;
            font-family: 'Poppins', sans-serif; /* Change font to Poppins */
            font-size: 1.2rem; /* Increase font size */
            padding: 0.5rem 1rem; /* Add padding for better spacing */
            border-radius: 5px; /* Add slight border radius for rounded corners */
        }
        .navbar-custom .nav-link {
            margin: 0 1.5rem; /* Increases spacing between nav items */
        }
        .navbar-custom .nav-link:hover,
        .navbar-custom .nav-link.active {
            color: black; /* Adds a highlight color on hover */
            background-color: rgba(255, 255, 255, 0.1); /* Add subtle background change on hover */
            font-weight: bold;
            text-decoration: none; /* Remove underline */
            transform: scale(1.1); /* Slightly enlarges the link on hover */
        }
        .nav-link.login-btn {
            color: white; /* Special color for login button */
            font-weight: bold; /* Makes the login button text bold */
            background-color: #007bff; /* Background color for login button */
            padding: 0.5rem 1rem;
            border-radius: 5px;
        }
        .nav-link.login-btn:hover {
            color: white; /* Hover color for login button */
            background-color: #0056b3; /* Add background change on hover */
            text-decoration: none; /* Removes underline on hover */
            transform: scale(1.1); /* Slightly enlarges the login button on hover */
        }
        .dropdown-menu {
            background-color: #343a40; /* Keeps the dropdown menu consistent */
        }
        .dropdown-menu .dropdown-item {
            color: white;
        }
        .dropdown-menu .dropdown-item:hover {
            background-color: #495057;
        }
        .carousel-item img {
            max-width: 100%;
            height: 500px;
            object-fit: cover;
        }
        .section-title {
            text-align: center;
            color: #4CAF50;
            font-family: 'Fantasy', serif;
            background-color: #007bff;
            padding: 2rem;
            margin: 2rem 0;
            font-weight: 500;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            padding: 2rem 1rem;
            justify-content: center;
        }
        .card {
            flex: 1 1 calc(20% - 1rem);
            margin: 0.5rem;
            border: 1px solid black;
            border-radius: 8px;
            overflow: hidden;
            background-color: #fff;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }
        .card-img-top {
            width: 50%;
            height: 200px; /* Adjust the height as needed */
            object-fit: cover; /* Ensures the image covers the space */
            margin-left: 30%;
        }
        .card-body {
            padding: 1rem;
            text-align: center;
            background-color: #f1f1f1;
            flex-grow: 1;
        }
        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
            color: #333;
        }
        .card-text {
            font-size: 1rem;
            color: #666;
        }
        .social-network {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            gap: 1rem;
            padding: 2rem;
            background-color: #343a40;
        }
        .social-network a {
            color: white;
            font-size: 1.5rem;
            transition: color 0.3s;
        }
        .social-network a:hover {
            color: #ffdd57;
        }
        .contact-info {
            text-align: center;
            font-size: 1.25rem;
            color: #333;
            margin-bottom: 2rem;
        }
        .footer {
            text-align: center;
            padding: 1rem;
            background-color: #343a40;
            color: white;
            font-size: 16pt;
        }
        .logo-navbar {
            width: 45px;
            height: 40px;
            object-fit: cover;
        }
        .hamburger-label {
            display: none;
        }
        @media (max-width: 768px) {
            .navbar-nav {
                display: none;
            }
            .hamburger-label {
                display: block;
                cursor: pointer;
                padding: 0.5rem;
            }
            .hamburger-label span {
                display: block;
                width: 25px;
                height: 3px;
                background-color: #fff;
                margin: 5px 0;
                transition: 0.4s;
            }
            .navbar-toggler {
                border: none;
                outline: none;
            }
            .navbar-toggler:hover .hamburger-label span:nth-child(1) {
                transform: translateY(8px) rotate(45deg);
            }
            .navbar-toggler:hover .hamburger-label span:nth-child(2) {
                opacity: 0;
            }
            .navbar-toggler:hover .hamburger-label span:nth-child(3) {
                transform: translateY(-8px) rotate(-45deg);
            }
        }
    </style>
    <script>
    $(document).ready(function(){
        $("#label-check").change(function(){
            $("#navbar-Nav").toggle();
        });
    });
    </script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container-fluid d-flex align-items-center">
        <h1>Trend Town</h1>
        <div class="ms-auto d-lg-none">
            <input class="label-check" id="label-check" type="checkbox">
            <label for="label-check" class="hamburger-label">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </label>   
        </div>
        <div class="collapse navbar-collapse" id="navbar-Nav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Clothes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="RegistrationForm.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="LogInPage.jsp" style="color: white;">Log In</a>
                </li>
                <a href="admin_register"></a>
                <a href="admin_login"></a>
            </ul>
        </div>
    </div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="https://images.pexels.com/photos/1612351/pexels-photo-1612351.jpeg?auto=compress&cs=tinysrgb&w=600" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://images.pexels.com/photos/45983/pexels-photo-45983.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Third slide">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<h3 class="section-title">Premium Clothes</h3>

<div class="card-container">
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61SD6NfzdpL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Stylish Jacket">
        <div class="card-body">
            <h5 class="card-title">Stylish Jacket</h5>
            <p class="card-text">Stay warm and stylish with our latest jacket collection.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/51n1-tDHpFL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Trendy Sunglasses">
        <div class="card-body">
            <h5 class="card-title">Trendy Sunglasses</h5>
            <p class="card-text">Complete your look with our trendy sunglasses.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/51FopdHk2gL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Casual Shirt">
        <div class="card-body">
            <h5 class="card-title">Casual Shirt</h5>
            <p class="card-text">Perfect for any casual occasion, available in various colors.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61Nbbwvh8mL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Elegant Dress">
        <div class="card-body">
            <h5 class="card-title">Elegant Dress</h5>
            <p class="card-text">Make a statement with our elegant collection of dresses.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61FWs-dm+qL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Sporty Sneakers">
        <div class="card-body">
            <h5 class="card-title">Sporty Sneakers</h5>
            <p class="card-text">Comfortable and trendy sneakers for your active lifestyle.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61J70J3DBwL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Classic T-Shirt">
        <div class="card-body">
            <h5 class="card-title">Classic T-Shirt</h5>
            <p class="card-text">A timeless classic in every wardrobe, available in various sizes.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/81sOaxv+2SL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Summer Shorts">
        <div class="card-body">
            <h5 class="card-title">Summer Shorts</h5>
            <p class="card-text">Stay cool and comfortable with our summer shorts.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/51hGOZhPMXL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Winter Coat">
        <div class="card-body">
            <h5 class="card-title">Winter Coat</h5>
            <p class="card-text">Keep warm in style with our luxurious winter coats.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/71p+y8xHJFL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Formal Pants">
        <div class="card-body">
            <h5 class="card-title">Formal Pants</h5>
            <p class="card-text">Elegance meets comfort with our range of formal pants.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/51r0PEHt83L.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Winter Scarf">
        <div class="card-body">
            <h5 class="card-title">Winter Scarf</h5>
            <p class="card-text">Add a touch of warmth and style with our winter scarves.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61D2ou4BoaL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Denim Jacket">
        <div class="card-body">
            <h5 class="card-title">Denim Jacket</h5>
            <p class="card-text">A versatile piece that adds a casual edge to any outfit.</p>
        </div>
    </div>
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61sJSvnI2LL.AC_UL480_FMwebp_QL65.jpg" class="card-img-top" alt="Beachwear">
        <div class="card-body">
            <h5 class="card-title">Beachwear</h5>
            <p class="card-text">Get ready for the sun with our stylish beachwear collection.</p>
        </div>
    </div>
</div>

<div class="contact-info">
    <p>Follow us on social media for updates!</p>
    <ul class="social-network">
        <li><a href="#" class="fa fa-facebook"></a></li>
        <li><a href="#" class="fa fa-twitter"></a></li>
        <li><a href="#" class="fa fa-instagram"></a></li>
    </ul>
</div>

<footer class="footer">
    <p>&copy; 2024 Trend Town. All rights reserved.</p>
</footer>

</body>
</html>