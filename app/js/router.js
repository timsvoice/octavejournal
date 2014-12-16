app.config(function($routeProvider, $locationProvider) {

  $locationProvider.html5Mode(true);

  $routeProvider.when('/login', {
    templateUrl: 'login.html',
    controller: 'LoginController'
  });

  $routeProvider.when('/:language', {
    templateUrl: 'cover.html',
    controller: 'MainController',
  });

  $routeProvider.when('/:language/articles/:articletitle', {
    templateUrl: 'article.html',
    controller: 'ArticleController'
  }).otherwise({ redirectTo: '/login' });

  $routeProvider.when('/:language/issue/:articletitle', {
    templateUrl: 'issue-intro.html',
    controller: 'ArticleController'
  }).otherwise({ redirectTo: '/login' });

  $routeProvider.when('/:language/article-new', {
    templateUrl: 'new-article.html',
    controller: 'CmsController'
  }).otherwise({ redirectTo: '/login' });

  $routeProvider.otherwise({ redirectTo: '/login' });

});
