<html>
<head>
    <title>SUM</title>
</head>
<body>
    <h2>Add Two Numbers</h2>

    <form method="post">
        <label for="number1">Enter the first number:</label>
        <input type="number" name="number1" required>
        <br><br>
        <label for="number2">Enter the second number:</label>
        <input type="number" name="number2" required>
        <br><br>
        <button type="submit">Add Numbers</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $number1 = $_POST["number1"];
            $number2 = $_POST["number2"];
            
            $sum = $number1 + $number2;
            echo "$sum";
        }
    ?>
</body>
</html>