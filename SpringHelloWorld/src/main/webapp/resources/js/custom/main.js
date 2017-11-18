var app = angular.module('myApp', [ 'ui.router' ]);
app.config(function($stateProvider, $urlRouterProvider) {
	$urlRouterProvider.otherwise('/home');

	$stateProvider.state('home', {
		url : '/home',
		templateUrl : 'views/login.jsp'
	}).state('signUp', {
		url : '/signUp',
		templateUrl : 'views/register.jsp',
		controller: 'regCtrl'
	}).state('signIn', {
		url : '/dashboard',
		templateUrl : 'views/welcomepage.jsp',
		controller : 'ctrlWel2'
	}).state('signIn.userProfile',{
		url:'/profile',
		templateUrl:'views/userProfile.jsp',
		controller : 'ctrlWel2'
	}).state('signIn.addUser',{
		url:'/add-user',
		templateUrl:'views/addUser.jsp',
		controller : 'ctrlWel2'
	}).state('signIn.viewAllUsers',{
		url:'/view-all-users',
		templateUrl:'views/viewUser.jsp',
		controller : 'ctrlWel2'
		
	})
})

app.controller('ctrlWel', function($scope, $state) {

	$scope.loadWelcomePage = function() {
		$state.go('signIn', {
			obj : {
				refresh : true
			}
		});
	}

});

app.controller('ctrlWel2', function($scope, $stateParams, ,$state) {
	$scope.stateParamValue = $stateParams.obj;
	$scope.createButtonEnable=false;httpService
	$scope.getSampleJson = function() {
		httpService.getSampleJsonObj("spring-web/json").success(
				function(response, status, header, config) {
					$scope.userObject = response;
				}).error(function(response) {
					alert("Faile to Load Request " + response.status);
		})
	}
	
	$scope.getListOfObj=function(url){
		console.log("Calling User List");
		httpService.getSampleJsonObj(url).success(
				function(response, status, header, config) {
					$scope.users = response;
					console.log("user are "+$scope.users);
				}).error(function(response) {
					alert("Fail To Load Request " + response.status);
		})
	}
	
	$scope.addUser=function(user){
		httpService.postService("spring-web/add-user",user).success(function(response,status,header,config){
			alert("User Added  Successfully");
			$scope.users = response;
		}).error(function(response){
			alert("Fail To Add User" + response.status);
		})
	}
	
	$scope.deleteUser=function(index){
		httpService.deleteService('spring-web/delete-user/'+index).success(function(response,status,header,config)
		{
			$scope.getListOfObj('spring-web/list-of-objs');
			alert("User Deleted Successfully");
			$scope.users = response;
		}).error(function(response){
			alert("Fail To Add User" + response.status);
		})
	}
	
	$scope.addUsers=function(){
		$state.go('signIn.addUser');
	}
	
	$scope.updateUser=function(index){
		
	}
	
	$scope.getListOfListOfObjs=function(){
			
	}
	$scope.getJsonMap=function(){
		
	}
	$scope.getDependencyDropDown=function(){
		
	}

});

app.controller('regCtrl',function($scope){
	$scope.enableRegForm=true;
	$scope.enableLogForm=false;
});
