<!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>@yield('title')</title>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
      <link rel="stylesheet" href="{{ asset('backend/css/vendor.bundle.base.css') }}">
      <link rel="stylesheet" href="{{ asset('backend/css/vendor.bundle.addons.css') }}">
      <link rel="stylesheet" href="{{ asset('backend/css/style.css') }}">
      <link rel="stylesheet" href="{{ asset('backend/images/logo_2H_tech.png') }}">
    </head>

    <body>
      <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->

        @include('include.navbar1')
    
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
          <!-- partial:partials/_sidebar.html -->
        
          @include('include.navbar2')
          <!-- partial -->

          <!-- start content -->
          <div class="main-panel">
            <div class="content-wrapper">
              @yield('contenu')            
            </div>

            @include('include.footer')
          </div>
          <!-- end content -->

        </div>
        <!-- page-body-wrapper ends -->
      </div>
      <!-- container-scroller -->

      <!-- plugins:js -->
      <script src="{{ asset('backend/js/vendor.bundle.base.js') }}"></script>
      <script src="{{ asset('backend/js/vendor.bundle.addons.js') }}"></script>
      <!-- endinject -->
      <!-- Plugin js for this page-->
      <!-- End plugin js for this page-->
      <!-- inject:js -->
      <script src="{{ asset('backend/js/off-canvas.js') }}"></script>
      <script src="{{ asset('backend/js/hoverable-collapse.js') }}"></script>
      <script src="{{ asset('backend/js/template.js') }}"></script>
      <script src="{{ asset('backend/js/settings.js') }}"></script>
      <script src="{{ asset('backend/js/todolist.js') }}"></script>
      <script src="{{ asset('backend/js/bootbox.min.js') }}"></script>
      <!-- endinject -->
      <!-- Custom js for this page-->
      @yield('scripts')
      <!-- End custom js for this page-->
      <script>
        $(document).on("click", "#delete", function(e){
        e.preventDefault();
        var link = $(this).attr("href");
        bootbox.confirm("Voulez-vous vraiment supprimer cette catégorie ?", function(confirmed){
          if (confirmed){
              window.location.href = link;
            };
          });
        });
      </script>
    </body>

</html>

