<html>
<head>
    <title>Factorial </title>
</head>
<body>
    <h2>Calculate Factorial</h2>
    <form method="post">
        <label for="num">Enter a number:</label>
        <input type="num" name="num" required>
        <button type="submit">Calculate</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $num = $_POST["num"];
            $fact = 1;
            for ($i = 1; $i <= $num; $i++) {
                $fact *= $i;
            }
            echo "<p>The factorial of $num is: <strong>$fact</strong></p>";
        }
    ?>
</body>
</html>