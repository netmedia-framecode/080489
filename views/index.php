<?php require_once("../controller/dashboard.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Dashboard";
require_once("../templates/views_top.php"); ?>

<link rel="stylesheet" href="https://js.arcgis.com/4.29/esri/themes/light/main.css">
<script src="https://js.arcgis.com/4.29/"></script>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
  </div>

  <!-- Content Row -->
  <div class="row">

    <div class="col-xl-6 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                Toko</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= mysqli_num_rows($view_toko); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-store fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-6 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                Pin Toko</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= mysqli_num_rows($view_pemetaan_toko); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-map-marked-alt fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Content Row -->
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
      while ($row = mysqli_fetch_assoc($view_maps)) {
        // Buat informasi popup untuk setiap pin
        $popupContent = "<img src='../assets/img/toko/" . $row['image_toko'] . "' class='w-100' style='height: 150px; object-fit: cover;' alt=''>";
        $popupContent .= "<b>Nama Toko:</b> " . $row['nama_toko'] . "<br>";
        $popupContent .= "<b>Deskripsi:</b> " . $row['deskripsi'] . "<br>";
        $popupContent .= "<b>Alamat:</b> " . $row['alamat'] . "<br>";
        $popupContent .= "<b>Lokasi:</b> Latitude: " . $row['latitude'] . ", Longitude: " . $row['longitude'];
      ?>

        // Fungsi untuk membuat dan menambahkan pin
        function addPin<?= $row['id_map'] ?>(latitude, longitude) {
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
        addPin<?= $row['id_map'] ?>(<?= $row['latitude'] ?>, <?= $row['longitude'] ?>);
      <?php } ?>
    });
  </script>
  <div id="viewDiv" style="height: 140vh;"></div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>