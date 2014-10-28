app.factory("IssuesService", function($q, $http) {

  var issuesUrl = 'https://s3-ap-southeast-1.amazonaws.com/octavejournal/article-assets/issues.json';

  return {
      getIssues: function(callback) {
        $http.get(issuesUrl).success(callback);
    }
  };
  
});