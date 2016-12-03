package com.consultorio

import grails.converters.JSON

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

    def create(){
        render(view: "create")

    }

    def save() {

    }

    def edit() {

    }

    def delete() {

    }
}
