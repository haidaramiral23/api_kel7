<?php
include "../connection.php";

    $kodeEvent       = $_POST['kodeEvent'];
    $namaEvent   = $_POST['namaEvent'];
    $deskripsiEvent       = $_POST['deskripsiEvent'];
    $tanggal       = $_POST['tanggal'];


$sql = "
        UPDATE event 
        SET	
            namaEvent = '$namaEvent',
            deskripsiEvent = '$deskripsiEvent',
            tanggal = '$tanggal'
        WHERE
            kodeEvent = '$kodeEvent'
        ";

$result = $connect->query($sql);
echo json_encode(array(
    "success" => $result
));
