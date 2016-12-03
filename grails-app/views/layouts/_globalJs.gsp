<script>
    var CONTEXT_ROOT = '${request.getContextPath()}';

    $(document).ready(function () {
        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": true,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "10000",
            "extendedTimeOut": "2000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };

        $.extend($.fn.dataTable.defaults, {
            "processing": true,
            "serverSide": true,
            "lengthChange": false,
            "ordering": true,
            "pageLength": 25,
            "dom": '<"pull-left"f>rtip',
            "language": {
                "url": "${resource(dir: 'js', file: 'dataTables.spanish.txt')}"
            }
        });

        <g:if test="${flash.alert}">
        switch ('${flash.alert.type}') {
            case 'error':
                toastr.error('${flash.alert.message}');
                break;
            case 'success':
                toastr.success('${flash.alert.message}');
                break;
            case 'warning':
                toastr.warning('${flash.alert.message}');
                break;
            case 'info':
                toastr.info('${flash.alert.message}');
                break;
            default:
                toastr.success('${flash.alert.message}');
                break;
        }
        ${flash.alert = null}
        </g:if>

        $(document).ajaxError(function (event, jqxhr, settings, thrownError) {
            switch (jqxhr.status) {
                case 500:
                    toastr.error("Ha ocurrido un error en el servidor");
                    break;
                case 401:
                    toastr.error("Se ha terminado la sesión, logeate de nuevo");
                    break;
                case 400:
                    toastr.warning(jqxhr.responseText);
                    break
            }
        });
    });
</script>
