<?php
/**
 * @Author: Marte
 * @Date:   2018-10-24 20:49:15
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-24 21:41:36
 */
    $uname = isset($_GET["uname"])? $_GET["uname"]:''; 

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");

    $sql1 = 'select * from user where uname="'.$uname.'"';
    $result1 = $conn->query($sql1);
    //
    $obj=$result1->num_rows;

    // if($obj==1){
    //     echo 'yes';
    // }else{
    //     echo 'no';
    // }
    if($uname == ""){
         echo "kong";    //用户名为空
    }else if($result1->num_rows != 0){
        echo "cunzai";   //用户名已存在
    }else{
        echo "ok";   //用户名可以使用
    }
    $conn -> close();
        
?>