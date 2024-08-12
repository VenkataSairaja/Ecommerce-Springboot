<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <style>
        body {
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcI3liz4WZWQwpYyENgHz8dvit8xFylliTmg&s'); /* Replace with your background image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .row {
            width: 100%;
        }

        .description {
            background: rgba(255, 255, 255, 0.8); /* Slightly opaque background */
            padding: 2rem;
            border-radius: 0.5rem;
            box-shadow: 0 0 1rem rgba(0, 0, 0, 0.1);
        }

        .description img {
            max-width: 100%;
            height: auto;
            border-radius: 0.5rem;
            margin-bottom: 1rem;
        }

        .description h3 {
            margin-bottom: 1rem;
            color: #333;
        }

        .container {
            background: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
            padding: 2rem;
            border-radius: 0.5rem;
            box-shadow: 0 0 1rem rgba(0, 0, 0, 0.1);
            max-width: 500px; /* Set a max width for better form focus */
            width: 100%; /* Ensure it is responsive */
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-control-lg {
            font-size: 1.25rem; /* Larger text in input fields */
        }

        .btn-primary {
            font-size: 1.25rem;
            padding: 0.75rem 1.5rem; /* Increase button padding for better touch target */
        }

        .linkControl {
            color: #007bff;
            text-decoration: none;
        }

        .linkControl:hover {
            text-decoration: underline;
        }

        h2 {
            margin-bottom: 1rem;
            text-align: center;
            color: #333; /* Darker color for the header */
        }

        h3 {
            color: red;
            text-align: center;
            margin-top: 1rem; /* Add margin above the error message */
        }

        .text-center {
            margin-top: 1rem; /* Add margin above the registration link */
        }
    </style>
    <title>Login</title>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 d-none d-md-block">
            <div class="description">
                <img src="https://cdn.pixabay.com/photo/2021/11/22/20/20/online-6817350_640.jpg" alt="E-commerce Image Left">
                <h3>Discover Our Products</h3>
                <p>Browse a wide range of high-quality products tailored to your needs. From electronics to fashion, find everything you need at unbeatable prices.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="container my-3">
                <div class="col-sm-12">
                    <h2>User Login</h2>
                    <form action="userloginvalidate" method="post">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" name="username" id="username" placeholder="Username*" required class="form-control form-control-lg">
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control form-control-lg" placeholder="Password*" required name="password" id="password">
                        </div>
                        <div class="text-center">
                            <span>Don't have an account? <a class="linkControl" href="/register">Register here</a></span>
                        </div>
                        <br>
                        <input type="submit" value="Login" class="btn btn-primary btn-block">
                        <br>
                        <h3>${message }</h3>
                        <br>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4 d-none d-md-block">
            <div class="description">
                <img src="https://food-blog.csb.com/hubfs/Blog/Online%20Handel/Webshop_Food-865135-edited.jpg" alt="E-commerce Image Right">
                <h3>Shop with Us</h3>
                <p>Enjoy a seamless shopping experience with secure payment options and fast delivery. Our customer support is here to assist you every step of the way.</p>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
