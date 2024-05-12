<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$toko = "SELECT * FROM toko";
$view_toko = mysqli_query($conn, $toko);

$pemetaan_toko = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko ORDER BY maps.id_map DESC";
$view_pemetaan_toko = mysqli_query($conn, $pemetaan_toko);

$maps = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko ORDER BY maps.id_map DESC";
$view_maps = mysqli_query($conn, $maps);