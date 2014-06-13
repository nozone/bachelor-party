var root = angular.module('root', []);

root.controller('mainController', function($scope) {
	welcomeText = 'Welcome Sir Dudas.';

	$scope.message = welcomeText;
	$scope.questIntroVisable = false;

	$scope.showMap = function() {
    $scope.questIntroVisable = true;
  };

  $scope.hideMap = function() {
    $scope.questIntroVisable = false;
  };


});

function playSound(el,soundfile) {
  if (el.mp3) {
    if(el.mp3.paused) el.mp3.play();
    else el.mp3.pause();
  } else {
    el.mp3 = new Audio(soundfile);
    el.mp3.play();
  }
}