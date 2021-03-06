<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'> 
<style>
.panel-table .panel-body {
	padding: 0;
}

.panel-table .panel-body .table-bordered {
	border-style: none;
	margin: 0;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type {
	text-align: center;
	width: 100px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:last-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:last-of-type {
	border-right: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:first-of-type {
	border-left: 0px;
}

.panel-table .panel-body .table-bordered>tbody>tr:first-of-type>td {
	border-bottom: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr:first-of-type>th {
	border-top: 0px;
}

.panel-table .panel-footer .pagination {
	margin: 0;
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col {
	line-height: 34px;
	height: 34px;
}

.panel-table .panel-heading .col h3 {
	line-height: 30px;
	height: 30px;
}

.panel-table .panel-body .table-bordered>tbody>tr>td {
	line-height: 34px;
}
</style>

<div class="row">

	

	<p>�</p>
	<p>�</p>

	<div class="col-md-10 col-md-offset-1">

		<div class="panel panel-default panel-table">
			<div class="panel-heading">
				<div class="row">
					<div class="col col-xs-6">
						<h3 class="panel-title">Panel Heading</h3>
					</div>
					<div class="col col-xs-6 text-right">
						<button type="button" class="btn btn-sm btn-primary btn-create" ng-click="addUsers()">ADD
							New</button>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-list">
					<thead>
						<tr>
							<th><em class="fa fa-cog"></em></th>
							<th class="hidden-xs">ID</th>
							<th>Name</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="user in users track by $index">
							<td align="center"><a class="btn btn-default" ng-click="updateUser($index)">
								<em class="fa fa-pencil" ></em></a> 
								<a class="btn btn-danger" ng-click="deleteUser($index)">
							
								<em	class="fa fa-trash" ></em></a></td>
							<td class="hidden-xs">{{user.userId}}</td>
							<td>{{user.userName}}</td>
							<td>{{user.address}}</td>
						</tr>
					</tbody>
				</table>

			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col col-xs-4">Page 1 of 5</div>
					<div class="col col-xs-8">
						<ul class="pagination hidden-xs pull-right">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
						<ul class="pagination visible-xs pull-right">
							<li><a href="#">�</a></li>
							<li><a href="#">�</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>