<?php
require_once("../controller/pemetaan-toko.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Pemetaan Toko";
require_once("../templates/views_top.php");
?>

<link rel="stylesheet" href="https://js.arcgis.com/4.29/esri/themes/light/main.css">
<script src="https://js.arcgis.com/4.29/"></script>

<!-- Begin Page Content -->
<div class="container-fluid p-0 m-0">

  <div class="row p-0 mt-n4">
    <div class="col-lg-3 p-0 m-0">
      <div class="card rounded-0 border-0">
        <div class="card-body p-0" style="height: 140vh;">
          <div class="accordion" id="accordionExample" style="height: 140vh; overflow-y: auto;">
            <div class="card">
              <div class="card-header shadow" id="headingOne">
                <h2 class="mb-0">
                  <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Tambah Pin Toko
                  </button>
                </h2>
              </div>

              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                  <form action="" method="post">
                    <div class="form-group">
                      <label for="id_toko">Pilih Toko</label>
                      <select name="id_toko" id="id_toko" class="form-select form-control" required>
                        <?php foreach ($view_toko as $data_toko) : ?>
                          <option value="<?= $data_toko['id_toko'] ?>"><?= $data_toko['nama_toko'] ?></option>
                        <?php endforeach; ?>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="latitude">Latitude</label>
                      <input type="text" name="latitude" class="form-control" id="latitude" minlength="3" required>
                    </div>
                    <div class="form-group">
                      <label for="longitude">Longitude</label>
                      <input type="text" name="longitude" class="form-control" id="longitude" minlength="3" required>
                    </div>
                    <button type="submit" name="add_pin_toko" class="btn btn-primary btn-sm">Tambah Pin</button>
                  </form>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header shadow" id="headingTwo">
                <h2 class="mb-0">
                  <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    List Pin Toko
                  </button>
                </h2>
              </div>
              <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body p-0">
                  <?php foreach ($view_maps as $data) { ?>
                    <div class="card rounded-0">
                      <img src="../assets/img/toko/<?= $data['image_toko'] ?>" class="w-100" style="height: 150px; object-fit: cover;" alt="">
                      <div class="card-body">
                        <h5 class="card-title"><?= $data['nama_toko'] ?></h5>
                        <p class="card-text"><?= $data['deskripsi'] ?></p>
                        <p class="card-text"><small class="text-muted">Terakhir diperbarui <?php $updated_at = date_create($data["updated_at"]);
                                                                                            echo date_format($updated_at, "d M Y h:i a"); ?></small></p>
                        <form action="" method="post">
                          <input type="hidden" name="id_map" value="<?= $data['id_map'] ?>">
                          <button type="submit" name="delete_pin_toko" class="btn btn-danger btn-sm"><i class="bi bi-trash3"></i></button>
                          <button type="button" onclick="showMapPin(<?= $data['latitude'] ?>, <?= $data['longitude'] ?>)" class="btn btn-success btn-sm"><i class="bi bi-geo-alt"></i> Lokasi</button>
                        </form>
                      </div>
                    </div>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-9">
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

          // Fungsi untuk membuat dan menambahkan pin
          function addPin(latitude, longitude) {
            // Hapus pin yang ada sebelumnya
            graphicsLayer.removeAll();

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
            graphicsLayer.add(pinGraphic);

            // Update nilai latitude dan longitude di form input
            document.getElementById("latitude").value = latitude.toFixed(6);
            document.getElementById("longitude").value = longitude.toFixed(6);
          }

          // Fungsi untuk mereset tampilan peta
          function resetMapView() {
            // Hapus pin yang ada
            graphicsLayer.removeAll();

            // Reset nilai latitude dan longitude di form input
            document.getElementById("latitude").value = "";
            document.getElementById("longitude").value = "";

            // Kembalikan tampilan peta ke posisi dan zoom awal
            view.goTo({
              center: [123.6158084, -10.1663868],
              zoom: 14
            });
          }

          // Fungsi untuk menampilkan pin saat tombol "Lokasi" ditekan
          window.showMapPin = function(latitude, longitude) {
            // Reset tampilan peta dan menghapus pin
            resetMapView();

            // Membuat dan menambahkan pin
            addPin(latitude, longitude);

            // Pan ke lokasi pin
            view.goTo({
              center: [longitude, latitude],
              zoom: 14
            });
          };

          // Fungsi untuk menangani klik di peta
          view.on("click", function(event) {
            const latitude = event.mapPoint.latitude;
            const longitude = event.mapPoint.longitude;

            // Tampilkan pin pada lokasi yang diklik
            showMapPin(latitude, longitude);
          });

        });
      </script>
      <div id="viewDiv" style="height: 140vh;"></div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>