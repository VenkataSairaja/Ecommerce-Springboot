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
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSP4AX1jF_SimT74qIDQpwHKYImyuLvOktdw&s'); /* Replace with your background image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
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

        h3 {
            margin-top: 10px;
            color: #333; /* Darker color for the header */
        }

        .form-text {
            font-size: 0.875rem; /* Smaller font size for helper text */
        }
    </style>
    <title>Sign Up</title>
</head>
<body>

<div class="container">
    <div class="col-sm-12">
        <h3>Sign Up Now</h3>
        <p>Please fill out this form to register.</p>
        <form action="newuserregister" method="post">
            <div class="form-group">
                <label for="firstName">User Name</label>
                <input type="text" name="username" id="firstName" required placeholder="Your Username*" class="form-control form-control-lg">
            </div>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*" name="email" id="email" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control form-control-lg" required placeholder="Password*" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}" title="Must contain: at least one number, one uppercase letter, one lowercase letter, one special character, and 8 or more characters">
                <input type="checkbox" onclick="showPassword()"> Show Password
            </div>
            <div class="form-group">
                <label for="Address">Address</label>
                <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address" name="address"></textarea>
            </div>
            <span>Already have an account? <a class="linkControl" href="index">Login here</a></span>
            <br><br>
            <input type="submit" value="Register" class="btn btn-primary btn-block">
            <br>
        </form>
    </div>
</div>

<script>
    function showPassword() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
