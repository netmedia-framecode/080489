<!-- Navigation-->
<nav class="navbar navbar-universal navbar-custom navbar-fixed-top <?php if ($_SESSION["project_pemetaan_toko_roti"]["name_page"] == "Maps") {
                                                                      echo "bg-dark";
                                                                    } ?>">
  <div class="container">
    <div class="navbar-header">
      <button type="button" data-toggle="collapse" data-target=".navbar-main-collapse" class="navbar-toggle">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./" class="navbar-brand page-scroll">
        <!-- <img src="<?= $baseURL ?>assets/img/logo.png" alt="Logo" class="logo"> -->
        Pemetaan Toko Roti
      </a>
    </div>
    <div class="collapse navbar-collapse navbar-main-collapse">
      <ul class="nav navbar-nav navbar-left">
        <li class="hidden"><a href="#page-top"></a></li>
        <li>
          <a href="#" onclick="window.location.href='./'">Home</a>
        </li>
        <li>
          <a href="#" onclick="window.location.href='tentang'">Tentang
            <span class="caret"></span>
          </a>
        </li>
        <li>
          <a href="#" onclick="window.location.href='toko-roti'">Toko Roti
            <span class="caret"></span>
          </a>
        </li>
        <li>
          <a href="#" onclick="window.location.href='maps'">Maps
            <span class="caret"></span>
          </a>
        </li>
        <li>
          <a href="#" onclick="window.location.href='galeri'">Galeri
            <span class="caret"></span>
          </a>
        </li>
        <li>
          <a href="#" onclick="window.location.href='kontak'">Kontak
            <span class="caret"></span>
          </a>
        </li>
        <li class="menu-divider visible-lg">&nbsp;</li>
        <li>
          <a href="#" onclick="window.location.href='auth/'">
            <i class="bi bi-box-arrow-in-right" style="font-size: 20px;"></i>
            <span class="caret"></span>
          </a>
        </li>
        <li>
          <a href="#" onclick="window.location.href='auth/register'">
            <i class="bi bi-person-check" style="font-size: 20px;"></i>
            <span class="caret"></span>
          </a>
        </li>
        <li>
          <div id="google_translate_element" style="margin-top: 15px; margin-left: 15px;"></div>
        </li>
      </ul>
    </div>
  </div>
</nav>