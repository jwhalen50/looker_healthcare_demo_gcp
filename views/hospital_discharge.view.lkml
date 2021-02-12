view: hospital_discharge {
  sql_table_name: healthcare.hospital_discharge ;;
  suggestions: no

  dimension: abortion_edit_indicator {
    type: string
    sql: ${TABLE}.abortion_edit_indicator ;;
  }

  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }

  dimension: apr_drg_code {
    type: string
    sql: ${TABLE}.apr_drg_code ;;
  }

  dimension: apr_drg_description {
    type: string
    sql: ${TABLE}.apr_drg_description ;;
  }

  dimension: apr_mdc_code {
    type: string
    sql: ${TABLE}.apr_mdc_code ;;
  }

  dimension: apr_mdc_description {
    type: string
    sql: ${TABLE}.apr_mdc_description ;;
  }

  dimension: apr_medical_surgical_description {
    type: string
    sql: ${TABLE}.apr_medical_surgical_description ;;
  }

  dimension: apr_risk_of_mortality {
    type: string
    sql: ${TABLE}.apr_risk_of_mortality ;;
  }

  dimension: apr_severity_of_illness_code {
    type: string
    sql: ${TABLE}.apr_severity_of_illness_code ;;
  }

  dimension: apr_severity_of_illness_description {
    type: string
    sql: ${TABLE}.apr_severity_of_illness_description ;;
  }

  dimension: attending_provider_license_number {
    type: string
    sql: ${TABLE}.attending_provider_license_number ;;
  }

  dimension: birth_weight {
    type: string
    sql: ${TABLE}.birth_weight ;;
  }

  dimension: ccs_diagnosis_code {
    type: string
    sql: ${TABLE}.ccs_diagnosis_code ;;
  }

  dimension: ccs_diagnosis_description {
    type: string
    sql: ${TABLE}.ccs_diagnosis_description ;;
  }

  dimension: ccs_procedure_code {
    type: string
    sql: ${TABLE}.ccs_procedure_code ;;
  }

  dimension: ccs_procedure_description {
    type: string
    sql: ${TABLE}.ccs_procedure_description ;;
  }

  dimension_group: date_of_admission {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_admission ;;
  }

  dimension_group: date_of_birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_birth ;;
  }

  dimension_group: date_of_discharge {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_discharge ;;
  }

  dimension: discharge_year {
    type: string
    sql: ${TABLE}.discharge_year ;;
  }

  dimension: emergency_department_indicator {
    type: string
    sql: ${TABLE}.emergency_department_indicator ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.ethnicity ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}.facility_id ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: health_service_area {
    type: string
    sql: ${TABLE}.health_service_area ;;
  }

  dimension: hospital_county {
    type: string
    sql: ${TABLE}.hospital_county ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: location
    sql_latitude:${TABLE}.latitude ;;
    sql_longitude:${TABLE}.longitude ;;
  }

  dimension: length_of_stay {
    type: string
    sql: ${TABLE}.length_of_stay ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: operating_certificate_number {
    type: string
    sql: ${TABLE}.operating_certificate_number ;;
  }

  dimension: operating_provider_license_number {
    type: string
    sql: ${TABLE}.operating_provider_license_number ;;
  }

  dimension: other_provider_license_number {
    type: string
    sql: ${TABLE}.other_provider_license_number ;;
  }

  dimension: patient_disposition {
    type: string
    sql: ${TABLE}.patient_disposition ;;
  }

  dimension: patient_name {
    type: string
    sql: ${TABLE}.patient_name ;;
  }

  dimension: payment_typology_1 {
    type: string
    sql: ${TABLE}.payment_typology_1 ;;
  }

  dimension: payment_typology_2 {
    type: string
    sql: ${TABLE}.payment_typology_2 ;;
  }

  dimension: payment_typology_3 {
    type: string
    sql: ${TABLE}.payment_typology_3 ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.race ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
  }

  dimension: total_charges {
    type: string
    sql: ${TABLE}.total_charges ;;
  }

  dimension: total_costs {
    type: string
    sql: ${TABLE}.total_costs ;;
  }

  dimension: type_of_admission {
    type: string
    sql: ${TABLE}.type_of_admission ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [facility_name, patient_name]
  }
}
