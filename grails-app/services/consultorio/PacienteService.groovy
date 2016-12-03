package consultorio

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class PacienteService {
    def dataSource

    def serviceMethod() {

    }

    def dataTables(params) {

        String columnaAOrdenar = params.get('order[0][column]');
        String attributeToOrder = params.get("columns[" + columnaAOrdenar + "][data]");
        String orderDir = params.get('order[0][dir]');
        String searchValue = params.get("search[value]")
        String limit = params.length
        String offset = params.start

        String select_count_sql = "SELECT COUNT(*) "

        String select_sql =
                """
                    SELECT
                        p.id as id,
                        p.nombres || p.apellidos as nombrecompleto,
                        p.sexo as sexo,
                        p.email as email

                """

        String from_sql =
                """
                    FROM paciente p
                """

        String where_sql =
                """
                    WHERE
                        1 = 1
                """

        String orderBy_limitOffset =
                """
                    ORDER BY $attributeToOrder $orderDir
                    LIMIT $limit OFFSET $offset
                """

        String recordsTotal_query = select_count_sql + from_sql + where_sql

        if (searchValue) {
            where_sql +=
                    """
                        AND (
                            UPPER(nombrecompleto) LIKE UPPER('%${searchValue}%') OR
                            UPPER(p.sexo) LIKE UPPER('%${searchValue}%') OR
                            UPPER(p.email) LIKE UPPER('%${searchValue}%')

                        )
                    """
        }

        String recordsFiltered_query = select_count_sql + from_sql + where_sql
        String dataQuery = select_sql + from_sql + where_sql + orderBy_limitOffset

        def allData = [
                "data"           : executeQuery(dataQuery),
                "recordsTotal"   : executeQuery(recordsTotal_query)[0].count as Long,
                "recordsFiltered": executeQuery(recordsFiltered_query)[0].count as Long,
                "draw"           : (params.draw as Integer) + 1
        ]

        return allData
    }

    @Transactional(readOnly = true)
    def executeQuery(String sql) {
        def db = new Sql(dataSource)
        def datos = db.rows(sql)
        db.close()
        return datos
    }
}
