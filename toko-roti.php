<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Toko Roti";
require_once("templates/top.php");

?>
<!-- Header-->
<header data-background="<?= $baseURL ?>assets/img/header-more.jpg" class="intro introhalf">
  <!-- Intro Header-->
  <div class="intro-body">
    <h1>Toko Roti</h1>
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
      <?php foreach ($view_toko_detail as $data_toko) { ?>
        <div data-wow-delay=".2s" class="col-lg-3 col-sm-6 wow fadeIn">
          <h4><img src="<?= $baseURL ?>assets/img/toko/<?= $data_toko['image_toko'] ?>" style="width: 250px; height: 250px;" alt=""><br> <?= $data_toko['nama_toko'] ?></h4>
          <p><?= $data_toko['alamat'] ?></p>
        </div>
      <?php } ?>
    </div>
  </div>
</section>

<?php require_once("templates/bottom.php"); ?>