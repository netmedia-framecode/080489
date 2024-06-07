<?php require_once("../controller/roti.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Roti";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION["project_pemetaan_toko_roti"]["name_page"] ?></h1>
    <!-- <div class="col text-right">
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" data-toggle="modal" data-target="#import"><i class="bi bi-file-earmark-arrow-up-fill"></i> Import</a>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm" data-toggle="modal" data-target="#export"><i class="bi bi-file-earmark-arrow-down-fill"></i> Export</a>
    </div> -->
  </div>

  <div class="row">
    <div class="col-lg-4">
      <div class="card shadow mb-3 border-0">
        <div class="card-header">
          <h5 class="card-title">Tambah Jenis Roti</h5>
        </div>
        <?php if (!isset($_POST['select_roti'])) { ?>
          <form action="" method="post">
            <div class="card-body">
              <div class="form-group">
                <label for="id_toko">Pilih Toko</label>
                <?php foreach ($view_toko as $data_toko) : ?>
                  <div class="custom-control custom-radio mb-3">
                    <input type="radio" name="id_toko" value="<?= $data_toko['id_toko'] ?>" class="custom-control-input" id="id_toko<?= $data_toko['id_toko'] ?>" required>
                    <label class="custom-control-label" for="id_toko<?= $data_toko['id_toko'] ?>">
                      <!-- <img src="<?= $baseURL ?>assets/img/toko/<?= $data_toko['image_toko'] ?>" style="width: 100px; height: 100px; object-fit: cover;" alt=""> -->
                      <?= $data_toko['nama_toko'] ?>
                    </label>
                  </div>
                <?php endforeach; ?>
              </div>
              <div class="form-group">
                <label for="jumlah_roti">Jumlah Roti</label>
                <input type="number" name="jumlah_roti" value="1" min="1" class="form-control" id="jumlah_roti" required>
              </div>
            </div>
            <div class="card-footer justify-content-center border-top-0">
              <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
              <button type="submit" name="select_roti" class="btn btn-primary btn-sm">Tambah</button>
            </div>
          </form>
        <?php } else if (isset($_POST['select_roti'])) {
          $id_toko = valid($conn, $_POST['id_toko']);
          $jumlah_roti = valid($conn, $_POST['jumlah_roti']); ?>
          <form action="" method="post">
            <input type="hidden" name="id_toko" value="<?= $id_toko ?>">
            <div class="card-body">
              <?php for ($roti = 1; $roti <= $jumlah_roti; $roti++) { ?>
                <h6>Jenis Roti <?= $roti ?></h6>
                <div class="form-group">
                  <label for="roti">Nama Roti</label>
                  <input type="text" name="roti[]" class="form-control" id="roti" required>
                </div>
                <div class="form-group">
                  <label for="harga">Harga</label>
                  <input type="number" name="harga[]" value="1000" min="1000" class="form-control" id="harga" required>
                </div>
                <hr>
              <?php } ?>
            </div>
            <div class="card-footer justify-content-center border-top-0">
              <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
              <button type="submit" name="add_roti" class="btn btn-primary btn-sm">Tambah</button>
            </div>
          </form>
        <?php } ?>
      </div>
    </div>
    <div class="col-lg-8">
      <div class="card shadow mb-4 border-0">
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered text-dark" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th class="text-center">#</th>
                  <th class="text-center">Nama Toko</th>
                  <th class="text-center">Jenis Roti</th>
                  <th class="text-center">Harga</th>
                  <th class="text-center" style="width: 200px;">Aksi</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th class="text-center">#</th>
                  <th class="text-center">Nama Toko</th>
                  <th class="text-center">Jenis Roti</th>
                  <th class="text-center">Harga</th>
                  <th class="text-center">Aksi</th>
                </tr>
              </tfoot>
              <tbody>
                <?php $no = 1;
                foreach ($view_roti as $data) { ?>
                  <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $data['nama_toko'] ?></td>
                    <td><?= $data['jenis_roti'] ?></td>
                    <td>Rp.<?= number_format($data['harga']) ?></td>
                    <td class="text-center">
                      <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ubah<?= $data['id_roti'] ?>">
                        <i class="bi bi-pencil-square"></i> Ubah
                      </button>
                      <div class="modal fade" id="ubah<?= $data['id_roti'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header border-bottom-0 shadow">
                              <h5 class="modal-title" id="exampleModalLabel">Ubah <?= $data['jenis_roti'] ?></h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <form action="" method="post" enctype="multipart/form-data">
                              <input type="hidden" name="id_roti" value="<?= $data['id_roti'] ?>">
                              <input type="hidden" name="jenis_rotiOld" value="<?= $data['jenis_roti'] ?>">
                              <div class="modal-body">
                                <div class="form-group">
                                  <label for="roti">Nama Roti</label>
                                  <input type="text" name="roti" value="<?= $data['jenis_roti'] ?>" class="form-control" id="roti" required>
                                </div>
                                <div class="form-group">
                                  <label for="harga">Harga</label>
                                  <input type="number" name="harga" value="<?= $data['harga'] ?>" min="1000" class="form-control" id="harga" required>
                                </div>
                              </div>
                              <div class="modal-footer justify-content-center border-top-0">
                                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                                <button type="submit" name="edit_roti" class="btn btn-warning btn-sm">Ubah</button>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                      <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus<?= $data['id_roti'] ?>">
                        <i class="bi bi-trash3"></i> Hapus
                      </button>
                      <div class="modal fade" id="hapus<?= $data['id_roti'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header border-bottom-0 shadow">
                              <h5 class="modal-title" id="exampleModalLabel">Hapus <?= $data['jenis_roti'] ?></h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <form action="" method="post">
                              <input type="hidden" name="id_roti" value="<?= $data['id_roti'] ?>">
                              <input type="hidden" name="jenis_roti" value="<?= $data['jenis_roti'] ?>">
                              <div class="modal-body">
                                <p>Jika anda yakin ingin menghapus data ini, klik Hapus!</p>
                              </div>
                              <div class="modal-footer justify-content-center border-top-0">
                                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                                <button type="submit" name="delete_roti" class="btn btn-danger btn-sm">Hapus</button>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- <div class="modal fade" id="import" tabindex="-1" aria-labelledby="importLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header border-bottom-0 shadow">
          <h5 class="modal-title" id="importLabel">Import Toko</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <div class="form-group">
              <label for="file_toko">File Excel</label>
              <input type="file" name="file_toko" class="form-control" id="file_toko" accept="application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" required>
            </div>
          </div>
          <div class="modal-footer justify-content-center border-top-0">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
            <button type="submit" name="import_toko" class="btn btn-primary btn-sm">Import</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="export" tabindex="-1" aria-labelledby="exportLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header border-bottom-0 shadow">
          <h5 class="modal-title" id="exportLabel">Export Toko</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <div class="form-group">
              <label for="format_file">Format</label>
              <select name="format_file" id="format_file" class="form-select form-control" required>
                <option selected value="">Pilih Format</option>
                <option value="pdf">PDF</option>
                <option value="excel">Excel</option>
              </select>
            </div>
          </div>
          <div class="modal-footer justify-content-center border-top-0">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
            <button type="submit" name="export_toko" class="btn btn-primary btn-sm">Export</button>
          </div>
        </form>
      </div>
    </div>
  </div> -->

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>