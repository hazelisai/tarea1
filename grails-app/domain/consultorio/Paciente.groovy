package consultorio

import org.grails.databinding.BindingFormat

class Paciente {
    String nombres
    String apellidos
    String sexo
    String email

    @BindingFormat('dd/MM/yyyy')
    Date fecha_nacimiento
    String telefono
    String observaciones
    String direccion

    static mapping = {
        version false
        id generator: 'sequence', params: [sequence: 'paciente_id_secuencia']
        observaciones type: 'text'
    }

    static constraints = {
        email nullable: true
        telefono nullable: true
        observaciones nullable: true
    }
}
