<%-- 
    Document   : listar
    Created on : 26/06/2022, 08:21:13 PM
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
  <title>::EFIKACIA::</title>

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
            <li class="dt-nav__item dt-notification dropdown">

              <!-- Dropdown Link -->
              <a href="#" class="dt-nav__link dropdown-toggle no-arrow" data-toggle="dropdown"
                 aria-haspopup="true" aria-expanded="false"> <i class="icon icon-notification icon-fw dt-icon-alert"></i>
              </a>
              <!-- /dropdown link -->

              <!-- Dropdown Option -->
              <div class="dropdown-menu dropdown-menu-right dropdown-menu-media">
                <!-- Dropdown Menu Header -->
                <div class="dropdown-menu-header">
                  <h4 class="title">Visitas activas (2)</h4>
                  <!--
                  <div class="ml-auto action-area">
                    <a href="javascript:void(0)">Mark All Read</a> <a class="ml-2" href="javascript:void(0)">
                    <i class="icon icon-setting icon-lg text-light-gray"></i> </a>
                  </div>
                </div>
                -->
                <!-- /dropdown menu header -->

                <!-- Dropdown Menu Body -->
                <div class="dropdown-menu-body ps-custom-scrollbar">
                                    <div class="h-auto">
                    <!-- Media -->
                    <a href="javascript:void(0)" class="media">
                      <!-- Avatar -->
                      <img class="dt-avatar mr-3" src="data:image/jpg;base64,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" alt="User">
                      <!-- avatar -->
                      <!-- Media Body -->
                      <span class="media-body">
                        <span class="message">
                          <span class="user-name">Visitante:</span> ROMERO ORTIZ RICHARD DAVID<br>
                          <span class="user-name">Motivo:</span> VISITA FAMILIAR<br>
                          <span class="user-name">Lugar:</span> TORRE 1 Dpto T2-0404                        </span>
                        Permanencia: 7 dias 02 h. 07 min. 48 seg.                        
                      </span>
                    </a>
                    <!-- /media -->
                  </div>
                                    <div class="h-auto">
                    <!-- Media -->
                    <a href="javascript:void(0)" class="media">
                      <!-- Avatar -->
                      <img class="dt-avatar mr-3" src="data:image/jpg;base64,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" alt="User">
                      <!-- avatar -->
                      <!-- Media Body -->
                      <span class="media-body">
                        <span class="message">
                          <span class="user-name">Visitante:</span> FERRER SALAZAR ARTURO ARTURO<br>
                          <span class="user-name">Motivo:</span> INSTALACION INTERNET<br>
                          <span class="user-name">Lugar:</span> TORRE 1 Dpto T2-0404                        </span>
                        Permanencia: 5 dias 14 h. 40 min. 29 seg.                        
                      </span>
                    </a>
                    <!-- /media -->
                  </div>
                                  </div>
                <!-- /dropdown menu body -->

                <!-- Dropdown Menu Footer -->
                <div class="dropdown-menu-footer">
                  <a href="javascript:void(0)" class="card-link"> Ver todos <i class="icon icon-arrow-right icon-fw"></i>
                  </a>
                </div>
                <!-- /dropdown menu footer -->
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
                  <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tab-pane-2" role="tab"
                       aria-controls="tab-pane-2" aria-selected="true"><i class="icon icon-add icon-xl"></i> Nuevo Registro
                    </a>
                  </li>
                </ul>
                <!-- /tab navigation -->

                <!-- Tab Content -->
                <div class="tab-content">

                  <!-- Tab Pane -->
                  <div id="tab-pane-1" class="tab-pane active">
                    <div class="card-body">
                      
                      <!-- Card -->
                      <div class="dt-card">

                        <!-- Card Body -->
                        <div class="dt-card__body">

                          <!-- Tables -->
                          <div class="table-responsive">

                            <table id="data-table" class="table table-hover dataTable dtr-inline">
                              <thead>
                                <tr class="gradeX">
                                  <th>N&deg;</th>
                                  <th>Nombres</th>
                                  <th>Apellidos</th>
                                  <th>Dni</th>
                                  <th>Genero</th>
                                  <th>CEP</th>
                                  <th>Estado</th>
                                  <th>Acciones</th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach var="x" items="${lis}">
                                <% int i=1;%>
                                <tr class="gradeX">
                                    <td><%=i%></td>
                                    <td>${x.getNombres()}</td>
                                    <td>${x.getApellidos()}</td>
                                    <td>${x.getDni()}</td>
                                    <td>${x.getGenero()}</td>
                                    <td>${x.getCodigo_cep()}</td>
                                    <td>
                                        <c:if test = "${x.getEstado() == 1}">
                                            Activo
                                        </c:if>
                                        <c:if test = "${x.getEstado() == 0}">
                                            Inactivo
                                        </c:if>
                                    </td>
                                    <td>
                                        <a class="btn btn-xs btn-warning" href="ControlEnfermeros?accion=modificar&idenfermeros=${x.getIdenfermeros()}"><i class="fas fa-pen"></i></a>
                                        <a class="btn btn-xs btn-danger" href="ControlEnfermeros?accion=eliminar&idenfermeros=${x.getIdenfermeros()}" onclick="return confirm('¿Desea Eliminar el registro?')"><i class="fas fa-trash"></i></a>
                                    </td>
                                </tr>
                                <% i++; %>
                              </c:forEach>
                              </tbody>
                              <tfoot>
                              <tr>
                                <th colspan="8">&nbsp;</th>
                              </tr>
                              </tfoot>
                            </table>
                            <script type="text/javascript">
  jQuery(document).ready(function() {
    jQuery('#data-table').DataTable({
      rowReorder: {
      selector: 'td:nth-child(2)'
      },
      responsive: true,
      "language": {
        "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/es-ES.json"
      },
      "paging": true,
      "processing": true,
      "bLengthChange" : true, //thought this line could hide the LengthMenu
      "bInfo":true,
      "pageLength": 10,
      "stateSave": true,
      "lengthMenu": [[10, 50, 100, -1], [10, 50, 100, "All"]],
      //"order": [[ 4, "asc" ],[ 1, "asc"]],
      "ordering": false,
      "aProcessing": true,
      "aServerSide": true,
      
      dom: 'lBfrtip',
      buttons: [

        {
          extend: 'copyHtml5',
          text:   'Copiar <i class="far fa-copy"></i>',
          titleAttr:  'Copiar al Portapapeles',
          exportOptions: {
              "columns": [0,1,2,3,4,5,6],
          },
          "className": 'btn btn-secondary btn-sm'
        },
        {
          extend: 'excelHtml5',
          text:      'Excel <i class="far fa-file-excel"></i>',
          titleAttr: 'Exportar a Excel',
          title:  'Registros de visitas-2022-06-30-123609',
          exportOptions: {
              columns: [0,1,2,3,4,5,6],
          },
          "className": 'btn btn-secondary btn-sm'
        },
        {
          extend: 'pdfHtml5',
          text:      'PDF <i class="far fa-file-pdf"></i>',
          titleAttr: 'Exportar a PDF',
          title:  'Registros de visitas-2022-06-30-123609',
          orientation: 'portrait',
          pageSize: 'A4',
          exportOptions: {
              columns: [0,1,2,3,4,5,6],
          },
          "className": 'btn btn-secondary btn-sm',
          customize: function(doc) {
              doc.defaultStyle.fontSize = 8; //<-- set fontsize to 16 instead of 10
              doc.styles.tableHeader.fontSize = 10;
          }
        },
      ],                                  
    } );
  });
  document.title = "::Awkicare:: - Enfermeros"
</script>
                          </div>
                          <!-- /tables -->

                        </div>
                        <!-- /card body -->

                      </div>
                      <!-- /card -->

                    </div>
                  </div>
                  <!-- /tab pane-->

                  <!-- Tab Pane -->
                  <div id="tab-pane-2" class="tab-pane">
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
                                <h3 class="dt-card__title">Nuevo Registro</h3>
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
                                        <input type="text" class="form-control" id="nombres" name="nombres" value="">
                                      </div>
                                    </div>
                                    <div class="col-sm-3 mb-3">
                                    <label for="apellidos">Apellidos</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="apellidos" name="apellidos" value="">
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
                                        <input type="text" class="form-control" id="dni" name="dni" value="">
                                      </div>
                                    </div>
                                    <div class="col-sm-3 mb-3">
                                    <label for="codigo_cep">Codigo CEP</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="codigo_cep" name="codigo_cep" value="">
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
                                      <input type="date" class="form-control" id="nacimiento" name="nacimiento" value="">
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
                                      <input type="text" class="form-control" id="correo" name="correo" value="">
                                    </div>
                                  </div>
                                  <div class="col-sm-3 mb-3">
                                    <label for="telefono">Telefono</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-file-alt"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="telefono" name="telefono" value="">
                                      <input type="hidden" name="ubigeo" value="150101">
                                      <input type="hidden" name="accion" value="agregarRegistro">
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