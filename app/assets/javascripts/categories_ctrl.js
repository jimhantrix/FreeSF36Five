(function(){
  "use strict";

  angular.module("app").controller("categoriesCtrl", function($scope, $http){
    
    $scope.message = "hello, world";


    $scope.Home = "Home";
    $scope.Tools = "Tools";
    $scope.Clothing = "Clothing";
    $scope.Entertainment = "Entertainment";
    $cope.Electronics = "Electronics";
    $scope.Hobbies = "Hobbies";
    $scope.Classified = "Classified";



    window.$scope = $scope;

  });
}());



