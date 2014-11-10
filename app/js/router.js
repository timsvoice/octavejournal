app.config(function($routeProvider, $locationProvider) {

  $locationProvider.html5Mode(true);

  $routeProvider.when('/login', {
    templateUrl: 'login.html',
    controller: 'LoginController'
  });

  $routeProvider.when('/:language', {
    templateUrl: 'cover.html',
    controller: 'MainController'
  });

  $routeProvider.when('/:language/articles/:articletitle', {
    templateUrl: 'article.html',
    controller: 'ArticleController'
  });

  $routeProvider.when('/:language/issue/:articletitle', {
    templateUrl: 'issue-intro.html',
    controller: 'ArticleController'
  });

  $routeProvider.otherwise({ redirectTo: '/login' });

});
