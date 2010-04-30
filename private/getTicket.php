<?php

ini_set('session.use_cookies', false);

session_start();

$_SESSION['Client IP'] = $_SERVER['REMOTE_ADDR'];
$_SESSION['Start time'] = time();

echo session_id();

?>