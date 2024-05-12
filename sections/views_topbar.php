<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- Sidebar Toggle (Topbar) -->
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
  <i class="fa fa-bars"></i>
</button>

<!-- Topbar Navbar -->
<ul class="navbar-nav ml-auto">

  <div class="topbar-divider d-none d-sm-block"></div>

  <!-- Nav Item - User Information -->
  <li class="nav-item dropdown no-arrow">
    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $name ?></span>
      <img class="img-profile rounded-circle" src="../assets/img/profil/<?= $image ?>">
    </a>
    <!-- Dropdown - User Information -->
    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
      <a class="dropdown-item" href="profil">
        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
        Profil
      </a>
      <?php if ($id_role <= 2) { ?>
        <a class="dropdown-item" href="setting">
          <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
          Setting
        </a>
      <?php } ?>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="../auth/logout">
        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
        Logout
      </a>
    </div>
  </li>

</ul>

</nav>
