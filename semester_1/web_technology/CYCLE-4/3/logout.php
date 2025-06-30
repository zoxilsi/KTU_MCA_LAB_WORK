<?php
setcookie('email', '', time() - 3600, '/');
setcookie('name', '', time() - 3600, '/');
header("Location: login.php");

?>
