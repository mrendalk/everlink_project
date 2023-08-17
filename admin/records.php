<?php require_once 'header.php' ?>

<?php

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog_oop";

// Create a database connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Delete record if delete button is clicked
if (isset($_GET['delete_id'])) {
    $deleteId = $_GET['delete_id'];
    $deleteSql = "DELETE FROM p_users WHERE id = $deleteId";
    if ($conn->query($deleteSql) === TRUE) {
        $_SESSION['txt'] = "Record deleted successfully.";
    } else {
        $_SESSION['txt'] = "Error deleting record: " . $conn->error;
    }
    header("Location: records.php");
    exit();
}

// Retrieve data from the database
$selectSql = "SELECT * FROM p_users";
$result = $conn->query($selectSql);

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Data Display</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        a:hover {
            color: #f44336;
        }
    </style>
</head>
<body>
    <h1>User Data</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Zip Code</th>
            <th>Telephone</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row["id"]."</td>";
                echo "<td>".$row["full_name"]."</td>";
                echo "<td>".$row["address"]."</td>";
                echo "<td>".$row["city"]."</td>";
                echo "<td>".$row["state"]."</td>";
                echo "<td>".$row["zip_code"]."</td>";
                echo "<td>".$row["phone_number"]."</td>";
                echo "<td>".$row["email"]."</td>";
                echo "<td><a href='display_users.php?delete_id=".$row["id"]."'>Delete</a></td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='9'>No records found</td></tr>";
        }
        ?>
    </table>
</body>
</html>


<?php require_once 'footer.php'?>


            
