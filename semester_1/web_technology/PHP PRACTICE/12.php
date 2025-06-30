
<html>
<head>

    <title>Extract Username</title>
</head>
<body>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $email = filter_var($email, FILTER_SANITIZE_EMAIL);
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $username = explode('@', $email)[0];

        echo "Username: <strong>$username</strong>";
    } else {
        echo "Invalid email address.";
    }
}
?>

<form method="post">
    <label for="email">Enter your email: </label>
    <input type="email" name="email" id="email" required>
    <button type="submit">Submit</button>
</form>

</body>
</html>