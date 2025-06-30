<html>
<head>
    <title>Student Grade</title>
</head>
<body>
    <form method="post">
        <label for="marks">Enter your marks : </label>
        <input type="number" name="marks" required>
        <label for = "tMarks">Enter total mark : </label>
        <input type="tMarks" name="tMarks" required>
        <button type="submit">Check Grade</button>
    </form>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $marks = $_POST["marks"];
            $tMarks = $_POST["tMarks"];
            $percentage = ($marks / $tMarks) * 100;
            if ($percentage >= 60) {
                $grade = "First Division";
            } elseif ($percentage >= 45 && $marks < 60) {
                $grade = "Second Division";
            } elseif ($percentage >= 33 && $marks < 45) {
                $grade = "Third Division";
            } else {
                $grade = "Fail";
            }

            echo "<p>Your grade is: <strong>$grade</strong></p>";
        }
    ?>
</body>
</html>