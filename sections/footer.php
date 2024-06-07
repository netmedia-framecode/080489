<!-- Footer Section-->
<section class="section-small footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <h6>Develop by Weldiardus Kolo</a>
        </h6>
      </div>
      <div class="col-sm-3 col-sm-offset-1">
        <h6>We <i class="fa fa-heart fa-fw"></i> creative people
        </h6>
      </div>
      <div class="col-sm-3 col-sm-offset-1 text-right">
        <ul class="list-inline">
          <li><a href="https://080489.tugasakhir.my.id/"><i class="fa fa-twitter fa-fw fa-lg"></i></a></li>
          <li><a href="https://080489.tugasakhir.my.id/"><i class="fa fa-facebook fa-fw fa-lg"></i></a></li>
          <li><a href="https://080489.tugasakhir.my.id/"><i class="fa fa-google-plus fa-fw fa-lg"></i></a></li>
          <li><a href="https://080489.tugasakhir.my.id/"><i class="fa fa-linkedin fa-fw fa-lg"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!-- jQuery-->
<script src="<?= $baseURL ?>assets/js/jquery-1.12.4.min.js"></script>

<?php if ($_SESSION["project_pemetaan_toko_roti"]["name_page"] != "Maps" && $_SESSION["project_pemetaan_toko_roti"]["name_page"] != "Toko Roti Detail") { ?>
  <!-- Bootstrap Core JavaScript-->
  <script src="<?= $baseURL ?>assets/js/bootstrap.min.js"></script>

  <!-- Plugin JavaScript-->
  <script src="<?= $baseURL ?>assets/js/jquery.easing.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.countdown.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.circle-progress.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.swipebox.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/device.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/form.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.placeholder.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.shuffle.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.parallax.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/wow.min.js"></script>
  <script src="<?= $baseURL ?>assets/js/jquery.smartmenus.js"></script>
  <script src="<?= $baseURL ?>assets/js/map.js"></script>
  <script src="<?= $baseURL ?>assets/js/smoothscroll.min.js"></script>
<?php } ?>

<!-- Custom Theme JavaScript-->
<script src="<?= $baseURL ?>assets/js/universal.js"></script>

<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({
      pageLanguage: 'id',
      layout: google.translate.TranslateElement.InlineLayout.SIMPLE
    }, 'google_translate_element');
  }
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script>
  const showMessage = (type, title, message) => {
    if (message) {
      Swal.fire({
        icon: type,
        title: title,
        text: message,
      });
    }
  };

  showMessage("success", "Berhasil Terkirim", $(".message-success").data("message-success"));
  showMessage("info", "For your information", $(".message-info").data("message-info"));
  showMessage("warning", "Peringatan!!", $(".message-warning").data("message-warning"));
  showMessage("error", "Kesalahan", $(".message-danger").data("message-danger"));
</script>