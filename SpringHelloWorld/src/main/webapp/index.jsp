<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login form using HTML5 and CSS3</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/style.css">

<script src="resources/js/angular/jquery.js"></script>
<script src="resources/js/angular/angular.js"></script>
<script src="resources/js/angular/bootstrap.js"></script>
<script src="resources/js/angular/angular-ui-router.js"></script>
<script type="text/javascript" src="resources/js/custom/main.js"></script>
<script type="text/javascript" src="resources/js/custom/services/jsonService.js"></script>

</head>

<body ng-app="myApp">
    
    <!-- NAVIGATION -->
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" ui-sref="#">AngularUI Router</a>
        </div>
        <ul class="nav navbar-nav">
            <li style="cursor:pointer"><a ui-sref="home">Home</a></li>
            <li style="cursor:pointer"><a ui-sref="about">About</a></li>
        </ul>
        <ul class="nav navbar-nav pull-right">
             <li style="cursor:pointer"><a ui-sref="#">SingIn</a></li>
            <li style="cursor:pointer"><a ui-sref="signUp">SingUp</a></li>
        </ul>
    </nav>

         <!--THIS IS WHERE WE WILL INJECT OUR CONTENT ============================== -->
        <div ui-view></div>

    

</body>


</html>
