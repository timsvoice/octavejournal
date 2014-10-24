var app = angular.module('octavejournal',[
  'ngRoute',
  'ngSanitize',
  'btford.markdown'
  ]);

  var dropcaps = document.querySelectorAll(".dropcap");
  window.Dropcap.layout(dropcaps, 3);


