<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

  	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
 

    <title>Connexion</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/jumbotron/">

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">

</head>
<body>

    <main role="main">
      
       <% if(request.getAttribute("msg-err") != null ){
    	   	out.print("<div class=\"container\">");
    	   		out.print("<div class=\"row\">");
    	   			out.print("<div class=\"col-md-12\">");
    	   				out.print("<div class=\"alert alert-danger\" role=\"alert\">");
    	   					out.print(request.getAttribute("msg-err"));
    	   				out.print("</div>");
    	   			out.print("</div>");
    	   		out.print("</div>");
    	   	out.print("</div>");
       	   }
       %>
       

	<h1>Bienvenue</h1>

     <div class="container">
     	<div class="row">
     	  <div class="col-md-6">
     			<h2>Login : </h2>
     			<hr>
     			<form method="post" action="bean.jsp">
     			
				  <div class="form-group">
				    <label for="login">Login :</label>
				    <input type="text" class="form-control" id="login" name="login" placeholder="Enter your login here">
				  </div>
				
				<div class="form-group">
				    <label for="password">Password :</label>
				    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password here">
				</div>

				  <button type="submit" class="btn btn-primary">Login</button>
				  <button type="reset" class="btn btn-danger"> Reset </button>
				</form>
     	  </div>
     	  <div class="col-md-6">
     			<h2>Register : </h2>
     			<hr>
     			<form method="post" action="bean.jsp">
     			
				  <div class="form-group">
				    <label for="login">Login :</label>
				    <input type="text" class="form-control" id="login" name="login" placeholder="Enter your login here">
				  </div>
				
				<div class="form-group">
				    <label for="password">Password :</label>
				    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password here">
				</div>
				<div class="form-group">
				    <label for="nom">Nom :</label>
				    <input type="text" class="form-control" id="nom" name="nom" placeholder="Enter your lastname here">
				</div>
				<div class="form-group">
				    <label for="prenom">Prénom :</label>
				    <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Enter your firstname here">
				</div>
				<div class="form-group">
				    <label for="">Date de naissance :</label>
				    <input type="date" class="form-control" id="prenom" name="naissance" placeholder="DD/MM/YYYY">
				</div>
				
				
				  <button type="submit" class="btn btn-primary">Register</button>
				  <button type="reset" class="btn btn-danger"> Reset </button>
				</form>
     	  </div>
         <hr>
     	</div>
     </div>

	<hr>
	</br>
    </main>

    <footer class="container">
      <p>&copy; Company 2017-2018</p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>