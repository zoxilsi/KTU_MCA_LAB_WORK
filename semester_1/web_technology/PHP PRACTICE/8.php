<html>
<head>
    <title>Check Divisibility</title>
</head>
<body>
    <form method="post">
        <label for="number">Enter the number : </label>
        <input type="number" name="number"  required>
        <br><br>
        <label for="divisor">Enter the divisor:</label>
        <input type="number" name="divisor"  required>
        <br><br>
        <button type="submit">Check</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $number = $_POST["number"];
            $divisor = $_POST["divisor"];
            
            if ($divisor == 0) {
                echo "Divisor cannot be zero.";
            } else {
                if ($number % $divisor == 0) {
                    echo " $number is divisible </br>";
                    $ans = $number / $divisor;
                    echo "$number / $divisor = $ans";
                } else {
                    echo "$number is not divisible ";
                }
            }
        }
    ?>
</body>
</html>