//= require rails-ujs
//= require unify/jquery.min
//= require popper.min
//= require unify/jquery-migrate.min
//= require unify/jquery.easing.min
//= require turbolinks
//= require unify/bootstrap
//= require hs.megamenu
//= require unify/hs.core
//= require unify/hs.header
//= require unify/hs.hamburgers
//= require unify/jquery-validate/jquery.validate.min
//= require unify/jquery-validate/additional-methods.min
//= require unify/jquery-validate/messages_es
//= require_tree .


$(document).on('turbolinks:load', function() {

  $(window).on('load', function () {
    // initialization of header
    $.HSCore.components.HSHeader.init($('#js-header'));
    $.HSCore.helpers.HSHamburgers.init('.hamburger');

    // initialization of HSMegaMenu component
    $('.js-mega-menu').HSMegaMenu({
      event: 'hover',
      pageContainer: $('.container'),
      breakpoint: 991
    });
  });
  
});


