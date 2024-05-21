<?php

require_once("config/Base.php");
require_once("config/Alert.php");

$tentang = "SELECT * FROM tentang";
$view_tentang = mysqli_query($conn, $tentang);
$galeri_current = "SELECT * FROM galeri ORDER BY id_galeri DESC LIMIT 1";
$view_galeri_current = mysqli_query($conn, $galeri_current);
$galeri_seccont = "SELECT * FROM galeri ORDER BY id_galeri DESC LIMIT 2";
$view_galeri_seccont = mysqli_query($conn, $galeri_seccont);
$count_toko = "SELECT * FROM toko";
$view_count_toko = mysqli_query($conn, $count_toko);
$count_maps = "SELECT * FROM maps";
$view_count_maps = mysqli_query($conn, $count_maps);
$toko = "SELECT * FROM toko ORDER BY id_toko DESC LIMIT 4";
$view_toko = mysqli_query($conn, $toko);
$toko_detail = "SELECT * FROM toko ORDER BY id_toko DESC";
$view_toko_detail = mysqli_query($conn, $toko_detail);
if (isset($_POST["add_kontak"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (kontak($conn, $validated_post, $action = 'insert', $_POST['pesan']) > 0) {
    $message = "Pesan anda berhasil dikirm.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: kontak");
    exit();
  }
}
$maps = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko ORDER BY maps.id_map DESC";
$view_maps = mysqli_query($conn, $maps);
$galeri = "SELECT * FROM galeri JOIN toko ON galeri.id_toko=toko.id_toko ORDER BY galeri.id_galeri DESC";
$view_galeri = mysqli_query($conn, $galeri);
