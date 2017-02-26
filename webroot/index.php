<?php

$servername = "mysql";
$username = "root";
$password = "root";
$dbname = "our_app_db";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT message FROM hello");
    $stmt->execute();

    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    foreach($stmt->fetchAll() as $k => $v) {

        //BUSINESS LOGIC
        echo "<h1 style='color:red'>Hello " . $v['message'] ."</h1>";


    }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
