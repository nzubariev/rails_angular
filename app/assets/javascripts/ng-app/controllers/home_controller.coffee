app.controller "HomeController", ($scope, Item) ->
      Item.get().then (items) ->
        $scope.items = items

        # Pagination
        $scope.currentPage = 0;
        $scope.itemsPerPage = 5;
        $scope.firstPage = () ->
             $scope.currentPage == 0

        $scope.lastPage = () ->
            lastPageNum = Math.ceil($scope.items.length / $scope.itemsPerPage - 1)
            $scope.currentPage == lastPageNum

        $scope.numberOfPages = () ->
            Math.ceil($scope.items.length / $scope.itemsPerPage)

        $scope.startingItem = () ->
            $scope.currentPage * $scope.itemsPerPage

        $scope.pageBack = () ->
            $scope.currentPage = $scope.currentPage - 1

        $scope.pageForward = () ->
            $scope.currentPage = $scope.currentPage + 1
