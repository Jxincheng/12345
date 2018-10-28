<?php
/**
 * @Author: Marte
 * @Date:   2018-10-26 17:33:33
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-26 22:04:40
 */
    session_start();
    if(isset($_SESSION["uname"])){
        echo json_encode($_SESSION["uname"]);
    }
?>