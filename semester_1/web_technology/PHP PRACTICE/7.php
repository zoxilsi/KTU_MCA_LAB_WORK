<html>
<head>
    <title>Area</title>
</head>
<body>
    <h2>Area of a Triangle</h2>
    <form method="post">
        <label for="base">Enter the base : </label>
        <input type="number" name="base" required>
        <br><br>
        <label for="height">Enter the height : </label>
        <input type="number" name="height" required>
        <br><br>
        <button type="submit">Area</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $base = $_POST["base"];
            $height = $_POST["height"];
            $area = 0.5 * $base * $height;
            echo "AREA = $area";
        }
    ?>
</body>
</html>