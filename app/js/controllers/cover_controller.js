app.controller('CoverController', ['$scope', '$http', 'IssuesService','$cookieStore',
  function($scope, $http, IssuesService, $cookieStore) {
  
  $scope.navigation = {name: 'navigation', url: 'navigation.html'};
  $scope.footer = {name: 'footer', url: 'footer.html'};
  var cookie = $cookieStore.get('isLogged');
  
  IssuesService.getIssues(function(data){
    $scope.issueList = data;
  });

  //splash 
  function resizesplash(divId) {
    var heights = window.innerHeight;
    document.getElementById("splash").style.height = heights -128 + "px";
    } resizesplash();
    window.onresize = function() {
      resizesplash(); };

}]);