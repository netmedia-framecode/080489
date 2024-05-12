<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>
  <?= $name_website ?> <?php if (isset($_SESSION['project_pemetaan_toko_roti']['name_page'])) {
                          if (!empty($_SESSION['project_pemetaan_toko_roti']['name_page'])) {
                            echo " - " . $_SESSION['project_pemetaan_toko_roti']['name_page'];
                          }
                        } ?>
</title>

<!-- Custom fonts for this template-->
<link href="<?= $baseURL ?>assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">

<!-- Custom styles for this template-->
<link href="<?= $baseURL ?>assets/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="<?= $baseURL ?>assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- Custom styles for plugin -->
<script src="<?= $baseURL ?>assets/sweetalert/dist/sweetalert2.all.min.js"></script>

<script src="<?= $baseURL; ?>/assets/ckeditor/ckeditor.js"></script>

<style>
  /* Style untuk dropdown container */
  .dropdown {
    position: relative;
  }

  /* Style untuk dropdown menu */
  .dropdown-menu {
    display: none;
    position: absolute;
    z-index: 1000;
    right: 0;
    background-color: #fff;
    box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
  }

  /* Style untuk menampilkan dropdown menu saat elemen dropdown diklik */
  .dropdown.open .dropdown-menu {
    display: block;
  }

  /* Style untuk menampilkan dropdown menu saat elemen dropdown dihover */
  .dropdown:hover .dropdown-menu {
    display: block;
  }
</style>