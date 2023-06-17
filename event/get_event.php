<?php 
    include "../connection.php";

    $sql = "SELECT * FROM event";

    $result = $connect->query($sql);
    
    if($result->num_rows > 0){
       $event = array();
       while($row = $result->fetch_assoc()){
        $event[] = $row;
       }

       echo json_encode(array(
        "success"=> true,
        "event"=>$event,
       ));
    }else{
    echo json_encode(array(
        "success" => false,
    ));
    }
?>

    
