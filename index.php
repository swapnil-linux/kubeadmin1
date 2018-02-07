<?php
$servername = "mysql";
$username = "user1";
$password = "password";
$dbname = "erp";

echo "<h1>This page is served from $_SERVER['SERVER_NAME']</h1>";
echo "<br><br>";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT productCode, productName, productLine FROM products";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "productCode: " . $row["productCode"]. " - productName: " . $row["productName"]. " " . $row["productLine"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
