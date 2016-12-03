<%@ page import="consultorio.Paciente" %>
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
        <h1>Gestión de pacientes</h1>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <a href="${createLink(controller: 'paciente',action: 'create')}" class="btn btn-primary pull-right" role="button">Nuevo paciente</a>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <table id="pacientesDataTables" class="table table-bordered">

            </table>
        </div>

    </div>
</div>

<script>
    function bootstrapConfirm(id) {
        BootstrapDialog.confirm('¿Estas seguro?', function (result) {
            if (result) {
                window.location.href = CONTEXT_ROOT + '/paciente/delete/' + id
            }
        });
    }
    $(document).ready(function () {
        $('#pacientesDataTables').DataTable({
            "ajax": '${createLink(controller: 'paciente', action: 'pacientesDataTables')}',
            "columnDefs": [
                {"targets": 0, "title": "Nombre completo", "data": "nombrecompleto"},
                {"targets": 1, "title": "Sexo", "data": "sexo"},
                {"targets": 2, "title": "Email", "data": "email"},
                {
                    "targets": 3, "title": "", "data": "id", "orderable": false, "width": '25%',
                    "render": function (data) {
                        var $div = $('<div>');

                        var $editar = $('<a>', {
                            'href': CONTEXT_ROOT + '/paciente/edit/' + data,
                            'class': 'btn btn-warning',
                            'text': 'Editar',
                            'role': 'button'
                        });

                        var $eliminar = $('<button>', {
                            'type': 'button',
                            'class': 'btn btn-danger',
                            'id': 'editar-btn',
                            'text': 'Eliminar',
                            'onclick': 'bootstrapConfirm(' + data + ')'
                        });

                        $div.append($editar).append($eliminar);

                        return $div[0].outerHTML;
                    }
                }
            ]
        });
    });
</script>
</body>
</html>
