<?php if (!isset($_SESSION)) {
  session_start();
}
require_once("../controller/auth.php");
if (isset($_SESSION["project_pemetaan_toko_roti"])) {
  unset($_SESSION["project_pemetaan_toko_roti"]);
  header("Location: ./");
  exit();
}
