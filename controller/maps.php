<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$maps = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko ORDER BY maps.id_map DESC";
$view_maps = mysqli_query($conn, $maps);