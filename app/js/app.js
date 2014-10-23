var app = angular.module('octavejournal',[
  'ngRoute',
  ]);

  var dropcaps = document.querySelectorAll(".dropcap");
  window.Dropcap.layout(dropcaps, 3);

  //splash 
  function resizesplash(divId) {
    var heights = window.innerHeight;
    document.getElementById("splash").style.height = heights -64 + "px";
    } resizesplash();
    window.onresize = function() {
      resizesplash(); };

