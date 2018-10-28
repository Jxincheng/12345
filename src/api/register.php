<?php
/**
 * @Author: Marte
 * @Date:   2018-10-24 22:44:51
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-26 20:38:41
 */
    $uname = isset($_POST["uname"])? $_POST["uname"]:"";
    $upassword = isset($_POST["password"])? $_POST["password"]:"";

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");

    $sql = 'insert into user (uname,password) value ("'.$uname.'","'.$upassword.'")';
    // var_dump($sql);
    $conn->query($sql);
    // $res = $conn->query($sql);
    // if($res){
    //     echo "插入成功";
    // }else{
    //     echo "插入失败";
    // }       
    $conn -> close();
?>