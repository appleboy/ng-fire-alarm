@ButtonToolbarCtrl = <[$log $scope FirebaseURL FireSync]> ++ !($log, $scope, FirebaseURL, FireSync) ->
  $scope.states = new FireSync!.get "#{ FirebaseURL }/button-states" toCollection: true .sync!
  $log.log \ButtonToolbarCtrl $scope