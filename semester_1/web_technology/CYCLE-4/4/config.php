<?php
$conn = mysqli_connect('localhost', 'root', '', 'student_db');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

function clean_input($data) {
    return htmlspecialchars(stripslashes(trim($data)));
}
?>