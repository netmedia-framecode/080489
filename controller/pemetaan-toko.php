<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$toko = "SELECT * FROM toko WHERE NOT EXISTS (SELECT 1 FROM maps WHERE maps.id_toko = toko.id_toko) ORDER BY toko.id_toko DESC";
$view_toko = mysqli_query($conn, $toko);
$maps = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko ORDER BY maps.id_map DESC";
$view_maps = mysqli_query($conn, $maps);
if (isset($_POST["add_pin_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (maps($conn, $validated_post, $action = 'insert') > 0) {
    $message = "Pin toko berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: pemetaan-toko");
    exit();
  }
}
if (isset($_POST["delete_pin_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (maps($conn, $validated_post, $action = 'delete') > 0) {
    $message = "Pin toko berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: pemetaan-toko");
    exit();
  }
}
