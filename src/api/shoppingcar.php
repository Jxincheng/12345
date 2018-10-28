<?php
/**
 * @Author: Marte
 * @Date:   2018-10-27 09:54:59
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-27 10:04:45
 */
    $uname = isset($_GET['uname'])? $_GET['uname']:'';

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");
    $sql = 'select * from shoppingcar where uname="'.$uname.'"';
    $result = $conn->query($sql);
    $arr = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    
    $result->close();
    $conn->close();
?>