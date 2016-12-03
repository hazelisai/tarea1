<%@ page import="consultorio.Paciente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-paciente" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list paciente">

        <g:if test="${pacienteInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="paciente.email.label"
                                                                         default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pacienteInstance}"
                                                                                         field="email"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.telefono}">
            <li class="fieldcontain">
                <span id="telefono-label" class="property-label"><g:message code="paciente.telefono.label"
                                                                            default="Telefono"/></span>

                <span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${pacienteInstance}"
                                                                                            field="telefono"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.observaciones}">
            <li class="fieldcontain">
                <span id="observaciones-label" class="property-label"><g:message code="paciente.observaciones.label"
                                                                                 default="Observaciones"/></span>

                <span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue
                        bean="${pacienteInstance}" field="observaciones"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.apellidos}">
            <li class="fieldcontain">
                <span id="apellidos-label" class="property-label"><g:message code="paciente.apellidos.label"
                                                                             default="Apellidos"/></span>

                <span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${pacienteInstance}"
                                                                                             field="apellidos"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.direccion}">
            <li class="fieldcontain">
                <span id="direccion-label" class="property-label"><g:message code="paciente.direccion.label"
                                                                             default="Direccion"/></span>

                <span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${pacienteInstance}"
                                                                                             field="direccion"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.fecha_nacimiento}">
            <li class="fieldcontain">
                <span id="fecha_nacimiento-label" class="property-label"><g:message
                        code="paciente.fecha_nacimiento.label" default="Fechanacimiento"/></span>

                <span class="property-value" aria-labelledby="fecha_nacimiento-label"><g:formatDate
                        date="${pacienteInstance?.fecha_nacimiento}"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.nombres}">
            <li class="fieldcontain">
                <span id="nombres-label" class="property-label"><g:message code="paciente.nombres.label"
                                                                           default="Nombres"/></span>

                <span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${pacienteInstance}"
                                                                                           field="nombres"/></span>

            </li>
        </g:if>

        <g:if test="${pacienteInstance?.sexo}">
            <li class="fieldcontain">
                <span id="sexo-label" class="property-label"><g:message code="paciente.sexo.label"
                                                                        default="Sexo"/></span>

                <span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${pacienteInstance}"
                                                                                        field="sexo"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: pacienteInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${pacienteInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
