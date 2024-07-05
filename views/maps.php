<?php require_once("../controller/maps.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Maps";
require_once("../templates/views_top.php"); ?>

<link rel="stylesheet" href="https://js.arcgis.com/4.29/esri/themes/light/main.css">
<script src="https://js.arcgis.com/4.29/"></script>

<!-- Begin Page Content -->
<div class="container-fluid p-0 mt-n4">
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
        $deskripsi = strip_tags($row['deskripsi']);
        $deskripsi = html_entity_decode($deskripsi);
        $deskripsi = trim($deskripsi);
        $popupContent = "<b>Nama Toko:</b> " . $row['nama_toko'] . "<br>";
        $popupContent .= "<b>Deskripsi:</b> " . $deskripsi . "<br>";
        $popupContent .= "<b>Alamat:</b> " . $row['alamat'] . "<br>";
        $popupContent .= "<b>Lokasi:</b> Latitude: " . $row['latitude'] . ", Longitude: " . $row['longitude'] . "<br>";
        $popupContent .= "<b>Jenis-jenis roti:</b><br>";

        $id_toko = valid($conn, $row['id_toko']);
        $roti = "SELECT * FROM roti WHERE id_toko = '$id_toko'";
        $view_roti = mysqli_query($conn, $roti);
        if (mysqli_num_rows($view_roti) > 0) {
          while ($row_roti = mysqli_fetch_assoc($view_roti)) {
            $popupContent .= " - " . $row_roti['jenis_roti'] . " Rp." . number_format($row_roti['harga']) . "<br>";
          }
        }else{
          $popupContent .= "belum ada";
        }
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