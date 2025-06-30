<html>
<head>
    <title>Sum Primes</title>
</head>
<body>
    <form method="post">
        <label for="number">Enter a number (N):</label>
        <input type="number" name="number" required>
        <button type="submit">Calculate Sum</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $N = $_POST["number"];
            function isPrime($num) {
                if ($num <= 1) return false;
                for ($i = 2; $i <= sqrt($num); $i++) {
                    if ($num % $i == 0) return false;
                }
                return true;
            }
            $sum = 0;
            echo "prime numbers are : ";
            for ($i = 2; $i <= $N; $i++) {
                if (isPrime($i)) {
                	$sum += $i;
                	echo "$i  ";
                }
            }

            echo "</br> sum = $sum";
        }
    ?>
</body>
</html>