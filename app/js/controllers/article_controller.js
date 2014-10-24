app.controller('ArticleController', ['$scope', '$routeParams', '$http', 'IssuesService', function ($scope, $routeParams, $http, IssuesService) {
  


  IssuesService.getIssues(function(data){
    $scope.issueList = data;
    // grab list of articles
    angular.forEach(data, function(issueArticles){
        $scope.issueArticles = issueArticles.issuearticles;
          console.log($scope.issueArticles);
        // filter articles based on current url
        angular.forEach($scope.issueArticles, function(article){
          if (article.articleslug === $routeParams.articletitle){
            $scope.article = article;
            $scope.markdown = article.articlecontent;            
          }
        });
    });
  });
}]);