<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/newStudent.js"></script>
	<script type="text/javascript" src="js/newInstructor.js"></script>
	<script type="text/javascript" src="js/addStudentToClass.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<script type="text/javascript">
			$(document).ready(function() {
				
				
				$("#logoutLink").click(function(event){
					$("#logoutForm").submit();
				});
				
				var pathname = window.location.pathname;
				$("nav a[href='"+pathname+"']").parent().addClass("active");
				
			});

	</script>


    <title>Manager Dashboard</title>

    <!-- Bootstrap core CSS -->
    <c:url value="/css/bootstrap.min.css" var="cssBootstrap"/>
    <link href="${cssBootstrap}" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <c:url value="/css/dashboard.css" var="cssDashboard"/>
    <link href="${cssDashboard}" rel="stylesheet">
    
    <!-- Temporary Report CSS -->
    <style type="text/css">
	.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
	.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 10px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
	.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 10px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
	.tg .tg-ejgj{font-family:Verdana, Geneva, sans-serif !important;;vertical-align:top}
	.tg .tg-zemy{font-family:Verdana, Geneva, sans-serif !important;;text-align:center}
	@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">YMCA Swim</a>
        </div>
       <!-- Top Right NavBar -->
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li> -->
            <c:url var="logoutAction" value="/logoutManager" />
							<form id="logoutForm" action="${logoutAction}" method="POST">
							<input type="hidden" />
							</form>
							<li><a id="logoutLink" href="#">Log Out</a></li>
           <!--  <li><a href="#">Help</a></li> -->
          </ul>
           <!-- Optional Search Bar -->
          <!-- <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>-->
        </div>
      </div>
    </nav>
    
     <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <c:url value="/managerDashboard" var="managerDashboard"/>
            <li><a href="${managerDashboard}">Overview</a></li>
            <c:url value="/report" var="reportPage"/>
            <li class="active"><a href="${reportPage}">Reports <span class="sr-only">(current)</span></a></li>
           <!--  <li><a href="#">All Classes</a></li> -->
            
          </ul>
          <ul class="nav nav-sidebar">
            <li><strong>LINKS</strong></li>
            <c:url value="http://www.ymca.net/" var="ymcaLink"/>
            <li><a href="${ymcaLink}">YMCA</a></li>
            <c:url value="http://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/water-safety/swim-safety" var="swimSafety"/>
            <li><a href="${swimSafety}">Swim Safety Tips</a></li>
          </ul>
          <ul class="nav nav-sidebar">
           	<li><strong>RESOURCES</strong></li>
           	<c:url value="/img/StagesOfLearning.pdf" var="SOLpdf"/>
           	<li><a href="${SOLpdf}">Stages of Learning</a></li>
           	
           	<c:url value="/img/LessonSelector.pdf" var="lessonpdf"/>
            <li><a href="${lessonpdf}">Lesson Selector</a></li>
            
            <c:url value="/img/StageDescription.pdf" var="stagepdf"/>
            <li><a href="${stagepdf}">Stage Descriptions</a></li>
            
            <c:url value="/img/programOverview.pdf" var="programpdf"/>
            <li><a href="${programpdf}">Program Overview</a></li> 
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Manager Dashboard</h1>
        

<!-- END OF HEADER -->

<h2 class="sub-header">Individual Student Report</h2>


<div class="tg-wrap"><table class="tg table">
  <tr>
    <th class="tg-zemy" colspan="3">Swim Class Name<br>Class Level<br>        Instructor Name:             Day/Time:               </th>
  </tr>
  <tr>
    <td class="tg-ejgj" colspan="3">Student Name: </td>
  </tr>
  <tr>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj">Introduced</td>
    <td class="tg-ejgj">Accomplished</td>
  </tr>
  <tr>
    <td class="tg-ejgj">Skill Name 1</td>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj"></td>
  </tr>
  <tr>
    <td class="tg-ejgj">Skill Name 2</td>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj"></td>
  </tr>
  <tr>
    <td class="tg-ejgj">Skill Name 3</td>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj"></td>
  </tr>
  <tr>
    <td class="tg-ejgj">Skill Name 4</td>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj"></td>
  </tr>
  <tr>
    <td class="tg-ejgj">Skill Name 5</td>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj"></td>
  </tr>
  <tr>
    <td class="tg-ejgj">Skill Name 6</td>
    <td class="tg-ejgj"></td>
    <td class="tg-ejgj"></td>
  </tr>
</table></div>



<!-- FOOTER -->
		</div>
         </div>
         </div>
  <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>