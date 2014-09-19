app.config(function($routeProvider, $locationProvider) {

  $locationProvider.html5Mode(true);

  $routeProvider.when('/', {
  });

  $routeProvider.otherwise({ redirectTo: '/' });

});
