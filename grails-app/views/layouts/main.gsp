<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="es" class="no-js"><!--<![endif]-->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Consultorio"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
	<!-- CSS -->
	<link rel="stylesheet" href="${resource(dir: 'bootstrap/css',file: 'bootstrap.min.css')}">
	<link rel="stylesheet" href="${resource(dir: 'css',file: 'toastr.min.css')}">
<link rel="stylesheet" href="${resource(dir: 'css',file: 'blog.css')}">


		<!-- JS -->
		<script src="${resource(dir: 'js',file: 'jquery-1.11.2.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'bootstrap/js',file: 'bootstrap.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js',file: 'toastr.min.js')}" type="text/javascript"></script>

	<g:layoutHead/>
	</head>
	<body>
	<!-- navbar -->
	<div class="blog-masthead">
		<div class="container">
			<nav class="blog-nav">
				<a class="blog-nav-item ${controllerName == "home" ? 'active':''}" href="${createLink(controller: 'home',action: 'index')}">Inicio</a>
				<a class="blog-nav-item ${controllerName == "paciente" ? 'active':''}" href="${createLink(controller: 'paciente',action: 'list')}">Pacientes</a>
				<a class="blog-nav-item" href="#">Opción 1</a>
				<a class="blog-nav-item" href="#">Opción 2</a>
				<a class="blog-nav-item" href="#">Opción 3</a>
			</nav>
		</div>
	</div>

		<g:layoutBody/>

	</body>
</html>
