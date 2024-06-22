<?php

require_once("controller/visitor.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Toko Roti Detail";

if (!isset($_GET['post_id'])) {
  header("Location: toko-roti");
  exit();
} else {
  require_once("templates/top.php");

  $id_toko = valid($conn, $_GET['post_id']);
  $toko_detail = "SELECT * FROM toko WHERE id_toko='$id_toko'";
  $view_toko_detail = mysqli_query($conn, $toko_detail);
  $data = mysqli_fetch_assoc($view_toko_detail)

?>

  <link rel="stylesheet" href="https://js.arcgis.com/4.29/esri/themes/light/main.css">
  <script src="https://js.arcgis.com/4.29/"></script>

  <header data-background="<?= $baseURL ?>assets/img/header-more.jpg" class="intro introhalf">
    <div class="intro-body">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <h4>Beranda / Toko Roti / <?= $data['nama_toko'] ?></h4>
            <h1><?= $data['nama_toko'] ?></h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <section id="news-single" class="section-small">
    <div class="container">
      <div class="row">

        <div class="col-md-8">
          <h1><?= $data['nama_toko'] ?></h1>
          <h6><?= $data['alamat'] ?></h6>
          <img src="assets/img/toko/<?= $data['image_toko'] ?>" alt="Image Toko" class="img-responsive">
          <p style="margin-top: 40px;"><?= $data['deskripsi'] ?></p>
          <h5>Jenis Roti</h5>
          <ul>
            <?php $data['id_toko'];
            $roti = "SELECT roti.*, toko.nama_toko FROM roti JOIN toko ON roti.id_toko=toko.id_toko WHERE roti.id_toko='$id_toko'";
            $view_roti = mysqli_query($conn, $roti);
            while ($data_roti = mysqli_fetch_assoc($view_roti)) { ?>
              <li style="margin-top: -30px;">
                <p><?= $data_roti['jenis_roti'] . ' Rp.' . number_format($data_roti['harga']) ?></p>
              </li>
            <?php } ?>
          </ul>
          <h5>Jam Kerja</h5>
          <p style="margin-top: -30px;">
            <?php $jam_kerja_buka = date_create($data["jam_kerja_buka"]);
            $jam_kerja_buka = date_format($jam_kerja_buka, "h:i a");
            $jam_kerja_tutup = date_create($data["jam_kerja_tutup"]);
            $jam_kerja_tutup = date_format($jam_kerja_tutup, "h:i a");
            echo $jam_kerja_buka . ' - ' . $jam_kerja_tutup; ?>
          </p>
          <h5>Maps</h5>
          <script>
            require([
              "esri/config",
              "esri/Map",
              "esri/views/MapView",
              "esri/layers/GraphicsLayer",
              "esri/Graphic",
              "esri/geometry/Point"
            ], function(esriConfig, Map, MapView, GraphicsLayer, Graphic, EsriPoint) {
              // Atur kunci API Esri
              esriConfig.apiKey = "AAPKdfc4f61452de4083bcf649d6632ef737HRgwKNMPAMFTkCmHc7zec062-jk3uJOHIsCRRKpw9IKEWHXE7HBR8xc_C1zTeAZV";

              // Inisialisasi peta dan tampilan
              const map = new Map({
                basemap: "arcgis/topographic"
              });

              const view = new MapView({
                map: map,
                center: [123.6158084, -10.1663868],
                zoom: 14,
                container: "viewDiv",
                constraints: {
                  snapToZoom: false
                }
              });

              // Membuat grafis layer untuk menampung pin
              const graphicsLayer = new GraphicsLayer();
              map.add(graphicsLayer);

              <?php
              $maps_detail = "SELECT * FROM maps JOIN toko ON toko.id_toko=maps.id_toko WHERE maps.id_toko='$id_toko' ORDER BY maps.id_map DESC";
              $view_maps_detail = mysqli_query($conn, $maps_detail);
              while ($data_maps = mysqli_fetch_assoc($view_maps_detail)) {
                // Buat informasi popup untuk setiap pin
                // $popupContent = "<img src='assets/img/toko/" . $data_maps['image_toko'] . "' class='w-100' style='height: 150px; object-fit: cover;' alt=''>";
                $popupContent .= "<b>Nama Toko:</b> " . $data_maps['nama_toko'] . "<br>";
                $popupContent .= "<b>Alamat:</b> " . $data_maps['alamat'] . "<br>";
                $popupContent .= "<b>Lokasi:</b> Latitude: " . $data_maps['latitude'] . ", Longitude: " . $data_maps['longitude'];
              ?>

                // Fungsi untuk membuat dan menambahkan pin
                function addPin<?= $data_maps['id_map'] ?>(latitude, longitude) {
                  // Membuat pin dengan graphic dan menambahkannya ke graphics layer
                  const pinGraphic = new Graphic({
                    geometry: new EsriPoint({
                      type: "point",
                      latitude: latitude,
                      longitude: longitude
                    }),
                    symbol: {
                      type: "simple-marker",
                      color: "blue",
                      size: "16px", // Ukuran pin
                      outline: {
                        color: [255, 255, 255],
                        width: 2
                      }
                    }
                  });

                  // Tambahkan popup template untuk setiap pin
                  pinGraphic.popupTemplate = {
                    title: "Informasi Toko",
                    content: "<?= $popupContent ?>"
                  };

                  // Tambahkan pin ke graphics layer
                  graphicsLayer.add(pinGraphic);
                }

                // Panggil fungsi addPin untuk menambahkan pin berdasarkan data PHP
                addPin<?= $data_maps['id_map'] ?>(<?= $data_maps['latitude'] ?>, <?= $data_maps['longitude'] ?>);
              <?php } ?>
            });
          </script>
          <div id="viewDiv" style=" height: 140vh;"></div>
        </div>

        <div class="col-md-3 col-md-offset-1">
          <h4>Toko Roti Lainnya</h4>
          <ul class="list-unstyled">
            <?php $toko_more = "SELECT * FROM toko WHERE id_toko!='$id_toko'";
            $view_toko_more = mysqli_query($conn, $toko_more);
            foreach ($view_toko_more as $data_toko) {
              $num_char = 100;
              $text = trim($data_toko['deskripsi']);
              $text = preg_replace('#</?strong.*?>#is', '', $text);
              $lentext = strlen($text);
              if ($lentext > $num_char) {
                $deskripsi = substr($text, 0, $num_char) . '...';
              } else if ($lentext <= $num_char) {
                $deskripsi = substr($text, 0, $num_char);
              } ?>
              <li>
                <div class="card mb-3">
                  <div class="row no-gutters">
                    <div class="col-md-4">
                      <img src="assets/img/toko/<?= $data_toko['image_toko'] ?>" style="width: 100%;height: 75px; object-fit: cover;" alt="Image Toko">
                    </div>
                    <div class="col-md-8">
                      <div class="card-body">
                        <h5 class="card-title"><?= $data_toko['nama_toko'] ?></h5>
                        <p class="card-text"><?= $deskripsi ?></p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>
  </section>

<?php require_once("templates/bottom.php");
} ?>