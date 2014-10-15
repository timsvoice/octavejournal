var app = angular.module('octavejournal',[
  'ngRoute',
  ]);

  //splash 
  function resizesplash(divId) {
    var heights = window.innerHeight;
    document.getElementById("splash").style.height = heights -64 + "px";
    } resizesplash();
    window.onresize = function() {
      resizesplash(); };