<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);


include('config.php');


if ($_SERVER["REQUEST_METHOD"] == "POST") {

    
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    
    if (empty($username) || empty($email) || empty($password)) {
        echo "<script>alert('All fields are required.'); window.history.back();</script>";
        exit();
    }

    
    $stmtInsert = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
    $stmtInsert->bind_param("sss", $username, $email, $password);

    if ($stmtInsert->execute()) {
        echo "<script>alert('Account created successfully!'); window.location.href = 'index.html';</script>";
    } else {
        echo "<script>alert('Error creating account. Please try again later.'); window.history.back();</script>";
    }

   
    mysqli_close($conn);
}

include('signin.html');
?>