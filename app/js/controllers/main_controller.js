app.controller('MainController', ['$scope', '$http', '$routeParams',
  function($scope, $http, $routeParams) {

  $scope.lan = $routeParams.language;
  console.log($scope.lan);
      
  $scope.navigation = {name: 'navigation', url: 'navigation.html'};
  $scope.footer = {name: 'footer', url: 'footer.html'};
  console.log($scope.navigation);
}]);

