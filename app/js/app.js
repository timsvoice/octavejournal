var app = angular.module('octavejournal',[
  'ngRoute',
  'ngSanitize',
  'btford.markdown'
  ]);

app.config(function($sceDelegateProvider) {
  $sceDelegateProvider.resourceUrlWhitelist([
    // Allow same origin resource loads.
    'self',
    // Allow loading from our assets domain.  Notice the difference between * and **.
    'https://s3-ap-southeast-1.amazonaws.com/octavejournal/**'
  ]);

});