<?php
/**
 * @Author: Marte
 * @Date:   2018-10-27 08:56:54
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-27 20:50:06
 */
    $num = isset($_GET['num'])? $_GET['num']:'1';
    $total = isset($_GET['total'])? $_GET['total']:'';
    $uname = isset($_GET['uname'])? $_GET['uname']:'';
    $goodsid = isset($_GET['goodsId'])? $_GET['goodsId']:'';
    $point = isset($_GET['point'])? $_GET['point']:'自营国内仓';

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kaola";
    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die($conn->connect_error);
    }
    $conn->set_charset("utf8");

    $sql3 = 'select * from shoppingcar where goodsid="'.$goodsid.'"';
    $result3 = $conn->query($sql3);
    if($result3->num_rows > 0){
        $sql4 = 'update shoppingcar set num="'.$num.'",total="'.$total.'" where goodsid="'.$goodsid.'"';
        $conn->query($sql4);
    }else{
        $sql = 'select * from goods where id="'.$goodsid.'"';
        $result = $conn->query($sql);
        $arr = $result->fetch_all(MYSQLI_ASSOC);
        // var_dump($arr,$arr[0]["newprice"]);
        $d = $arr[0];
        // 加入到购物车的数据库中
        $sql2 = 'insert into shoppingcar (uname,goodsid,goodsname,imgurl,newprice,oldprice,num,total,point) values ("'.$uname.'",'.$goodsid.',"'.$d["goodsname"].'","'.$d["imgurl"].'","'.$d["newprice"].'","'.$d["oldprice"].'",'.$num.',"'.$total.'","'.$point.'")';
        // var_dump($sql2);
        $conn->query($sql2);
    }
   
    $result->close();
    $conn->close();
?>