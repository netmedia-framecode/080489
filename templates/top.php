<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from forbetterweb.com/html/universal/indexparallax.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 May 2024 14:52:24 GMT -->

<head>
  <?php require_once("sections/head.php"); ?>
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" class="top">
  <?php foreach ($messageTypes as $type) {
    if (isset($_SESSION["project_pemetaan_toko_roti"]["message_$type"])) {
      echo "<div class='message-$type' data-message-$type='{$_SESSION["project_pemetaan_toko_roti"]["message_$type"]}'></div>";
    }
  } ?>
  <!-- Preloader-->
  <div id="preloader">
    <div id="status"></div>
  </div>
  <?php require_once("sections/nav.php"); ?>