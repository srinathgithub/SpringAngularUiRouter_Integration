<style>


/* ==========================================================================
   Author's custom styles
   ========================================================================== */

body
{
    font-family: 'Open Sans', sans-serif;
}

.fb-profile img.fb-image-lg{
    z-index: 0;
    width: 100%;  
    margin-bottom: 10px;
}

.fb-image-profile
{
    margin: -90px 10px 0px 50px;
    z-index: 9;
    width: 20%; 
}

@media (max-width:768px)
{
    
.fb-profile-text>h1{
    font-weight: 700;
    font-size:16px;
}

.fb-image-profile
{
    margin: -45px 10px 0px 25px;
    z-index: 9;
    width: 20%; 
}
}


</style>
<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>-->
<div ng-init="getSampleJson()">
    <div class="fb-profile">
        <img align="left" class="fb-image-lg" src="resources/img/profile_background.jpg" alt="Profile image example"/>
        <img align="left" class="fb-image-profile thumbnail" src="resources/img/a-p-j-abdul-kalam-2.jpg" alt="Profile image example"/>
        <div class="fb-profile-text">
            <h1>{{userObject.userName}}</h1>
            <p>{{userObject.address}}</p>
        </div>
    </div>
</div><!-- /container -->  