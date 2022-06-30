<%-- 
    Document   : editar
    Created on : 26/06/2022, 08:20:38 PM
    Author     : Alfredo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <!DOCTYPE html>
  <html lang="es">
  <head>

  <!-- Meta tags -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Wieldy - A fully responsive, HTML5 based admin template">
  <meta name="keywords" content="Responsive, HTML5, admin theme, business, professional, jQuery, web design, CSS3, sass">
  <!-- /meta tags -->
  <title>::Awkicare - Enfermeros::</title>

  <!-- Site favicon -->
  <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- /site favicon -->

  <!-- Font Icon Styles -->
  <link rel="stylesheet" href="node_modules/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="vendors/gaxon-icon/style.css">
  <!-- /font icon Styles -->

  <!-- Perfect Scrollbar stylesheet -->
  <link rel="stylesheet" href="node_modules/perfect-scrollbar/css/perfect-scrollbar.css">
  <!-- /perfect scrollbar stylesheet -->

  <!-- Load Styles -->
  <!-- Data table stylesheet -->
  <script src="node_modules/jquery/dist/jquery.js"></script>
  <script src="node_modules/datatables.net/js/jquery.dataTables.js"></script>
  <!--<script src="../node_modules/datatables.net-buttons-bs4/js/buttons.bootstrap4.js"></script>-->
  <script src="node_modules/datatables.net-bs4/js/dataTables.bootstrap4.js"></script>
  <script src="node_modules/datatables.net-buttons/js/dataTables.buttons.js"></script>
  <script src="node_modules/datatables.net-buttons/js/buttons.html5.js"></script>
  <script src="node_modules/datatables.net-buttons/js/buttons.flash.js"></script>
  <script src="node_modules/datatables.net-buttons/js/buttons.print.js"></script>
  <script src="node_modules/jszip/dist/jszip.js"></script>
  <script src="node_modules/pdfmake/build/pdfmake.js"></script>
  <script src="node_modules/pdfmake/build/vfs_fonts.js"></script>

  <script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  
  <!--CSS Datatables-->

  <link href="node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="node_modules/datatables.net-buttons-bs4/css/buttons.bootstrap4.css">
  <!-- /data table stylesheet -->

  <!-- Select 2-->
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css'>
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/i18n/es.js"></script>
  <!-- /Select 2-->

  <link href="assets/fontawesome-free-5.15.4/css/all.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/lite-style-6.min.css">
  <link rel="stylesheet" href="assets/css/reloj.css">
  <!-- /load styles -->
  <script type="text/javascript" src="assets/js/reloj.js"></script>
  <style type="text/css" media="print">
    @media print {
    #header {display:none;}
    #main-sidebar {display:none;}
    #noprint1 {display:none;}
    #noprint2 {display:none;}
    #noprint3 {display:none;}
    }
  </style>
</head>
  <style type="text/css">
    .account-settings .user-profile {
        margin: 0 0 1rem 0;
        padding-bottom: 1rem;
        text-align: center;
    }
    .account-settings .user-profile .user-avatar {
        margin: 0 0 1rem 0;
    }
    .account-settings .user-profile .user-avatar img {
        width: 90px;
        /*height: 90px;*/
        -webkit-border-radius: 100px;
        -moz-border-radius: 100px;
        border-radius: 100px;
    }
    .account-settings .user-profile h5.user-name {
        margin: 0 0 0.5rem 0;
    }
    .account-settings .user-profile h6.user-email {
        margin: 0;
        font-size: 0.8rem;
        font-weight: 400;
        color: #9fa8b9;
    }
    .account-settings .about {
        margin: 2rem 0 0 0;
        text-align: center;
    }
    .account-settings .about h5 {
        margin: 0 0 15px 0;
        color: #007ae1;
    }
    .account-settings .about p {
        font-size: 0.825rem;
    }
    .form-control {
        border: 1px solid #cfd1d8;
        -webkit-border-radius: 2px;
        -moz-border-radius: 2px;
        border-radius: 2px;
        font-size: .825rem;
        background: #ffffff;
        color: #2e323c;
    }

    .card {
        background: #ffffff;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        border: 0;
        margin-bottom: 1rem;
    }
  </style>

  <body class="dt-sidebar--fixed dt-header--fixed" onload="startTime()">

  <!-- Loader -->
  <div class="dt-loader-container" style="background-color: #202020;">
    <div class="dt-loader">
      <svg class="circular" viewBox="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"></circle>
      </svg>
    </div>
  </div>
  <!-- /loader -->

  <!-- Root -->
  <div class="dt-root">

    <!-- Header -->
  <header class="dt-header" id="header">

    <!-- Header container -->
    <div class="dt-header__container">

      <!-- Brand -->
      <div class="dt-brand">

        <!-- Brand tool -->
        <div class="dt-brand__tool" data-toggle="main-sidebar">
          <i class="icon icon-xl icon-menu-fold d-none d-lg-inline-block"></i>
          <i class="icon icon-xl icon-menu d-lg-none"></i>
        </div>
        <!-- /brand tool -->

        <!-- Brand logo -->
        <span class="dt-brand__logo">
        <a class="dt-brand__logo-link" href="index.php">
          <img class="dt-brand__logo-img d-none d-lg-inline-block" src="assets/images/main.png" alt="Wieldy">
          <img class="dt-brand__logo-symbol d-lg-none" src="https://via.placeholder.com/35x18" alt="Wieldy">
        </a>
      </span>
        <!-- /brand logo -->

      </div>
      <!-- /brand -->

      <!-- Header toolbar-->
      <div class="dt-header__toolbar">

        <!-- Search box -->
        <!--
        <form class="search-box d-none d-lg-block">
          <input class="form-control border-0" placeholder="Search in app..." value="" type="search">
          <span class="search-icon text-light-gray"><i class="icon icon-search icon-lg"></i></span>
        </form>
        -->
        <!-- /search box -->

        <!-- Header Menu Wrapper -->
        <div class="dt-nav-wrapper">
          <!-- Header Menu -->
          <ul class="dt-nav">
            <li class="dt-nav__item dt-notification-search dropdown">

              <!-- Dropdown Link -->
              <!--<a href="#" class="dt-nav__link dropdown-toggle no-arrow" data-toggle="dropdown"
                 aria-haspopup="true" aria-expanded="false"> <i class="icon icon-search-new icon-fw icon-lg"></i> </a>
              -->
              <!-- /dropdown link -->

              <!-- Dropdown Option -->
              <div class="dropdown-menu">

                <!-- Search Box -->
                <!--
                <form class="search-box right-side-icon">
                  <input class="form-control form-control-lg" type="search" placeholder="Search in app...">
                  <button type="submit" class="search-icon"><i class="icon icon-search icon-lg"></i></button>
                </form>
                -->
                <!-- /search box -->

              </div>
              <!-- /dropdown option -->

            </li>
          </ul>
          <!-- /header menu -->

          
          <!-- Header Menu -->
          <ul class="dt-nav">
            <li class="dt-nav__item dropdown">

              <!-- Dropdown Link -->
              <a href="#" class="dt-nav__link dropdown-toggle no-arrow dt-avatar-wrapper"
                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <img class="dt-avatar size-40" src="data:image/jpg;base64,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" alt="ALFREDO MISAEL VISITACION MEDINA">
              </a>
              <!-- /dropdown link -->

              <!-- Dropdown Option -->
              <div class="dropdown-menu dropdown-menu-right">
                <div class="dt-avatar-wrapper flex-nowrap p-6 mt--5 bg-gradient-purple text-white rounded-top">
                  <img class="dt-avatar" src="data:image/jpg;base64,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" alt="ALFREDO MISAEL VISITACION MEDINA">
                  <span class="dt-avatar-info">
                  <span class="dt-avatar-name">ALFREDO MISAEL VISITACION MEDINA</span>
                  <span class="f-12">
                    Administrador                  </span>
                </span>
                </div>
                <!--<a class="dropdown-item" href="javascript:void(0)"> <i class="icon icon-user-o icon-fw mr-2 mr-sm-1"></i>Cuenta </a>-->
                <!--<a class="dropdown-item" href="javascript:void(0)"> <i class="icon icon-setting icon-fw mr-2 mr-sm-1"></i>Configuración </a>-->
                <a class="dropdown-item" href="logout.php"> <i class="fas fa-sign-out-alt"></i> Salir </a>
              </div>
              <!-- /dropdown option -->

            </li>
          </ul>
          <!-- /header menu -->
          
          <ul class="" style="margin-top: 0px; list-style: none; left: 50%; margin-left: -100px; position: absolute; left: 50%; width: 160px;">
            <li id="clockdate">
              <div class="clockdate-wrapper">
                <div id="clock"></div>
                <div id="date"></div>
              </div>
            </li>
          </ul>
        </div>
        <!-- Header Menu Wrapper -->

      </div>
      <!-- /header toolbar -->

    </div>
    <!-- /header container -->

  </header>
  <!-- /header -->
    <!-- Site Main -->
    <main class="dt-main">
          <!-- Sidebar -->
    <aside id="main-sidebar" class="dt-sidebar">
      <div class="dt-sidebar__container">
        
        <!-- Sidebar Navigation -->
        <ul class="dt-side-nav">

          <!-- Menu Header -->
          <li class="dt-side-nav__item dt-side-nav__header">
            <span class="dt-side-nav__text">Menú</span>
          </li>
          <!-- /menu header -->

          <!-- Menu Item -->
          <li class="dt-side-nav__item ">
            <a href="#" class="dt-side-nav__link" title="Tablero">
              <i class="icon icon-dashboard icon-fw icon-xl"></i> <span class="dt-side-nav__text">Tablero</span>
            </a>
          </li>

          <li class="dt-side-nav__item">
            <a href="javascript:void(0)" class="dt-side-nav__link dt-side-nav__arrow" title="Principal">
              <i class="icon icon-widgets icon-fw icon-xl"></i>
              <span class="dt-side-nav__text">Principal</span> </a>

            <!-- Sub-menu -->
            <ul class="dt-side-nav__sub-menu">
                <!--
              <li class="dt-side-nav__item">
                <a href="index.php?module=registros&page=registros" class="dt-side-nav__link" title="Listado de Registros">
                  <span class="dt-side-nav__text">Registro de Visitas</span> </a>
              </li>
              <li class="dt-side-nav__item">
                <a href="index.php?module=registros&page=departamentos" class="dt-side-nav__link" title="Listado de Registros">
                  <span class="dt-side-nav__text">Departamentos Visitados</span> </a>
              </li>
              
              
              -->
            </ul>
            <!-- /sub-menu -->
          </li>
          
          <li class="dt-side-nav__item ">
            <a href="mantenimiento.jsp" class="dt-side-nav__link dt-side-nav__arrow" title="Mantenimiento">
              <i class="icon icon-setting icon-fw icon-xl"></i>
              <span class="dt-side-nav__text">Mantenimiento</span>
            </a>
          </li>
          <!-- /menu item -->

        </ul>
        <!-- /sidebar navigation -->

      </div>
    </aside>
    <!-- /sidebar -->

      <!-- Site Content Wrapper -->
      <div class="dt-content-wrapper">

              <!-- Site Content -->
      <div class="dt-content">

        <!-- Page Header -->
        <div class="dt-page__header">
          <h1 class="dt-page__title"></h1><!--Titulo-->
        </div>
        <!-- /page header -->

        <!-- Grid -->
        <div class="row dt-masonry">

          <!-- Grid Item -->
          <div class="col-md-12 dt-masonry__item">

            <!-- Card -->
            <div class="dt-card">

              <!-- Card Header -->
              <div class="dt-card__header">

                <!-- Card Heading -->
                <div class="dt-card__heading">
                  <h3 class="dt-card__title">Mantenimiento Enfermeros</h3><!--Titulo-->
                </div>
                <!-- /card heading -->

              </div>
              <!-- /card header -->

              <!-- Card Body -->
              <div class="dt-card__body tabs-container">

                <!-- Tab Navigation -->
                <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#tab-pane-1" role="tab"
                       aria-controls="tab-pane-1" aria-selected="true"><i class="fas fa-user-nurse"></i> Listado de Enfermeros
                    </a>
                  </li>
                </ul>
                <!-- /tab navigation -->

                <!-- Tab Content -->
                <div class="tab-content">

                  <!-- Tab Pane -->
                  <div id="tab-pane-1" class="tab-pane active">
                    <div class="card-body">
                      <!-- Grid -->
                      <div class="row">

                        <!-- Grid Item -->
                        <div class="col-12">

                          <!-- Card -->
                          <div class="dt-card">

                            <!-- Card Header -->
                            <div class="dt-card__header">

                              <!-- Card Heading -->
                              <div class="dt-card__heading">
                                <h3 class="dt-card__title">Editar Registro</h3>
                              </div>
                              <!-- /card heading -->

                            </div>
                            <!-- /card header -->

                            <!-- Card Body -->
                            <div class="dt-card__body">

                              <!-- Form -->
                              <form class="" action="ControlEnfermeros" method="POST">
                                <div class="form-row">
                                    <div class="col-sm-3 mb-3">
                                      <label for="nombres">Nombres</label>
                                      <div class="input-group">
                                        <div class="input-group-prepend">
                                          <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                        </div>
                                          <input type="text" class="form-control" id="nombres" name="nombres" value="${enf.nombres}" readonly="readonly">
                                      </div>
                                    </div>
                                    <div class="col-sm-3 mb-3">
                                    <label for="apellidos">Apellidos</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="apellidos" name="apellidos" value="${enf.apellidos}" readonly="readonly">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-sm-3 mb-3">
                                      <label for="dni">Dni</label>
                                      <div class="input-group">
                                        <div class="input-group-prepend">
                                          <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                        </div>
                                        <input type="text" class="form-control" id="dni" name="dni" value="${enf.dni}" readonly="readonly">
                                      </div>
                                    </div>
                                    <div class="col-sm-3 mb-3">
                                    <label for="codigo_cep">Codigo CEP</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="codigo_cep" name="codigo_cep" value="${enf.codigo_cep}" readonly="readonly">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-row">
                                  <div class="col-sm-3 mb-3">
                                    <label for="genero">Genero</label>
                                    <select class="form-control" id="genero" name="genero">
                                        <option value="Masculino">Masculino</option>
                                        <option value="Femenino">Femenino</option>
                                    </select>
                                  </div>
                                  <div class="col-sm-3 mb-3">
                                    <label for="nacimiento">Nacimiento</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="date" class="form-control" id="nacimiento" name="nacimiento" value="${enf.nacimiento}">
                                    </div>
                                  </div>
                                </div>
                                <div class="form-row">
                                  <div class="col-sm-3 mb-3">
                                    <label for="correo">Correo</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="correo" name="correo" value="${enf.correo}">
                                    </div>
                                  </div>
                                  <div class="col-sm-3 mb-3">
                                    <label for="telefono">Telefono</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="telefono" name="telefono" value="${enf.telefono}">
                                      <input type="hidden" name="ubigeo" value="150101">
                                      <input type="hidden" name="idenfermeros" value="${enf.idenfermeros}"><br>
                                      <input type="hidden" name="accion" value="modificarEnfermero">
                                    </div>
                                  </div>  
                                </div>
                                
                                <button class="btn btn-primary" type="submit">Guardar</button>
                                
                              </form>
                              <!-- /form -->

                            </div>
                            <!-- /card body -->

                          </div>
                          <!-- /card -->

                        </div>
                        <!-- /grid item -->
                      </div>
                    </div>
                  </div>
                  <!-- /tab pane-->
                  
                  
                </div>
                <!-- /tab content -->
              </div>
              <!-- /card body -->
            </div>
            <!-- /card -->
          </div>
          <!-- /grid item -->
        </div>
        <!-- /grid -->
      </div>
      <!-- /site content -->
      <!-- Footer -->
      <footer class="dt-footer" id="noprint3">
        Copyright UTP - DESARROLLO WEB INTEGRADO GRUPO 01 © 2022      </footer>
      <!-- /footer -->

      </div>
      <!-- /site content wrapper -->

          <!-- Theme Chooser -->
    <div class="dt-customizer-toggle">
      <a href="javascript:void(0)" data-toggle="customizer"> <i class="icon icon-spin icon-setting"></i> </a>
    </div>
    <!-- /theme chooser -->
    <!-- Customizer Sidebar -->
    <aside class="dt-customizer dt-drawer position-right" id="noprint2">
      <div class="dt-customizer__inner">

        <!-- Customizer Header -->
        <div class="dt-customizer__header">

          <!-- Customizer Title -->
          <div class="dt-customizer__title">
            <h3 class="mb-0">Configuración</h3>
          </div>
          <!-- /customizer title -->

          <!-- Close Button -->
          <button type="button" class="close" data-toggle="customizer">
            <span aria-hidden="true">&times;</span>
          </button>
          <!-- /close button -->

        </div>
        <!-- /customizer header -->

        <!-- Customizer Body -->
        <div class="dt-customizer__body ps-custom-scrollbar">
          <!-- Customizer Body Inner  -->
          <div class="dt-customizer__body-inner">

            <!-- Section -->
            <section id="theme-chooser">
              <h6 class="text-uppercase">Tema</h6>

              <!-- Button Group -->
              <div class="dt-customizer__btn-group btn-group btn-group-toggle btn-group mb-1" data-toggle="buttons">                <label class="btn btn-outline-light"><input class="theme-option" type="radio" name="options" id="theme-option-lite" value="lite">Claro</label>                <label class="btn btn-outline-light"><input class="theme-option" type="radio" name="options" id="theme-option-semidark" value="semidark">Semi Oscuro</label>                <label class="btn btn-outline-light"><input class="theme-option" type="radio" name="options" id="theme-option-dark" value="dark">Oscuro</label>            </div>
              <!-- /button group -->

            </section>
            <!-- /section -->

            <!-- Section -->
            <section id="theme-style-chooser">
              <h6 class="text-uppercase">Colores</h6>

              <!-- List -->
              <ul class="dt-list dt-list-sm dt-color-options">
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-1"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-2"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-3"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-4"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-5"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-6"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-7"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-8"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-9"></span>
                </li>
                <li class="dt-list__item">
                  <span class="dt-color-option" data-style="style-10"></span>
                </li>
              </ul>
              <!-- /list -->

            </section>
            <!-- /section -->

            <!-- Section -->
            <!--
            <section>
              <h6 class="text-uppercase">Nav Style</h6>

              <ul class="dt-list">
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/default" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/fixed.png" alt="Fixed Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/mini-sidebar" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/mini-sidebar.png" alt="Mini Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/drawer" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/drawer-nav.png" alt="Drawer Nav Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/back-office-mini" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/no-header-mini-sidebar.png" alt="No Header Mini Sidebar Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/back-office" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/vertical-no-header.png" alt="Vertical No Header Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/horizontal" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/horizontal-default.png"
                           alt="Horizontal Default Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/horizontal-dark" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/horizontal-dark.png" alt="Horizontal Dark Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/horizontal-inside-nav" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/horizontal-inside-nav.png" alt="Horizontal Inside Nav Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/horizontal-bottom-nav" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/horizontal-bottom-nav.png" alt="Horizontal Bottom Nav Layout">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="http://wieldy.g-axon.work/html-bs4/horizontal-top-nav" target="_blank" class="choose-option__icon">
                      <img src="assets/images/layouts/horizontal-top-nav.png" alt="Horizontal Top Nav Layout">
                    </a>
                  </div>
                </li>
              </ul>

            </section>
            -->
            <!-- /section -->

            <!-- Section -->
            <section  id="layout-chooser">
              <h6 class="text-uppercase">Vista</h6>

              <!-- List -->
              <ul class="dt-list dt-list-sm">
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="javascript:void(0)" class="choose-option__icon" data-layout="framed">
                      <img src="assets/images/layouts/framed.png" alt="Framed">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="javascript:void(0)" class="choose-option__icon" data-layout="full-width">
                      <img src="assets/images/layouts/full-width.png" alt="Full Width">
                    </a>
                  </div>
                </li>
                <li class="dt-list__item">
                  <div class="choose-option">
                    <a href="javascript:void(0)" class="choose-option__icon" data-layout="boxed">
                      <img src="assets/images/layouts/boxed.png" alt="Boxed">
                    </a>
                  </div>
                </li>
              </ul>
              <!-- /list -->

            </section>
            <!-- /section -->

          </div>
          <!-- /customizer body inner -->
        </div>
        <!-- /customizer body -->

      </div>
    </aside>
    <!-- /customizer sidebar -->

    </main>
  </div>
  <!-- /root -->

  <!-- Optional JavaScript -->
<script src="node_modules/moment/moment.js"></script>

<!-- Perfect Scrollbar jQuery -->
<script src="node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
<!-- /perfect scrollbar jQuery -->

<!-- masonry script -->
<script src="node_modules/masonry-layout/dist/masonry.pkgd.min.js"></script>
<script src="node_modules/sweetalert2/dist/sweetalert2.js"></script>

<!-- Custom JavaScript -->

<script src="assets/js/script.js"></script>
  </body>
  </html>
