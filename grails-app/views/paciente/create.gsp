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
        <h1>Nuevo paciente</h1>
    </div>

    <g:form controller="paciente" action="save" name="paciente_form" class="form-horizontal">
        <g:render template="form"/>
    </g:form>
</div>
</body>
</html>
