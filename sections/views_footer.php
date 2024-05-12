<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; <a href="https://wasd.netmedia-framecode.com" class="text-decoration-none">WASD Netmedia Framecode</a> <?= date('Y') ?> | Develop by Weldiardus Kolo</span>
    </div>
  </div>
</footer>

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="<?= $baseURL ?>assets/vendor/jquery/jquery.min.js"></script>
<?php if ($_SESSION["project_pemetaan_toko_roti"]["name_page"] != "Pemetaan Toko" && $_SESSION["project_pemetaan_toko_roti"]["name_page"] != "Maps" && $_SESSION["project_pemetaan_toko_roti"]["name_page"] != "Dashboard") { ?>

  <script src="<?= $baseURL ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<?= $baseURL ?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugins -->
  <script src="<?= $baseURL ?>assets/vendor/chart.js/Chart.min.js"></script>
  <script src="<?= $baseURL ?>assets/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<?= $baseURL ?>assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<?php } ?>

<!-- Custom scripts for all pages-->
<script src="<?= $baseURL ?>assets/js/sb-admin-2.min.js"></script>


<!-- Page level custom scripts -->
<script src="<?= $baseURL ?>assets/js/demo/datatables-demo.js"></script>

<!-- Page level custom scripts -->
<script src="<?= $baseURL ?>assets/js/demo/chart-area-demo.js"></script>
<script src="<?= $baseURL ?>assets/js/demo/chart-pie-demo.js"></script>

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

<script>
  $('.custom-file-input').on('change', function() {
    let fileName = $(this).val().split('\\').pop();
    $(this).next('.custom-file-label').addClass("selected").html(fileName);
  });
</script>

<script>
  CKEDITOR.replace('deskripsi');
</script>