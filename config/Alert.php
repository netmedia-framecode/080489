<?php

$messageTypes = ["success", "info", "warning", "danger", "dark"];

if (!isset($_SESSION["project_pemetaan_toko_roti"]["users"])) {
  if (isset($_SESSION["project_pemetaan_toko_roti"]["time_message"]) && (time() - $_SESSION["project_pemetaan_toko_roti"]["time_message"]) > 2) {
    foreach ($messageTypes as $type) {
      if (isset($_SESSION["project_pemetaan_toko_roti"]["message_$type"])) {
        unset($_SESSION["project_pemetaan_toko_roti"]["message_$type"]);
      }
    }
    unset($_SESSION["project_pemetaan_toko_roti"]["time_message"]);
  }
} else if (isset($_SESSION["project_pemetaan_toko_roti"]["users"])) {
  if (isset($_SESSION["project_pemetaan_toko_roti"]["users"]["time_message"]) && (time() - $_SESSION["project_pemetaan_toko_roti"]["users"]["time_message"]) > 2) {
    foreach ($messageTypes as $type) {
      if (isset($_SESSION["project_pemetaan_toko_roti"]["users"]["message_$type"])) {
        unset($_SESSION["project_pemetaan_toko_roti"]["users"]["message_$type"]);
      }
    }
    unset($_SESSION["project_pemetaan_toko_roti"]["users"]["time_message"]);
  }
}
