<?php
/**
 * @Author: Marte
 * @Date:   2018-10-27 14:35:39
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-27 19:51:47
 */
    $id = isset($_GET['id'])? $_GET['id']:'';

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");
    // $sql = 'delete from shoppingcar where id="'.$id.'"';
    $sql = 'delete from shoppingcar where id in('.$id.')';
    $conn->query($sql);
    $conn->close();
?>