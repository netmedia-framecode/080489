<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$toko = "SELECT * FROM toko ORDER BY id_toko DESC";
$view_toko = mysqli_query($conn, $toko);
$roti = "SELECT roti.*, toko.nama_toko FROM roti JOIN toko ON roti.id_toko=toko.id_toko ORDER BY roti.id_roti DESC";
$view_roti = mysqli_query($conn, $roti);
if (isset($_POST["add_roti"])) {
  // $validated_post = array_map(function ($value) use ($conn) {
  //   return valid($conn, $value);
  // }, $_POST);
  if (roti($conn, $_POST, $action = 'insert') > 0) {
    $message = "Data roti baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: roti");
    exit();
  }
}
if (isset($_POST["edit_roti"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (roti($conn, $validated_post, $action = 'update') > 0) {
    $message = "Data roti " . $_POST['jenis_rotiOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: roti");
    exit();
  }
}
if (isset($_POST["delete_roti"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (roti($conn, $validated_post, $action = 'delete') > 0) {
    $message = "Data roti " . $_POST['jenis_roti'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: roti");
    exit();
  }
}
