app.controller('ArticleController', ['$scope', '$routeParams', '$http', 'IssuesService', function ($scope, $routeParams, $http, IssuesService) {
  $scope.lan = $routeParams.language;

  IssuesService.getIssues(function(data){
    $scope.issueList = data;
    $scope.issueMarkdownEn = $scope.issueList[0].issueintro[0].en;
    $scope.issueMarkdownCn = $scope.issueList[0].issueintro[1].cn;
    console.log($scope.issueMarkdownEn);
    // grab list of articles
    angular.forEach(data, function(issueArticles){
        $scope.issueArticles = issueArticles.issuearticles;
          console.log($scope.issueArticles);
        // filter articles based on current url
        angular.forEach($scope.issueArticles, function(article){
          if (article.articleslug === $routeParams.articletitle){
            $scope.article = article;
            $scope.markdown = article.articlecontent;
            $scope.articleLanguage = article.articlelanguage;
          }
        });
    });
  });
}]);