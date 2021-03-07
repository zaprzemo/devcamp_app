import Typed from 'controllers/typed.js';

(function() {
  var ready;

  ready = function() {
    let typed = new Typed('.element', {
      strings: ['Software development is not only programming but also talking to each other.'
      , 'Communication is a key to the succesfull application.'],
      typeSpeed: 40,
      backDelay: 500,
      backSpeed: 20
    });
  };

  $(document).ready;

  $(document).on('turbolinks:load', ready);

}).call(this);
