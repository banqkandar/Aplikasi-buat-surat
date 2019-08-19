<?php
session_start();
$host = 'localhost';
$user = 'root';
$pass = '';
$db   = 'buat_surat';

$con = mysqli_connect($host, $user, $pass, $db);

if (!$con) die(mysqli_connect_error());

?>