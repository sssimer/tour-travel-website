<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);


$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "breezy"; 


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $phone = trim($_POST['phone']);
    $destination = trim($_POST['destination']);
    $message = trim($_POST['message']);

   
    if (empty($name) || empty($email) || empty($phone) || empty($destination) || empty($message)) {
        echo "Please fill in all fields.";
    } else {
        
        $name = $conn->real_escape_string($name);
        $email = $conn->real_escape_string($email);
        $phone = $conn->real_escape_string($phone);
        $destination = $conn->real_escape_string($destination);
        $message = $conn->real_escape_string($message);

       
        $sql = "INSERT INTO contact (name, email, phone, destination, message) 
                VALUES ('$name', '$email', '$phone', '$destination', '$message')";

        if ($conn->query($sql) === TRUE) {
          
            echo "Thank you for contacting us! We will get back to you soon.";
           
          
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

$conn->close();

?>