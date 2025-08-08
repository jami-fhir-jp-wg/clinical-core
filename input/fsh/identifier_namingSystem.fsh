//---- instance --------
// 患者施設固有ID
Instance: sample-jp-local-patient-identifier-11311234567
InstanceOf: NamingSystem
Usage: #definition
* name = "SAMPLE_JP_local_patient_identifier_11311234567_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "SAMPLE_JP_local_patient_identifier_11311234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.51.11311234567"

// 医師施設固有ID
Instance: sample-jp-local-physician-identifier-11311234567
InstanceOf: NamingSystem
Usage: #definition
* name = "SAMPLE_JP_local_physician_identifier_11311234567_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "SAMPLE_JP_local_physician_identifier_11311234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.41.11311234567"

// サンプル薬剤固有コード
Instance: sample-jp-local-drugcode-identifier19911234567
InstanceOf: NamingSystem
Usage: #definition
* name = "SAMPLE_JP_local_drugcode_identifier19911234567_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "SAMPLE_JP_local_drugcode_identifier19911234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/eCS/CodeSystem/DrugCode/19911234567"
* uniqueId[=].preferred	 = true

// サンプル薬剤固有コード
Instance: sample-jp-local-drugcode-19911234567
InstanceOf: NamingSystem
Usage: #definition
* name = "SAMPLE_JP_local_drugcode_19911234567_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #codesystem
* description = "SAMPLE_JP_local_drugcode_19911234567_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/eCS/CodeSystem/DrugCode/19911234567"
* uniqueId[=].preferred	 = true

//-------- CLINS ---------
Instance: jp-clins-bundle-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_CLINS_bundle_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
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
* kind = #codesystem
* description = "JP_CLINS_ObsLabResult_LocalCode_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS"
* uniqueId[=].preferred	 = true

// 施設固有検査項目コード(不特定医療機関)
Instance: jp-clins-ObsLabResult-LocalCodeId-codesystem
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_CLINS_ObsLabResult_LocalCodeId_NamingSystem"
* status = #active
* date = "2025-08-15"
* kind = #identifier
* description = "JP_CLINS_ObsLabResult_LocalCodeId_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS"
* uniqueId[=].preferred	 = true

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
Instance: jp-IdSystem-prescriptionDocumentID-namingsystem
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_IdSystem_PrescriptionDocumentID_NamingSystem"
* status = #active
* date = "2025-06-15"
* kind = #identifier
* description = "JP_IdSystem_PrescriptionDocumentID_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.11"

Instance: jp-core-resourceInstance-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_core_resourceInstance_identifier_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_core_resourceInstance_identifier_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"

Instance: jp-prefecture-IdSystem
InstanceOf: NamingSystem
Usage: #definition
* name = "JP_prefecture_IdSystem_NamingSystem"
* status = #active
* date = "2025-05-25"
* kind = #identifier
* description = "JP_prefecture_IdSystem_NamingSystem"
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.101"   //   北海道
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.102"   //   青森県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.103"   //   岩手県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.104"   //   宮城県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.105"   //   秋田県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.106"   //   山形県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.107"   //   福島県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.108"   //   茨城県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.109"   //   栃木県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.110"   //   群馬県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.111"   //   埼玉県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.112"   //   千葉県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.113"   //   東京都
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.114"   //   神奈川
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.115"   //   新潟県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.116"   //   富山県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.117"   //   石川県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.118"   //   福井県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.119"   //   山梨県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.120"   //   長野県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.121"   //   岐阜県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.122"   //   静岡県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.123"   //   愛知県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.124"   //   三重県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.125"   //   滋賀県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.126"   //   京都府
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.127"   //   大阪府
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.128"   //   兵庫県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.129"   //   奈良県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.130"   //   和歌山県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.131"   //   鳥取県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.132"   //   島根県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.133"   //   岡山県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.134"   //   広島県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.135"   //   山口県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.136"   //   徳島県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.137"   //   香川県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.138"   //   愛媛県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.139"   //   高知県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.140"   //   福岡県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.141"   //   佐賀県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.142"   //   長崎県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.143"   //   熊本県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.144"   //   大分県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.145"   //   宮崎県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.146"   //   鹿児島県
* uniqueId[+].type = #uri
* uniqueId[=].value = "urn:oid:1.2.392.100495.20.3.32.147"   //   沖縄県


