app.factory("IssuesService", function($q, $http) {

  var issuesUrl = 'issues.json';

  return {
      getIssues: function(callback) {
        $http.get(issuesUrl).success(callback);
    }
  };
  
});