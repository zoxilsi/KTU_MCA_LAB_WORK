<?php


if (!isset($_COOKIE['email'])) {
    header("Location: login.php");
     exit();
}
$email = $_COOKIE['email'];
$name = $_COOKIE['name'];
?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #45a049;
        }

        .message {
            font-size: 18px;
            color: #555;
        }

    </style>
</head>
<body>
    <div class="container">
     <h2>Cookie login</h2>
        <h2>Welcome, <?php echo htmlspecialchars($email); ?>!</h2>
        <p class="message">You have successfully logged in.</p>
        <a href="logout.php">Logout</a>
    </div>
</body>
</html>
