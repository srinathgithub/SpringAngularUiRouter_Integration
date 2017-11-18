<style>
.navbar-fixed-left {
  width: 140px;
  position: fixed;
  border-radius: 0;
  height: 100%;
}

.navbar-fixed-left .navbar-nav > li {
  float: none;  /* Cancel default li float: left */
  width: 139px;
}

.navbar-fixed-left + .container {
  padding-left: 160px;
}

/* On using dropdown menu (To right shift popuped) */
.navbar-fixed-left .navbar-nav > li > .dropdown-menu {
  margin-top: -50px;
  margin-left: 140px;
}

</style>

<div class="navbar navbar-inverse navbar-fixed-left" style="top:50px">
  <a class="navbar-brand" ui-sref=".userProfile" ng-click="getSampleJson()">Profile</a>
  <ul class="nav navbar-nav">
   <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">CRUD <span class="caret"></span></a>
     <ul class="dropdown-menu" role="menu">
     <li><a ui-sref=".addUser" ng-click="getListOfObj('spring-web/list-of-objs');createButtonEnable=false">Add new User</a></li>
     <li class="divider"></li>
   	 <li><a ng-click="updateUsers()">Update User Data</a></li>
   	 <li class="divider"></li>
     <li><a ng-click="getDependencyDropDown()">Delete User</a></li>
      <li class="divider"></li>
       <li><a ui-sref=".viewAllUsers" ng-click="getListOfObj('spring-web/list-of-objs');createButtonEnable=true">View All Users</a></li>
     </ul>
   </li>
   <li><a ng-click="getListOfObj()">List of Objs</a></li>
   <li><a ng-click="getListOfListOfObjs()">List of List Of Objs</a></li>
   <li><a ng-click="getJsonMap()">Map of Objects</a></li>
   <li><a ng-click="getDependencyDropDown()">Dependency DropDown</a></li>
   
  </ul>
</div>
<div class="container">
 <div class="row">
   <h2>Angular Services Example ,On click of Each Tab Service returns Json structure </h2>
   <hr>
   <div ui-view></div>
 </div>
</div>