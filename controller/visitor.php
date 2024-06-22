<?php

require_once("config/Base.php");
require_once("config/Alert.php");

$tentang = "SELECT * FROM tentang";
$view_tentang = mysqli_query($conn, $tentang);
$count_toko = "SELECT * FROM toko";
$view_count_toko = mysqli_query($conn, $count_toko);
$count_maps = "SELECT * FROM maps";
$view_count_maps = mysqli_query($conn, $count_maps);
$toko = "SELECT * FROM toko ORDER BY id_toko DESC LIMIT 4";
$view_toko = mysqli_query($conn, $toko);
$toko_detail = "SELECT * FROM toko ORDER BY id_toko DESC";
$view_toko_detail = mysqli_query($conn, $toko_detail);
$maps = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko ORDER BY maps.id_map DESC";
$view_maps = mysqli_query($conn, $maps);
