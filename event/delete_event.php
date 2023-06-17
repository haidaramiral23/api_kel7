<?php
include "../connection.php";

$kodeEvent = $_POST['kodeEvent'];

$sql = "
        DELETE FROM event WHERE kodeEvent = '$kodeEvent'
        ";
$result = $connect->query($sql);

echo json_encode(array(
    "success" => $result
));

?>