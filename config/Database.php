<?php 
// Informasi koneksi ke database
$servername = "localhost"; // Nama server database (biasanya localhost)
$username = "root"; // Nama pengguna database
$password = "Netmedia040700_"; // Kata sandi database
$database = "pemetaan_toko_roti"; // Nama database yang ingin Anda hubungkan

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $database);

// Memeriksa koneksi
if ($conn->connect_error) {
  die("Koneksi gagal: " . $conn->connect_error);
}