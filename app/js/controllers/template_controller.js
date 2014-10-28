app.controller('TemplateController', ['$scope', '$routeParams',
  function($scope, $routeParams) {

    $scope.navigation = {name: 'navigation', url: 'navigation.html'};
    $scope.footer = {name: 'footer', url: 'footer.html'};
}]);