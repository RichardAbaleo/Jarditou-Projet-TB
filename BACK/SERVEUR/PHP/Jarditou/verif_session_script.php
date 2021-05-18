<?php
session_start();
 $_SESSION['username'] = $_POST['username'];
 $_SESSION['password'] = $_POST['password'];
 if ($_SESSION['username'] == 'root' && $_SESSION['password'] == 'root'){
    header("Location: index_admin.php");
    $_SESSION['actif'] = TRUE;
    exit();
 } else {
    header("Location: identification.php");
    $_SESSION['actif'] = FALSE;
    exit();
 }
 ?>