<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Beranda";
require_once("templates/top.php");

?>
<!-- Header-->
<header data-background="<?= $baseURL ?>assets/img/header.jpg" class="intro">
  <!-- Intro Header-->
  <div class="intro-body">
    <h4>Pemetaan Toko Roti</h4>
    <h1>Sistem Informasi Geografis</h1>
    <div data-wow-delay="1s" class="scroll-btn wow fadeInDown">
      <a href="#about" class="page-scroll"><span class="mouse"><span class="weel"><span></span></span></span></a>
    </div>
  </div>
</header>
<!-- Slider-->
<section id="about" class="section-small">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <?php foreach ($view_tentang as $data_tentang) { ?>
          <h3>Tentang</h3>
          <p class="no-pad"><?php $num_char = 1000;
                            $text = trim($data_tentang['deskripsi']);
                            $text = preg_replace('#</?strong.*?>#is', '', $text);
                            $lentext = strlen($text);
                            if ($lentext > $num_char) {
                              echo substr($text, 0, $num_char) . '...';
                            } else if ($lentext <= $num_char) {
                              echo substr($text, 0, $num_char);
                            } ?></p>
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
            <?php foreach ($view_galeri_current as $data_galeri) { ?>
              <div class="item active"><img src="<?= $data_galeri['image_galeri'] ?>" alt="" class="img-responsive center-block"></div>
            <?php }
            foreach ($view_galeri_seccont as $data_galeri) { ?>
              <div class="item"><img src="<?= $data_galeri['image_galeri'] ?>" alt="" class="img-responsive center-block"></div>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- About Section-->
<section id="about2" class="bg-gray">
  <div class="container wow fadeIn">
    <div class="row">
      <div class="col-lg-6">
        <h3>Pemetaan</h3>
        <p>Dinas koperasi membantu masyarakat dalam mengakses informasi lokasi yang akurat disertai titik koordinat lokasi dan informasi tentang UMKM Toko Roti di Kota Kupang.</p><a href="maps" class="btn btn-dark">Lihat Maps</a>
      </div>
      <div class="col-lg-5 col-lg-offset-1 text-center">
        <div class="row" style="margin-top: 50px;">
          <div class="col-lg-4">
            <div><span style="font-size: 35px;"><?= mysqli_num_rows($view_count_toko); ?></span>
              <div class="agenda">Toko Roti</div>
            </div>
          </div>
          <div class="col-lg-4">
            <div><span style="font-size: 35px;"><?= mysqli_num_rows($view_count_maps); ?></span>
              <div class="agenda">Lokasi Toko</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Why Section-->
<section>
  <div class="container text-center">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <h3>Toko Roti</h3>
      </div>
    </div>
    <div class="row">
      <?php foreach ($view_toko as $data_toko) { ?>
        <div data-wow-delay=".2s" class="col-lg-3 col-sm-6 wow fadeIn">
          <h4><i class="fas fa-store fa-3x"></i><br> <?= $data_toko['nama_toko'] ?></h4>
          <p><?= $data_toko['alamat'] ?></p>
        </div>
      <?php } ?>
    </div>
    <div class="row">
      <div class="col-lg-12 text-center">
        <a href="toko-roti" class="btn btn-dark">Lihat Lebih</a>
      </div>
    </div>
  </div>
</section>
<!-- Contact Section-->
<section id="contact">
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <h3>Kontak Kami</h3>
        <p>Usaha mikro kecil dan menengah (UMKM) merupakan salah satu kekuatan penggerak pertumbuhan ekonomi Indonesia. Hal ini karena Umkm dapat menciptakan lapangan pekerjaan paling banyak,sehingga dapat memberikan kontribusi besar dalam penyerapan tenaga kerja. Umkm seringkali memiliki tantangan dalam memperluas jangkauan pasar.calon pembeli ataupun pelanggan mengalami kesulitan dalam mencari informasi tentang Umkm,terutama Umkm Toko Roti yang belum melakukan pemetaan secara sistem informasi geografis.Hal ini menghambat potensi pertumbuhan dan keberlanjutan Umkm Toko Roti di Kota Kupang,serta mempersulit interaksi antara Umkm Toko Roti dengan pelanggan. Jika anda mempunyai pertanyaan seputar data lokasi UMKM Toko Roti dan informasi lengkap bisa kontak kami.</p>
        <hr>
        <!-- <h5><i class="fa fa-map-marker fa-fw fa-lg"></i> 1234 Some Avenue, New York, NY 56789
        </h5>
        <h5><i class="fa fa-envelope fa-fw fa-lg"></i> <a href="https://forbetterweb.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="650c0b030a251c0a10120007160c11004b060a08">[email&#160;protected]</a>
        </h5>
        <h5><i class="fa fa-phone fa-fw fa-lg"></i> (123) 456-7890
        </h5> -->
      </div>
      <div class="col-md-5 col-md-offset-2">
        <h3>Say hello</h3>
        <form action="" method="POST">
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="username" class="sr-only control-label">Nama</label>
              <input name="username" id="username" type="text" placeholder="Nama" required="" class="form-control input-lg">
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="email" class="sr-only control-label">Email</label>
              <input name="email" id="email" type="email" placeholder="You Email" required="" class="form-control input-lg">
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="phone" class="sr-only control-label">No. Handphone</label>
              <input name="phone" id="phone" type="tel" placeholder="No. Handphone" required="" class="form-control input-lg">
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="pesan" class="sr-only control-label">Pesan</label>
              <textarea id="pesan" rows="2" placeholder="Pesan" required="" aria-invalid="false" class="form-control input-lg"></textarea>
            </div>
          </div>
          <button type="submit" name="add_kontak" class="btn btn-dark">Kirim</button>
        </form>
      </div>
    </div>
  </div>
</section>

<?php require_once("templates/bottom.php"); ?>