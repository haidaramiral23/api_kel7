<?php
include "../connection.php";

    $dsnNidn       = $_POST['dsnNidn'];
    $dsnNama   = $_POST['dsnNama'];
    $dsnAlamat       = $_POST['dsnAlamat'];
    $dsnGol       = $_POST['dsnGol'];
    $dsnProdi       = $_POST['dsnProdi'];


$sql = "
        UPDATE dosen 
        SET	
            dsnNama = '$dsnNama',
            dsnAlamat = '$dsnAlamat',
            dsnGol = '$dsnGol',
            dsnProdi = '$dsnProdi'
        WHERE
            dsnNidn = '$dsnNidn'
        ";

$result = $connect->query($sql);
echo json_encode(array(
    "success" => $result
));
