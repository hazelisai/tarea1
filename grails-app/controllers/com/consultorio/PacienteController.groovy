package com.consultorio

import consultorio.Paciente
import grails.converters.JSON
import grails.transaction.Transactional

class PacienteController {
    def pacienteService

    def index() {
        redirect(action: 'list')

    }

    def pacientesDataTables(){
        render pacienteService.dataTables(params) as JSON
    }

    def list() {

        render(view: 'list')
    }

    def detalles(Paciente paciente){
        render view: 'detalles',model: [paciente: paciente]
    }

    def create(){
        render(view: "create")

    }

    @Transactional
    def save(Paciente paciente) {
        if (!paciente.save(flush: true)) {
            paciente.errors.each { println it }
            flash.alert = [type: 'error', message: 'Hubo un error de validacion, no se pudo guardar el paciente']
            redirect(action: 'create')
            return
        }

        flash.alert = [type: 'success', message: 'Paciente guardado']
        redirect(action: 'list')
    }

    def editar(Paciente paciente) {
        if(!paciente){
            flash.alert = [type: 'error', message: 'No se encontró el paciente']
            redirect(action: 'list')
            return
        }
        render view: 'editar',model: [paciente: paciente]
    }

    @Transactional
    def update(Paciente paciente){
        if (paciente == null) {
            flash.alert = [type: 'error', message: 'Hubo un error, no se encontró el paciente']
            redirect(action: 'list')
            return
        }

        if (!paciente.save(flush: true)) {
            paciente.errors.each { println it }
            flash.alert = [type: 'error', message: 'Hubo un error de validacion, no se pudo guardar el elemento']
            redirect(action: 'editar',id: paciente.id)
            return
        }

        flash.alert = [type: 'success', message: 'Paciente actualizado']
        redirect(action: 'list')
    }

    @Transactional
    def delete(Paciente paciente) {
        paciente.delete()
        flash.alert = [type: 'success', message: 'Paciente eliminado']
        redirect(action: 'list')
    }
}
