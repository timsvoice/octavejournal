app.controller('LoginController', function($scope, $location, AuthenticationService) {
  $scope.user = { password: "", language: "" };

  $scope.login = function(){
    if($scope.user.language === "english" && $scope.user.password === "middleway"){
      $location.path('/en');
    } else if ($scope.user.language === "chinese" && $scope.user.password === "middleway"){
      $location.path ('/cn');
    } else {
      alert('Your password is wrong. Please check your newsletter for your password');
      }
  };
});