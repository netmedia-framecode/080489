<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Beranda";
require_once("templates/top.php");

?>
<!-- Header-->
<header data-background="<?= $baseURL ?>assets/img/header.jpg" class="intro">
  <!-- Intro Header-->
  <div class="intro-body">
    <h1>Pemetaan Toko Roti</h1>
    <h1>Sistem Informasi Geografis</h1>
    <div data-wow-delay="1s" class="scroll-btn wow fadeInDown">
      <a href="#about" class="page-scroll"><span class="mouse"><span class="weel"><span></span></span></span></a>
    </div>
  </div>
</header>

<?php require_once("templates/bottom.php"); ?>