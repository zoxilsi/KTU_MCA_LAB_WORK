<html>
<head>
    <title>Armstrong Number</title>
</head>
<body>
    <h2>Check Armstrong Number</h2>
    <form method="post">
        <label for="number">Enter a number: </label>
        <input type="number" name="number" required>
        <button type="submit">Check</button>
    </form>

    <?php
    	if ($_SERVER["REQUEST_METHOD"] == "POST") {
    		$number = $_POST["number"];
    		$temp = $number;
    		$numDigits = 0;


    		while ($temp > 0) {
        		$temp = (int)($temp / 10);
        		$numDigits++;
    		}

    		$sum = 0;
    		$temp = $number;


    		while ($temp > 0) {
        		$digit = $temp % 10; 
        		$temp = (int)($temp / 10);
        		$product = 1;


        		for ($i = 0; $i < $numDigits; $i++) {
            			$product *= $digit;
        		}

        		$sum += $product;
    		}

    	if ($sum == $number) {
        	echo "Armstrong number";
    	} 
    	else {
        	echo "Not an Armstrong number";
    	}
	}
	?>

</body>
</html>