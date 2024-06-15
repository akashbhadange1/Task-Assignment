<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "contactus";

// db connection
$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Form handling
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $errors = [];

    
    $name = validate_input($_POST["name"]);
    $organization = validate_input($_POST["organization"]);
    $email = validate_input($_POST["email"]);
    $contact = validate_input($_POST["contact"]);
    $message = validate_input($_POST["message"]);

    
    if (empty($name)) {
        $errors["name"] = "Name is required.";
    }

    if (empty($organization)) {
        $errors["organization"] = "Organization Name is required.";
    }

    if (empty($email)) {
        $errors["email"] = "Email ID is required.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors["email"] = "Invalid email format.";
    }

    if (empty($contact)) {
        $errors["contact"] = "Contact Number is required.";
    }

    if (empty($message)) {
        $errors["message"] = "Message is required.";
    }

    
    if (!empty($errors)) {
        echo json_encode($errors);
    } else {
        // Insert data
        $sql = "INSERT INTO contact (name, organization, email, contact, message) 
                VALUES ('$name', '$organization', '$email', '$contact', '$message')";

        if ($conn->query($sql) === TRUE) {
            echo "success";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}


function validate_input($data) {
    
    return htmlspecialchars(trim($data));
}


$conn->close();
?>
