<?php
// insert.php

// Include database configuration
// require_once 'db_config.php'; // Replace with your database configuration file
$conn = mysqli_connect('localhost:3306','root','','blog_oop');

// Check if the form has been submitted
if (isset($_POST['user-btn'])) {
    // Retrieve user input from the form
    $fullName = $_POST['user_name'];
    $address = $_POST['u_addres'];
    $city = $_POST['u_city'];
    $state = $_POST['u_state'];
    $zipCode = $_POST['z_code'];
    $phoneNumber = $_POST['p_number'];
    $email = $_POST['email'];

    // Insert data into the database
    $query = "INSERT INTO p_users (full_name, address, city, state, zip_code, phone_number, email) 
              VALUES ('$fullName', '$address', '$city', '$state', '$zipCode', '$phoneNumber', '$email')";

    if (mysqli_query($conn, $query)) {
        // Insert successful
        session_start();
        $_SESSION['txt'] = "Registration successful!";
        header("Location: register.php"); // Redirect to registration page or wherever you want
        exit();
    } else {
        // Insert failed
        session_start();
        $_SESSION['txt'] = "Registration failed. Please try again.";
        header("Location: register.php"); // Redirect to registration page or wherever you want
        exit();
    }
}

// Close database connection
mysqli_close($conn);
?>

