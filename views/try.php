<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>ArcGIS Maps SDK for JavaScript Tutorials: Display a map</title>

  <link rel="stylesheet" href="https://js.arcgis.com/4.29/esri/themes/light/main.css">
  <script src="https://js.arcgis.com/4.29/"></script>
  <script>
    require([
      "esri/config",
      "esri/Map",
      "esri/views/MapView",
      "esri/layers/GraphicsLayer",
      "esri/Graphic",
      "esri/geometry/Point"
    ], function(esriConfig, Map, MapView, GraphicsLayer, Graphic, Point) {
      esriConfig.apiKey = "AAPKdfc4f61452de4083bcf649d6632ef737HRgwKNMPAMFTkCmHc7zec062-jk3uJOHIsCRRKpw9IKEWHXE7HBR8xc_C1zTeAZV";

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

      // Membuat pin dengan graphic dan menambahkannya ke graphics layer
      const pinGraphic = new Graphic({
        geometry: new Point([123.6158084, -10.1663868]),
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

      // Fungsi untuk menggerakkan pin saat klik
      view.on("click", function(event) {
        const newPoint = event.mapPoint;
        pinGraphic.geometry = newPoint;
      });
    });
  </script>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
            This is some text within a card body.
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div id="viewDiv" style="height: 100vh;"></div>
      </div>
    </div>
  </div>
</body>

</html>