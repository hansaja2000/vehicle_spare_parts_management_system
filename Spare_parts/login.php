<?php

@include 'config.php';

session_start();
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "vehicle_spare_parts_management_system";
// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
if (mysqli_connect_error()){
die('Connect Error ('. mysqli_connect_errno() .') '
. mysqli_connect_error());
}
else{

  if(isset($_POST['submit'])){
      
    $customer_ID = mysqli_real_escape_string($conn, $_POST['customer_ID']);
    $password = mysqli_real_escape_string($conn,$_POST['password']);

    $select = " SELECT * FROM customer WHERE C_id = '$customer_ID' && password = '$password'";

    $result = mysqli_query($conn, $select);

    if(mysqli_num_rows($result) > 0){
        $_SESSION['customer_ID'] = $customer_ID;

        header('location:homePage.php');
    }else{
        $error[] = 'incorrect password or customer ID.';
    }

  }
}

?>





<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles_log.css">
  <title>Registration Form Using HTML/CSS</title>
</head>
<body>
  <!-- Container Start -->
  <div id="container">
    <!-- Form Wrap Start -->
    <div class="form-wrap">
      <h1>Login</h1>
      <?php
         if(isset($error)){
            foreach($error as $error){
               echo '<span class="error-msg">'.$error.'</span>';
            }
         }
      ?>
      <!-- Form Start -->
      <form action=" " method = "post">
        <div class="form-group">
          <label for="customer_ID">Customer ID</label>
          <input type="int" name="customer_ID" placeholder="input customer ID"id="customer-ID">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" placeholder="input password" id="password">
        </div>
        <p class="bottom-text">
          Click
        </p>
        <input type="submit" value="login now" class="form-btn" name="submit">
        <p class="login-text">
        </p>
      </form>
      <!-- Form Close -->
    </div>
    <!-- Form Wrap Close -->
    <footer>
      <p>Don't Have an Account? <a href="index.html">Register Here</a></p>
    </footer>
    <div class="logo">
      <h1></h1>
    </div>

  </div>
  <!-- Container Close -->
</body>
</html>