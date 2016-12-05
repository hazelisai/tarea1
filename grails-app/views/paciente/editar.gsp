<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:render template="/layouts/aplicacioncss"></g:render>
    <g:render template="/layouts/aplicacionjs"></g:render>
    <g:render template="/layouts/globalJs"></g:render>
</head>

<body>
<div class="container">
    <div class="page-header">
        <h1>Editar paciente</h1>
    </div>

    <g:form controller="paciente" action="update" id="${paciente?.id}" name="paciente_form" class="form-horizontal">
        <g:render template="form"/>
        <div class="form-group">
            <div class="pull-right">
                <g:link controller="paciente" action="list" class="btn btn-warning" role="button"><i class="glyphicon glyphicon-remove"></i> Cancelar</g:link>
                <button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-ok"></i> Guardar</button>
            </div>
        </div>
    </g:form>
</div>
<script>

    var $form = $('#paciente_form');
    $form.formValidation({
        live: 'disabled'
    });

    $('.date').datepicker({
        format: 'dd/mm/yyyy',
        startDate: '-80y',
        zIndexOffset:'20',
        language: 'es'
    }).on('changeDate', function (e) {
        // Revalidate the date field
        $form.formValidation('revalidateField', 'fecha_nacimiento');
    });

    $(".input_mayusculas").keyup(function(){
        this.value = this.value.toLocaleUpperCase();
    });
</script>
</body>
</html>
