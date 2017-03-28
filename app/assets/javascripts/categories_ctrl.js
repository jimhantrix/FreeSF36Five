(function(){
  "use strict";

  angular.module("app").controller("categoriesCtrl", function($scope, $http){
    
    $scope.message = "Welcome to FreeSF36Five";


    // scope.setup = function(category_id) {
    //   $http.get("/api/v1/categories/" + category_id).then(function(response){
    //     $scope.category = response.data;
    //     $scope.categoriese = response.data.categories;


    



    window.$scope = $scope;

  });
}());



