<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Database credentials
    $servername = "localhost";
    $username = "root";  // Your database username
    $password = "";      // Your database password
    $dbname = "breezy";  // Your database name

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get the form data
    $user = mysqli_real_escape_string($conn, $_POST['username']);
    $pass = mysqli_real_escape_string($conn, $_POST['password']);

    // Query to check if the user exists
    $sql = "SELECT * FROM users WHERE username = '$user'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // User found, fetch the user data
        $row = $result->fetch_assoc();

        // Verify the password
        if (password_verify($pass, $row['password'])) {
            // Password matches, redirect to the homepage
            header("Location: index.html");
            exit();
        } else {
            // Password doesn't match
            $error_message = "Invalid Username or Password!";
        }
    } else {
        // No user found
        $error_message = "Invalid Username or Password!";
    }

    // Close the connection
    $conn->close();
}
?>


