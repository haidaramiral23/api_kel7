<?php 
    include "../connection.php";

    $kodeEvent       = $_POST['kodeEvent'];
    $namaEvent   = $_POST['namaEvent'];
    $deskripsiEvent       = $_POST['deskripsiEvent'];
    $tanggal       = $_POST['tanggal'];
    
    $sql1 = "SELECT * FROM event WHERE kodeEvent = '$kodeEvent'";
    $check = $connect->query($sql1);
    $reason = "";
    $success = true;

    if($check->num_rows > 0){
        $success = false;
        $reason = "kode event sudah ada";
    }else{
        $sql2 = "
        INSERT INTO event SET	
            kodeEvent = '$kodeEvent',
            namaEvent = '$namaEvent',
            deskripsiEvent = '$deskripsiEvent',
            tanggal = '$tanggal'
        "; 
        
        $result = $connect->query($sql2);

        if(!$result){
            $success = false;
            $reason = "Gagal add Event";
        }
    }

    echo json_encode(array(
        "success" => $success,
        "reason" =>$reason,
    ));
