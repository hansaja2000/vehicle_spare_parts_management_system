<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="home.css">
  <title>Registration Form Using HTML/CSS</title>
</head>
<body>
  <!-- Container Start -->
  <div id="container">
    <!-- Form Wrap Start -->
    <div class="form-wrap">
      <h1>Dashboard</h1>
      <?php  echo "Login successful User ID : 00".$_SESSION['customer_ID']; ?>
      
      <!-- Form Start -->
      <form method="post" action="insert_reg.php">
       
      </form>
      <!-- Form Close -->
    </div>
    <!-- Form Wrap Close -->
    <footer>
      <p>Login with different account? <a href="login.php">Sign out</a></p>
    </footer>
    <div class="logo">
      <h1></h1>
    </div>

  </div>
  <!-- Container Close -->
</body>
</html>