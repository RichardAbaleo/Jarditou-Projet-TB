<?php
session_start();
 $_SESSION['username'] = $_POST['username'];
 $_SESSION['password'] = $_POST['password'];
 echo $_SESSION['username'],$_SESSION['password'];
 if ($_SESSION['username'] == 'root' && $_SESSION['password'] == 'root'){
      $_SESSION['actif'] = TRUE;
      header("Location: index_admin.php");
      exit();
 } else {
      $_SESSION['actif'] = FALSE;
      header("Location: identification.php");
      exit();
 }
 ?>