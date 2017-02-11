app = angular.module('receta',['templates','controllers','ngRoute'])

app.config(['$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "app/templates/index.html"
        controller: 'RecipesController'
      )
])

recipes = [
  { id: 1, name: 'Pollo al jugo' },
  { id: 2, name: 'Pizza'},
  { id: 3, name: 'Cazuela'}
]

controllers = angular.module('controllers',[])
controllers.controller("RecipesController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.recipes = recipes.filter (recipe)-> recipe.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.recipes = []
])
