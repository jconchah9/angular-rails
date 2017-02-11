app = angular.module('receta',['templates','controllers','ngRoute','ngResource'])

app.config(['$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "app/templates/index.html"
        controller: 'RecipesController'
      ).when('/recipes/new',
        templateUrl: "app/templates/form.html"
        controller: 'RecipeController'
      ).when('/recipes/:recipeId',
        templateUrl: "app/templates/show.html"
        controller: 'RecipeController'
       ).when('/recipes/:recipeId/edit',
        templateUrl: "app/templates/form.html"
        controller: 'RecipeController'
       )
])

controllers = angular.module('controllers',[])
