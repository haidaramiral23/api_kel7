<?php
include "../connection.php";

$dsnNidn = $_POST['dsnNidn'];

$sql = "
        DELETE FROM dosen WHERE dsnNidn = '$dsnNidn'
        ";
$result = $connect->query($sql);

echo json_encode(array(
    "success" => $result
));

?>