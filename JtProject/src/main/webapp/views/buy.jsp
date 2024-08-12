<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Form</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
  padding: 60px 0;
  background-color: rgba(178,209,229,0.7);
  margin: 0 auto;
  width: 100%;
}
.body-text {
  padding: 0 20px 30px 20px;
  font-family: "Roboto", sans-serif;
  font-size: 1em;
  color: #333;
  text-align: center;
  line-height: 1.2em;
}
.form-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.card-wrapper {
  background-color: #6FB7E9;
  width: 100%;
  display: flex;
}
.personal-information {
  background-color: #3C8DC5;
  color: #fff;
  padding: 10px 0;
  text-align: center;
  width: 100%;
}
h1 {
  font-size: 1.3em;
  font-family: "Roboto", sans-serif;
}
input.form-control {
  height: 50px;
}
input[type="submit"] {
  display: block;
  height: 60px;
  width: 100%;
  border: none;
  background-color: #3C8DC5;
  color: #fff;
  margin-top: 20px;
  cursor: pointer;
  font-size: 0.9em;
  text-transform: uppercase;
  font-weight: bold;
}
input[type="submit"]:hover {
  background-color: #6FB7E9;
  transition: 0.3s ease;
}
.success-message {
  display: none;
  margin-top: 20px;
  padding: 10px;
  background-color: #d4edda;
  color: #155724;
  border: 1px solid #c3e6cb;
  border-radius: 0.25rem;
}
</style>
</head>
<body>
<div class="container">
  <div class="body-text">Write your name in the right fields. Also write your imaginary card number. By clicking CCV field card will turn.</div>
  <form id="payment-form" class="form-container">
    <div class="personal-information">
      <h1>Payment Information</h1>
    </div> <!-- end of personal-information -->

    <div class="form-row">
      <div class="col-md-6 mb-3">
        <input type="text" name="first-name" class="form-control" placeholder="First Name"/>
      </div>
      <div class="col-md-6 mb-3">
        <input type="text" name="last-name" class="form-control" placeholder="Surname"/>
      </div>
    </div>

    <div class="form-row">
      <div class="col-md-6 mb-3">
        <input type="text" name="number" class="form-control" maxlength="12" placeholder="Card Number"/>
      </div>
      <div class="col-md-6 mb-3">
        <input type="text" name="expiry" class="form-control" placeholder="MM / YY" />
      </div>
    </div>

    <div class="form-row">
      <div class="col-md-6 mb-3">
        <input type="text" name="cvc" class="form-control" maxlength="3" maxlength="3" placeholder="CCV"/>
      </div>
    </div>

    <div class="card-wrapper mb-3"></div>

    <div class="form-row">
      <div class="col-md-12 mb-3">
        <input type="text" name="streetaddress" class="form-control" required="required" maxlength="45" placeholder="Street Address"/>
      </div>
    </div>

    <div class="form-row">
      <div class="col-md-6 mb-3">
        <input type="text" name="city" class="form-control" required="required" maxlength="20" placeholder="City"/>
      </div>
      <div class="col-md-6 mb-3">
        <input type="text" name="zipcode" class="form-control" required="required" pattern="[0-9]*" maxlength="5" placeholder="ZIP code"/>
      </div>
    </div>

    <div class="form-row">
      <div class="col-md-12 mb-3">
        <input type="email" name="email" class="form-control" required="required" maxlength="40" placeholder="Email"/>
      </div>
    </div>

    <input type="submit" class="btn btn-primary" value="Submit"/>

    <div id="success-message" class="success-message">
      Successfully ordered! Your transaction number is <span id="transaction-number"></span>.
    </div>
  </form>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
  $('#payment-form').on('submit', function(event) {
    event.preventDefault(); // Prevent the default form submission

    // Generate a random transaction number
    const transactionNumber = Math.floor(Math.random() * 1000000);

    // Display the success message
    $('#transaction-number').text(transactionNumber);
    $('#success-message').show();
  });
});
</script>
</body>
</html>
