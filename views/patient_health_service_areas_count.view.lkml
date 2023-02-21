view: patient_health_service_areas_count {
  derived_table: {
    sql: SELECT
          health_service_area  AS "health_service_area",
          COUNT(*) AS "count"
      FROM healthcare.patient  AS patient
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 500
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: health_service_area {
    type: string
    sql: ${TABLE}.health_service_area ;;
  }

  dimension: count_ {
    type: number
    sql: ${TABLE}."count" ;;
  }

  set: detail {
    fields: [health_service_area, count_]
  }
}
