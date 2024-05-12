<?php
if (!isset($_SESSION["project_pemetaan_toko_roti"]["users"])) {
  header("Location: ../auth/");
  exit;
}
