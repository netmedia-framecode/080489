<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$toko = "SELECT * FROM toko ORDER BY id_toko DESC LIMIT 50";
$view_toko = mysqli_query($conn, $toko);
$galeri = "SELECT * FROM galeri ORDER BY id_galeri DESC LIMIT 50";
$view_galeri = mysqli_query($conn, $galeri);
if (isset($_POST["add_galeri"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (galeri($conn, $validated_post, $action = 'insert', $baseURL) > 0) {
    $message = "Gambar baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: galeri");
    exit();
  }
}
if (isset($_POST["delete_galeri"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (galeri($conn, $validated_post, $action = 'delete', $baseURL) > 0) {
    $message = "Gambar yang dipilih berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: galeri");
    exit();
  }
}
