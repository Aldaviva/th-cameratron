<?php

//ini_set('display_errors', true);

unset($_GET['kohana_uri']);

$_SERVER['PATH_INFO'] = '/upload/receivePhoto';

include('index.php');
