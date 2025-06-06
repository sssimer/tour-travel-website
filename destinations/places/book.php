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
$email = $_POST['email'];
$phone = $_POST['phone'];
$message = $_POST['message'];
$indate = $_POST['indate'];
$outdate = $_POST['outdate'];
$number = $_POST['number'];
$destination = $_POST['destination'];
$room = $_POST['room'];

// Validate data (example: ensuring email is valid)
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    die("Invalid email format.");
}

// Check if all required fields are filled
if (empty($name) || empty($email) || empty($phone) || empty($indate) || empty($outdate) || empty($number) || empty($destination) || empty($room)) {
    die("Please fill in all required fields.");
}

// Validate check-out date
if (strtotime($outdate) <= strtotime($indate)) {
    die("Check-out date must be later than the check-in date.");
}

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO booking (name, email, phone, message, indate, outdate, number, destination, room) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssiss", $name, $email, $phone, $message, $indate, $outdate, $number, $destination, $room);

// Execute the statement
if ($stmt->execute()) {
    header("Location: end.html");
exit();

} else {
    echo "Error: " . $stmt->error;
}

// Close connection
$stmt->close();
$conn->close();
?>
