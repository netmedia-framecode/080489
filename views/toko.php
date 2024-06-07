<?php require_once("../controller/toko.php");
$_SESSION["project_pemetaan_toko_roti"]["name_page"] = "Toko";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION["project_pemetaan_toko_roti"]["name_page"] ?></h1>
    <div class="col text-right">
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" data-toggle="modal" data-target="#tambah"><i class="bi bi-plus-lg"></i> Tambah</a>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" data-toggle="modal" data-target="#import"><i class="bi bi-file-earmark-arrow-up-fill"></i> Import</a>
      <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm" data-toggle="modal" data-target="#export"><i class="bi bi-file-earmark-arrow-down-fill"></i> Export</a>
    </div>
  </div>

  <div class="card shadow mb-4 border-0">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered text-dark" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">#</th>
              <th class="text-center">Image</th>
              <th class="text-center">Nama Toko</th>
              <th class="text-center">Alamat</th>
              <th class="text-center">Deskripsi</th>
              <th class="text-center">Jam Kerja</th>
              <th class="text-center">Created at</th>
              <th class="text-center">Updated at</th>
              <th class="text-center" style="width: 200px;">Aksi</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th class="text-center">#</th>
              <th class="text-center">Image</th>
              <th class="text-center">Nama Toko</th>
              <th class="text-center">Alamat</th>
              <th class="text-center">Deskripsi</th>
              <th class="text-center">Jam Kerja</th>
              <th class="text-center">Created at</th>
              <th class="text-center">Updated at</th>
              <th class="text-center">Aksi</th>
            </tr>
          </tfoot>
          <tbody>
            <?php $no = 1;
            foreach ($view_toko as $data) { ?>
              <tr>
                <td><?= $no++; ?></td>
                <td>
                  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#gambar<?= $data['id_toko'] ?>"><img src="../assets/img/toko/<?= $data['image_toko'] ?>" style="width: 250px;height: 150px;object-fit: cover;" alt=""></button>
                  <div class="modal fade" id="gambar<?= $data['id_toko'] ?>" tabindex="-1" role="dialog" aria-labelledby="gambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="gambarModalLabel"></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <img src="../assets/img/toko/<?= $data['image_toko'] ?>" class="img-fluid w-100 h-100" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </td>
                <td><?= $data['nama_toko'] ?></td>
                <td><?= $data['alamat'] ?></td>
                <td><?= $data['deskripsi'] ?></td>
                <td>
                  <?php $jam_kerja_buka = date_create($data["jam_kerja_buka"]);
                  $jam_kerja_buka = date_format($jam_kerja_buka, "h:i a");
                  $jam_kerja_tutup = date_create($data["jam_kerja_tutup"]);
                  $jam_kerja_tutup = date_format($jam_kerja_tutup, "h:i a");
                  echo $jam_kerja_buka . ' - ' . $jam_kerja_tutup; ?>
                </td>
                <td><span class="badge bg-success text-white"><?php $created_at = date_create($data["created_at"]);
                                                              echo date_format($created_at, "l, d M Y"); ?></span></td>
                <td><span class="badge bg-warning"><?php $updated_at = date_create($data["updated_at"]);
                                                    echo date_format($updated_at, "l, d M Y"); ?></span></td>
                <td class="text-center">
                  <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ubah<?= $data['id_toko'] ?>">
                    <i class="bi bi-pencil-square"></i> Ubah
                  </button>
                  <div class="modal fade" id="ubah<?= $data['id_toko'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Ubah <?= $data['nama_toko'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post" enctype="multipart/form-data">
                          <input type="hidden" name="id_toko" value="<?= $data['id_toko'] ?>">
                          <input type="hidden" name="nama_tokoOld" value="<?= $data['nama_toko'] ?>">
                          <input type="hidden" name="image_tokoOld" value="<?= $data['image_toko'] ?>">
                          <div class="modal-body">
                            <div class="form-group">
                              <label for="image_toko">Gambar Toko</label>
                              <input type="file" name="image_toko" class="form-control" id="image_toko" accept="image/jpeg, image/png">
                            </div>
                            <div class="form-group">
                              <label for="nama_toko">Nama Toko</label>
                              <input type="text" name="nama_toko" value="<?= $data['nama_toko'] ?>" class="form-control" id="nama_toko" minlength="3" required>
                            </div>
                            <div class="form-group">
                              <label for="alamat">Alamat</label>
                              <input type="text" name="alamat" value="<?= $data['alamat'] ?>" class="form-control" id="alamat" minlength="3" required>
                            </div>
                            <div class="form-group">
                              <label for="deskripsi">Deskripsi</label>
                              <textarea name="deskripsi" class="form-control" id="deskripsi" rows="3"><?= $data['deskripsi'] ?></textarea>
                            </div>
                            <div class="row">
                              <div class="col-lg-6">
                                <div class="form-group">
                                  <label for="jam_kerja_buka">Jam Buka</label>
                                  <input type="time" name="jam_kerja_buka" value="<?= $data['jam_kerja_buka'] ?>" class="form-control" id="jam_kerja_buka" required>
                                </div>
                              </div>
                              <div class="col-lg-6">
                                <div class="form-group">
                                  <label for="jam_kerja_tutup">Jam Tutup</label>
                                  <input type="time" name="jam_kerja_tutup" value="<?= $data['jam_kerja_tutup'] ?>" class="form-control" id="jam_kerja_tutup" required>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="edit_toko" class="btn btn-warning btn-sm">Ubah</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus<?= $data['id_toko'] ?>">
                    <i class="bi bi-trash3"></i> Hapus
                  </button>
                  <div class="modal fade" id="hapus<?= $data['id_toko'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Hapus <?= $data['nama_toko'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post">
                          <input type="hidden" name="id_toko" value="<?= $data['id_toko'] ?>">
                          <input type="hidden" name="nama_toko" value="<?= $data['nama_toko'] ?>">
                          <input type="hidden" name="image_toko" value="<?= $data['image_toko'] ?>">
                          <div class="modal-body">
                            <p>Jika anda yakin ingin menghapus data ini, klik Hapus!</p>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="delete_toko" class="btn btn-danger btn-sm">Hapus</button>
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

  <div class="modal fade" id="tambah" tabindex="-1" aria-labelledby="tambahLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header border-bottom-0 shadow">
          <h5 class="modal-title" id="tambahLabel">Tambah Toko</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <div class="form-group">
              <label for="image_toko">Gambar Toko</label>
              <input type="file" name="image_toko" class="form-control" id="image_toko" accept="image/jpeg, image/png" required>
            </div>
            <div class="form-group">
              <label for="nama_toko">Nama Toko</label>
              <input type="text" name="nama_toko" class="form-control" id="nama_toko" minlength="3" required>
            </div>
            <div class="form-group">
              <label for="alamat">Alamat</label>
              <input type="text" name="alamat" class="form-control" id="alamat" minlength="3" required>
            </div>
            <div class="form-group">
              <label for="deskripsi">Deskripsi</label>
              <textarea name="deskripsi" class="form-control" id="deskripsi" rows="3"></textarea>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label for="jam_kerja_buka">Jam Buka</label>
                  <input type="time" name="jam_kerja_buka" class="form-control" id="jam_kerja_buka" required>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label for="jam_kerja_tutup">Jam Tutup</label>
                  <input type="time" name="jam_kerja_tutup" class="form-control" id="jam_kerja_tutup" required>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer justify-content-center border-top-0">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
            <button type="submit" name="add_toko" class="btn btn-primary btn-sm">Tambah</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="import" tabindex="-1" aria-labelledby="importLabel" aria-hidden="true">
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
  </div>
</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>