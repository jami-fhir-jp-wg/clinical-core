//---- instance --------
// 患者施設固有ID
Instance: jp-local-patient-identifier-11311234567
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_local_patient_identifier_11311234567_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_local_patient_identifier_11311234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.51.11311234567"

// 医師施設固有ID
Instance: jp-local-physician-identifier-11311234567
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_local_physician_identifier_11311234567_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_local_physician_identifier_11311234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.41.11311234567"

// サンプル薬剤固有コード
Instance: jp-local-drugcode-19911234567
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_local_drugcode_19911234567_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_local_drugcode_19911234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/eCS/CodeSystem/DrugCode/19911234567"

//-------- CLINS ---------
Instance: jp-clins-bundle-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_CLINS_bundle_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #codesystem
* description = "JP_CLINS_bundle_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/clins/bundle-identifier"

// 患者施設固有ID(不特定医療機関)
Instance: jp-eCS-hospital-patient-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_eCS_hospital_patient_identifier_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_eCS_hospital_patient_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/eCS/Idsystem/JP_Hospital_PatientID"

// 患者施設固有仮名化ID(不特定医療機関)
Instance: jp-eCS-hospital-patient-pseudonymized-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_eCS_hospital_patient_pseudonymized_identifier_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_eCS_hospital_patient_pseudonymized_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/eCS/Idsystem/JP_Hospital_PatientID_Pseudonymized"

// 施設固有検査項目コード(不特定医療機関)
Instance: jp-clins-ObsLabResult-LocalCode-codesystem
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_CLINS_ObsLabResult_LocalCode_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #CodeSystem
* description = "JP_CLINS_ObsLabResult_LocalCode_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS"


//-------- general ---------
Instance: jp-local-patient-identifier-root
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_local_patient_identifier_root_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #root
* description = "JP_local_patient-identifier_root_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.200119.6.102"

// 被保険者ID
Instance: jp-insurance-memberID-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_insurance_memberID_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_insurance_memberID_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID"

// 生活保護受給者ID
Instance: jp-publicPayer-memberID-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_publicPayer_memberID_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_publicPayer_memberID_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/clins/Idsystem/JP_PublicPayer_memberID"

Instance: jp-medical-institution-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_imedical_institution_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_imedical_institution_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"

Instance: jp-insurer-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_insurer_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_insurer_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsurerNumber"

Instance: jp-specimen
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_specimen_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_specimen_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "specimen"

// 同一剤グループ内での順番を識別するURI
Instance: jp-medicationAdministrationIndex-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_MedicationAdministrationIndex_identifier_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_MedicationAdministrationIndex_identifier_NamingSystem 同一剤グループ内での順番を識別するURI"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex"


//RP番号を識別するURI
Instance: jp-rpGroupNumber-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_RPGroupNumber_identifier_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_RPGroupNumber_identifier_NamingSystem RP番号を識別するURI"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber"


//処方箋・注射処方箋ID（全国共通システム）
Instance: jp-medicationRequestOrderCommon-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_medicationRequestOrderCommon_identifier_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_medicationRequestOrderCommon_identifier_NamingSystem RP番号を識別するURI"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.11"