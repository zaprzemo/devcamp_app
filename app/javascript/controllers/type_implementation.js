import Typed from 'controllers/typed.js';
$(document).ready(function() {
    let typed = new Typed('.element', {
      strings: ['Software development is not only programming but also talking to each other.'
      , 'Communication is a key to the succesfull application.'],
      typeSpeed: 40,
      backDelay: 500,
      backSpeed: 20
    });
  });




