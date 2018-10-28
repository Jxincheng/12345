<?php
/**
 * @Author: Marte
 * @Date:   2018-10-26 17:20:26
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-10-26 17:22:43
 */
    session_start();
    $uname = isset($_GET["uname"])? $_GET["uname"]:"";
    $_SESSION["uname"] = $uname;
?>