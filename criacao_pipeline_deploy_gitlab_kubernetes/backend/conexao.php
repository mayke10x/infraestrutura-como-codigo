<?php
$servername = "<host_server>";
$username = "<username>";
$password = "<password>";
$database = "<db_name>";

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>
