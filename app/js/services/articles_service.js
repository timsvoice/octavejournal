app.factory("ArticlesService", function($q, $http) {

  var vendorsUrl = 'articles.json';
  var vendorsService = {};
  
  vendorsService.getData = function() {
    return $http.get(vendorsUrl).success(function(data){
      console.log(data);
    });
  };
  
  return vendorsService;
});