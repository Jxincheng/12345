<?php
/**
 * @Author: Marte
 * @Date:   2018-10-27 13:20:00
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-27 13:58:09
 */
    $id = isset($_GET['id'])? $_GET['id']:'';
    $num = isset($_GET['num'])? $_GET['num']:'';
    $total = isset($_GET['total'])? $_GET['total']:'';

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");
    $sql = 'update shoppingcar set num="'.$num.'",total="'.$total.'" where id="'.$id.'"';
    // var_dump($sql);
    $conn->query($sql);
    $conn->close();
?>