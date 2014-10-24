app.controller('CoverController', ['$scope', '$http', 'IssuesService',
  function($scope, $http, IssuesService) {
  
  IssuesService.getIssues(function(data){
    $scope.issueList = data;
    console.log($scope.issueList);
  });

  //splash 
  function resizesplash(divId) {
    var heights = window.innerHeight;
    document.getElementById("splash").style.height = heights -0 + "px";
    } resizesplash();
    window.onresize = function() {
      resizesplash(); };

}]);