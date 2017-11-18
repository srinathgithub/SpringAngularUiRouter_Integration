
<div class="row">
	<div class="col-md-4">
		<div class="form-group">
			<label>User Name:</label> <input type="text" class="form-control"
				placeholder="Enter UserName" ng-model="user.userName">
		</div>
	</div>
	<div class="col-md-4">
		<div class="form-group">
			<label>Address:</label> <input type="text" class="form-control"
				placeholder="Enter Address" ng-model="user.address">
		</div>
	</div>
	<div class="col-md-4">
		<div class="form-group">
			<label>Address:</label> <input type="password" class="form-control"
				placeholder="Enter Password" ng-model="user.password">
		</div>

	</div>
</div>
<div class="row">
	<div class="col-md-4">
		<button class="btn btn-default" type="button" ng-click="addUser(user)">Add
			User</button>
	</div>

</div>

<div ng-if="users.length" class="row">
	<div ng-include src="'views/viewUser.jsp'"></div>
	<div ui-view></div>

</div>



