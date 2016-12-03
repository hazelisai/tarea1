<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Consultorio</title>

	</head>
	<body>
	<div class="container">

		<div class="blog-header">
			<h1 class="blog-title">Mi consultorio</h1>
			<p class="lead blog-description">Dra. Norma Ojeda.</p>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="${resource(dir: 'images',file: 'medico_paciente.png')}" alt="Imagen medico - paciente">
					<div class="caption">
						<h3>Pacientes</h3>
						<p>Gestión de los pacientes, agrega, edita y elimina.</p>
						<p><a href="${createLink(controller: 'paciente',action: 'list')}" class="btn btn-primary" role="button">Pacientes</a></p>
					</div>
				</div>
			</div>
		</div>

	</div>

	</body>
</html>
