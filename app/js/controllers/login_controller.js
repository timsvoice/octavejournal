app.controller('LoginController', function($scope, $location, AuthenticationService, $cookieStore) {
  $scope.user = { password: "", language: "" };

  function isLogged() {
    if ($cookieStore.get('isLogged') === 'true') {
      $location.path('/en');
      console.log('success');
    }
  }

  isLogged();

  $scope.login = function(){
    if($scope.user.language === "english" && $scope.user.password === "middleway" || $cookieStore.get('isLogged') === 'true'){
      $location.path('/en');
      $cookieStore.put('isLogged','true');
    } else if ($scope.user.language === "chinese" && $scope.user.password === "middleway" || $cookieStore.get('isLogged') === 'true'){
      $location.path ('/cn');
      $cookieStore.put('isLogged','true');
    } else {
      alert("Your password is wrong or you didn't select a language. Please check your newsletter for your password");
       $cookieStore.remove('isLogged');
      }
  };
});