<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Galeri";
require_once("templates/top.php");

?>
<!-- Header-->
<header data-background="<?= $baseURL ?>assets/img/header-more.jpg" class="intro introhalf">
  <!-- Intro Header-->
  <div class="intro-body">
    <h1>Galeri</h1>
    <h4>Pemetaan Toko Roti</h4>
  </div>
</header>
<!-- Why Section-->
<section>
  <div class="container text-center">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <h3>Toko Roti</h3>
      </div>
    </div>
    <div class="row">
      <?php foreach ($view_galeri as $data_galeri) { ?>
        <div data-wow-delay=".2s" class="col-lg-3 col-sm-6 wow fadeIn">
          <h4><img src="<?= $data_galeri['image_galeri'] ?>" style="width: 250px; height: 250px; object-fit: cover;" alt=""><br> <?= $data_galeri['nama_toko'] ?></h4>
        </div>
      <?php } ?>
    </div>
  </div>
</section>

<?php require_once("templates/bottom.php"); ?>