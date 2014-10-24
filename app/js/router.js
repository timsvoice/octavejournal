app.config(function($routeProvider, $locationProvider) {

  $locationProvider.html5Mode(true);

  $routeProvider.when('/', {
    templateUrl: 'cover.html',
    controller: 'MainController'
  });

  $routeProvider.when('/:articletitle', {
    templateUrl: 'article.html',
    controller: 'ArticleController'
  });

  $routeProvider.otherwise({ redirectTo: '/' });

});
