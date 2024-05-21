<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Kontak";
require_once("templates/top.php");

?>
<!-- Header-->
<header data-background="<?= $baseURL ?>assets/img/header-more.jpg" class="intro introhalf">
  <!-- Intro Header-->
  <div class="intro-body">
    <h1>Kontak</h1>
    <h4>Pemetaan Toko Roti</h4>
  </div>
</header>
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