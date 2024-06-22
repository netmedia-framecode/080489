<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Tentang";
require_once("templates/top.php");

?>
<!-- Header-->
<header data-background="<?= $baseURL ?>assets/img/header-more.jpg" class="intro introhalf">
  <!-- Intro Header-->
  <div class="intro-body">
    <h1>Tentang</h1>
    <h4>Pemetaan Toko Roti</h4>
  </div>
</header>
<!-- Slider-->
<section id="about" class="section-small">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <?php foreach ($view_tentang as $data_tentang) { ?>
          <h3>Tentang</h3>
          <p class="no-pad"><?= $data_tentang['deskripsi']; ?></p>
          <h2 class="classic">Weldiardus Kolo</h2>
        <?php } ?>
      </div>
      <div data-wow-duration="2s" data-wow-delay=".2s" class="col-lg-5 col-lg-offset-1 wow zoomIn">
        <div id="carousel-light2" class="carousel slide carousel-fade">
          <ol class="carousel-indicators">
            <li data-target="#carousel-light2" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-light2" data-slide-to="1"></li>
            <li data-target="#carousel-light2" data-slide-to="2"></li>
          </ol>
          <div role="listbox" class="carousel-inner">
            <div class="item active"><img src="assets/img/galeri/397210404.jpg" alt="" class="img-responsive center-block"></div>
            <div class="item"><img src="assets/img/galeri/4043521002.jpg" alt="" class="img-responsive center-block"></div>
            <div class="item"><img src="assets/img/galeri/3874009243.jpg" alt="" class="img-responsive center-block"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?php require_once("templates/bottom.php"); ?>