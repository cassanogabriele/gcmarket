<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<footer class="ftco-footer ftco-section">
  <div class="container">
    <div class="row">
        <div class="mouse">
           <a href="#" class="mouse-icon">
             <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
           </a>
        </div>
    </div>

    <div class="row mb-5">

      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">GC Market</h2>
          
          <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
            <li class="ftco-animate"><a href="https://www.facebook.com/profile.php?id=100010505551221"><span class="icon-facebook"></span></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md">
        <div class="ftco-footer-widget mb-4 ml-md-5">
          <h2 class="ftco-heading-2">Menu</h2>
          <ul class="list-unstyled">
            <li><a href="{{ route('home') }}" class="py-2 d-block">Accueil</a></li>
            <li><a href="{{ route('shop') }}" class="py-2 d-block">Magasin</a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-4">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Aide</h2>
          <div class="d-flex">
              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                <li><a href="{{ route('shipping.informations') }}" class="py-2 d-block">Information sur la livraison</a></li>
                <li><a href="{{ route('returns.informations') }}" class="py-2 d-block">Retours &amp; échanges</a></li>
                <li><a  href="{{ route('conditions.informations') }}" class="py-2 d-block">Conditions générales de vente</a></li>
                <li><a href="{{ route('privacy.informations') }}" class="py-2 d-block">Politique de confidentialité</a></li>
              </ul>
            </div>
        </div>
      </div>

      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">Vous avez une question ?</h2>
            <div class="block-23 mb-3">
              <span class="icon icon-envelope"></span><span class="text ml-1">gabriel_cassano@hotmail.com</span>
            </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 text-center">
        <p>
          Copyright &copy; <script>document.write(new Date().getFullYear());</script> Tous droits réservés | <i class="icon-heart text-danger" aria-hidden="true"></i>  <a href="https://gabriel-cassano.be/" target="_blank">Gabriele Cassano</a>
        </p>
      </div>
    </div>
  </div>
</footer>

<script src="{{asset('frontend/js/jquery.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery-migrate-3.0.1.min.js')}}"></script>
<script src="{{asset('frontend/js/popper.min.js')}}"></script>
<script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.easing.1.3.js')}}"></script>
<script src="{{asset('frontend/js/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.stellar.min.js')}}"></script>
<script src="{{asset('frontend/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('frontend/js/aos.js')}}"></script>
<script src="{{asset('frontend/js/jquery.animateNumber.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.animateNumber.min.js')}}"></script>
<script src="{{asset('frontend/js/bootstrap-datepicker.js')}}"></script>
<script src="{{asset('frontend/js/scrollax.min.js')}}"></script>
{{-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> --}}
{{-- <script src="{{asset('frontend/js/google-map.js')}}"></script> --}}
<script src="{{asset('frontend/js/main.js')}}"></script>
</body>
</html>