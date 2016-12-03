<%@ page import="consultorio.Paciente" %>

<div class="form-group">
    <label for="nombres">Nombres</label>
    <input type="text" name="nombres" id="nombres" class="form-control input_mayusculas"
           required
           data-fv-notempty-message="Requerido"
           data-fv-stringlength="true"
           data-fv-stringlength-max="200"
           data-fv-stringlength-message="Máximo 200 caracteres"
           data-fv-stringcase="true"
           data-fv-stringcase-case="upper"
           data-fv-stringcase-message="Solo mayúsculas"
           autocomplete="off"
           value="${paciente?.nombres}"/>
</div>

<div class="form-group">
    <label for="apellidos">Apellidos</label>
    <input type="text" name="apellidos" id="apellidos" class="form-control input_mayusculas"
           required
           data-fv-notempty-message="Requerido"
           data-fv-stringlength="true"
           data-fv-stringlength-max="200"
           data-fv-stringlength-message="Máximo 200 caracteres"
           data-fv-stringcase="true"
           data-fv-stringcase-case="upper"
           data-fv-stringcase-message="Solo mayúsculas"
           autocomplete="off"
           value="${paciente?.apellidos}"/>
</div>

<div class="form-group">
    <label for="email">Email</label>
    <input type="text" name="email" id="email" class="form-control"
           data-fv-stringlength="true"
           data-fv-stringlength-max="150"
           data-fv-stringlength-message="Máximo 150 caracteres"
           data-fv-emailaddress="true"
           data-fv-emailaddress-message="Correo inválido"
           autocomplete="off"
           value="${paciente?.email}"/>
</div>

<div class="form-group">
    <label for="direccion">Dirección</label>
    <input type="text" name="direccion" id="direccion" class="form-control input_mayusculas"
           required
           data-fv-notempty-message="Requerido"
           data-fv-stringlength="true"
           data-fv-stringlength-max="240"
           data-fv-stringlength-message="Máximo 240 caracteres"
           data-fv-stringcase="true"
           data-fv-stringcase-case="upper"
           data-fv-stringcase-message="Solo mayúsculas"
           autocomplete="off"
           value="${paciente?.direccion}"/>
</div>

<div class="form-group">
    <label for="telefono">Teléfono</label>
    <input type="text" name="telefono" id="telefono" class="form-control"
           data-fv-integer="true"
           data-fv-integer-message="Formato inválido"
           data-fv-stringlength="true"
           data-fv-stringlength-max="13"
           data-fv-stringlength-message="Máximo 13 caracteres"
           autocomplete="off"value="${paciente?.telefono}"/>
</div>

<div class="form-group">
    <label for="fecha_nacimiento">Fecha de nacimiento</label>
    <input type="text" name="fecha_nacimiento" id="fecha_nacimiento" class="form-control"
           required
           data-fv-notempty-message="Requerido"
           data-fv-stringlength="true"
           data-fv-stringlength-max="13"
           data-fv-stringlength-message="Máximo 13 caracteres"
           data-fv-date="true"
           data-fv-date-format="DD/MM/YYYY"
           data-fv-date-message="Fecha inválida"
           value="${paciente?.fecha_nacimiento}"/>
</div>

<div class="form-group">
    <label for="sexo">Sexo
    </label>
    <g:select name="sexo" from="${grailsApplication.config.com.consultorio.sexos}" class="form-control"
              required="required"
              data-fv-notempty-message="Requerido">

    </g:select>
</div>

<div class="form-group">
    <label for="observaciones">Observaciones</label>
    <input type="text" name="observaciones" id="observaciones" class="form-control input_mayusculas"
           data-fv-stringlength="true"
           data-fv-stringlength-max="350"
           data-fv-stringlength-message="Máximo 350 caracteres"
           value="${paciente?.observaciones}"/>
</div>

<div class="form-group">
    <div class="pull-right">
        <g:link controller="paciente" action="list" class="btn btn-warning" role="button">Cancelar</g:link>
        <button type="submit" class="btn btn-success">Guardar</button>
    </div>
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

