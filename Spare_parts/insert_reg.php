<?php
$firstname = filter_input(INPUT_POST, 'firstname');
$lastname = filter_input(INPUT_POST, 'lastname');
$email = filter_input(INPUT_POST, 'email');
$password = filter_input(INPUT_POST, 'password');
$address = filter_input(INPUT_POST, 'address');
$phonenumber = filter_input(INPUT_POST, 'phonenumber');

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
$sql = "INSERT INTO customer (f_name, l_name,C_mail,password,C_add,C_phone)
values ('$firstname','$lastname','$email','$password','$address','$phonenumber')";
if ($conn->query($sql)){
    

    header('location:homePage.php');
    echo "New record is inserted sucessfully";
}
else{
echo "Error: ". $sql ."
". $conn->error;
}
$conn->close();
}

?>