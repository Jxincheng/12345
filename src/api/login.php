<?php
    $telephone = isset($_POST["telephone"])? $_POST["telephone"]:"";
    // $telephone = "15270274681";
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

    $sql1 = 'select * from user where uname="'.$telephone.'"';
    $result1 = $conn->query($sql1);
    // var_dump($result1->num_rows);
    if($result1->num_rows == 0){
        echo "0";   //用户名错误
    }else{   
        $result1->close();
        // $sql2 = 'select password from user where uname="'.$telephone.'"';
        $sql2 = 'select * from user where uname="'.$telephone.'" and password="'.$upassword.'"';
        $result2 = $conn->query($sql2);
        // $res = $result2->fetch_assoc();
        // var_dump($res["password"]);
        // if($res["password"] == $password){
        //     echo "ok";   //可以登录
        // }else if($res["password"] != $password){
        //     echo "1";  //密码错误
        // }
        // var_dump($result2->num_rows);
        if($result2->num_rows == 0){
            echo "1";
        }else{
            echo "2";
        }
        $result2->close();      
    }
   
    $conn->close();
    
?>