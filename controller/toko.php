<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$toko = "SELECT * FROM toko ORDER BY id_toko DESC LIMIT 50";
$view_toko = mysqli_query($conn, $toko);
if (isset($_POST["add_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (toko($conn, $validated_post, $action = 'insert') > 0) {
    $message = "Toko baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: toko");
    exit();
  }
}
if (isset($_POST["import_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (toko($conn, $validated_post, $action = 'import') > 0) {
    $message = "Data toko baru berhasil di import.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: toko");
    exit();
  }
}
if (isset($_POST["export_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (toko($conn, $validated_post, $action = 'export') > 0) {
    $message = "Data toko roti berhasil di export.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: toko");
    exit();
  }
}
if (isset($_POST["edit_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (toko($conn, $validated_post, $action = 'update') > 0) {
    $message = "Toko " . $_POST['nama_tokoOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: toko");
    exit();
  }
}
if (isset($_POST["delete_toko"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (toko($conn, $validated_post, $action = 'delete') > 0) {
    $message = "Toko " . $_POST['nama_toko'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: toko");
    exit();
  }
}
