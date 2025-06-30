<html>
<head>
</head>
<body>

    <h2>Sort an Array of Numbers in Reverse Order (Highest to Lowest)</h2>

    <form method="POST" action="">
        <label for="numbers">Enter numbers separated by spaces: </label><br>
        <input type="text" id="numbers" name="numbers" required><br><br>
        <input type="submit" value="Sort">
    </form>

    <?php

    function inToArr($input) {
        $numbers = [];
        $num = '';
        $isNegative = false;  

        for ($i = 0; $i < strlen($input); $i++) {
            $char = $input[$i];
            

            if ($char == '-' && ($i == 0 || $input[$i - 1] == ' ')) {
                $isNegative = true; 
            }

            elseif ($char >= '0' && $char <= '9') {
                $num .= $char;
            }

            elseif ($char === ' ' && $num !== '') {
                if ($isNegative) {
                    $numbers[] = -(int)$num;  
                    $isNegative = false;      
                } else {
                    $numbers[] = (int)$num;
                }
                $num = '';  
            }
        }

        if ($num !== '') {
            if ($isNegative) {
                $numbers[] = -(int)$num; 
            } else {
                $numbers[] = (int)$num;
            }
        }

        return $numbers;
    }


    function sortN($array) {
        $n = count($array);
        for ($i = 0; $i < $n - 1; $i++) {
            for ($j = 0; $j < $n - 1 - $i; $j++) {
                if ($array[$j] < $array[$j + 1]) {
                    $temp = $array[$j];
                    $array[$j] = $array[$j + 1];
                    $array[$j + 1] = $temp;
                }
            }
        }
        return $array;
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $input = $_POST['numbers'];
        $numbers = inToArr($input);

        $sortedNumbers = sortN($numbers);
        echo "<h3>Sorted Array (Highest to Lowest):</h3>";
        for ($i = 0; $i < count($sortedNumbers); $i++) {
            echo $sortedNumbers[$i] . " ";
        }
    }
    ?>

</body>
</html>
