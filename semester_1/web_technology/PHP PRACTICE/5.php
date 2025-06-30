<html>
<head>
</head>
<body>
    <h2>Check Number is Positive, Negative, or Zero</h2>

    <form method="post">
        <label for="num">Enter a number:</label>
        <input type="num" name="num" required>
        <button type="submit">Check</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $num = $_POST["num"];
            
            if ($num > 0) {
                $result = "The number $num is Positive.";
            } elseif ($num < 0) {
                $result = "The number $num is Negative.";
            } else {
                $result = "The number is Zero.";
            }

            echo "<p><strong>$result</strong></p>";
        }
    ?>
</body>
</html>