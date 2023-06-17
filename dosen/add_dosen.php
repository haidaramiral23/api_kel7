<?php 
    include "../connection.php";

    $dsnNidn       = $_POST['dsnNidn'];
    $dsnNama   = $_POST['dsnNama'];
    $dsnAlamat       = $_POST['dsnAlamat'];
    $dsnGol       = $_POST['dsnGol'];
    $dsnProdi       = $_POST['dsnProdi'];
    
    $sql1 = "SELECT * FROM dosen WHERE dsnNidn = '$dsnNidn'";
    $check = $connect->query($sql1);
    $reason = "";
    $success = true;

    if($check->num_rows > 0){
        $success = false;
        $reason = "nidn sudah ada";
    }else{
        $sql2 = "
        INSERT INTO dosen SET	
            dsnNidn = '$dsnNidn',
            dsnNama = '$dsnNama',
            dsnAlamat = '$dsnAlamat',
            dsnGol = '$dsnGol',
            dsnProdi = '$dsnProdi'
        "; 
        
        $result = $connect->query($sql2);

        if(!$result){
            $success = false;
            $reason = "Gagal add Dosen";
        }
    }

    echo json_encode(array(
        "success" => $success,
        "reason" =>$reason,
    ));
