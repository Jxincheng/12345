<?php
/**
 * @Author: Marte
 * @Date:   2018-10-26 15:59:51
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-26 16:07:57
 */
    $id = isset($_GET["id"])? $_GET["id"]:'';
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");
    $sql = 'select * from goods where id="'.$id.'"';
    $result = $conn->query($sql);
    $arr = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    $result->close();
    $conn->close();
?>