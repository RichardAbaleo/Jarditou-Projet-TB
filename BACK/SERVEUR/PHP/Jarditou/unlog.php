<?php
session_start();
$_SESSION['username'] = NULL;
$_SESSION['password'] = NULL;
$_SESSION['actif'] = FALSE;
header("Location: index.php");
exit();
?>