<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "breezy";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$name = $_POST['name'];
$age = $_POST['age'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$message = $_POST['message'];

// Prepare SQL query to insert data into the database
$sql = "INSERT INTO feedback (name, age, email, phone, message) VALUES ('$name', '$age', '$email', '$phone', '$message')";

// Execute SQL query
if ($conn->query($sql) === TRUE) {
    echo "Awesome! Your feedback has been sent. Thanks for helping us make things better.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close connection
$conn->close();
?>
