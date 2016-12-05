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
           value="${paciente?.nombres}"
            ${actionName == "detalles" ? "readonly":""}/>
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
           value="${paciente?.apellidos}"
        ${actionName == "detalles" ? "readonly":""}/>
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
           value="${paciente?.email}"
        ${actionName == "detalles" ? "readonly":""}/>
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
           value="${paciente?.direccion}"
        ${actionName == "detalles" ? "readonly":""}/>
</div>

<div class="form-group">
    <label for="telefono">Teléfono</label>
    <input type="text" name="telefono" id="telefono" class="form-control"
           data-fv-integer="true"
           data-fv-integer-message="Formato inválido"
           data-fv-stringlength="true"
           data-fv-stringlength-max="13"
           data-fv-stringlength-message="Máximo 13 caracteres"
           autocomplete="off"value="${paciente?.telefono}"
        ${actionName == "detalles" ? "readonly":""}/>
</div>

<div class="form-group">
    <label for="fecha_nacimiento">Fecha de nacimiento</label>
    <div class="input-group date" data-date-end-date="0d">
        <input type="text" class="form-control"  name="fecha_nacimiento" id="fecha_nacimiento" placeholder="Fecha de nacimiento" value="${paciente?.fecha_nacimiento?.format("dd/MM/yyyy")}"

               data-fv-stringlength="true"
               data-fv-stringlength-max="13"
               data-fv-date="true"
               data-fv-date-format="DD/MM/YYYY"
               data-fv-date-message="Fecha inválida"
            ${actionName == "detalles" ? "readonly":""}>
        <div class="input-group-addon">
            <span class="glyphicon glyphicon-th"></span>
        </div>
    </div>

</div>

<div class="form-group">
    <label for="sexo">Sexo
    </label>
    <g:select name="sexo" from="${grailsApplication.config.com.consultorio.sexos}" class="form-control"
              required="required"
              data-fv-notempty-message="Requerido"
        value="${paciente?.sexo}"
    disabled="${actionName == "detalles" ? "true":"false"}">

    </g:select>
</div>

<div class="form-group">
    <label for="observaciones">Observaciones</label>
    <textarea type="text" name="observaciones" id="observaciones" class="form-control input_mayusculas"
           data-fv-stringlength="true"
           data-fv-stringlength-max="350"
           data-fv-stringlength-message="Máximo 350 caracteres"
    rows="4"
        ${actionName == "detalles" ? "readonly":""}>${paciente?.observaciones}</textarea>
</div>

