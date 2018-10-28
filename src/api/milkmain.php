<?php
/**
 * @Author: Marte
 * @Date:   2018-10-25 21:20:38
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-26 16:08:15
 */
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    // 创建与数据库的连接
    $conn = new mysqli($servername,$username,$password,$dbname);
    // 检测连接失败
    if($conn->connect_error){
        die($conn->connect_error);
    }
    // 设置编码，防止乱码
    $conn->set_charset("utf8");
    // 书写sql语句
    $sql = 'select * from goods';
    // 执行sql语句
    $result = $conn->query($sql);
    // 将查询结果集组成数组
    $arr = $result->fetch_all(MYSQLI_ASSOC);
    // var_dump($arr);
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    // 关闭
    $result->close();
    $conn->close();
?>