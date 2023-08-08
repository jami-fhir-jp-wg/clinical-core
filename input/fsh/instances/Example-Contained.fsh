//-------- 埋め込み　患者情報01
Instance: Example-JP-Patient-eCS-01-Contained
InstanceOf: JP_Patient_eCS_Contained
Usage: #inline

Description: "埋め込み　患者情報01"

* meta.profile[+] = $JP_Patient_eCS_Contained

* id = "Patient1"

* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier[=].value = "826739"
* identifier[+].system = "http:/jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_member/00012345"
* identifier[=].value = "00012345:あいう:１８７:05"
* name[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension[=].valueCode = #IDE
* name[=].text = "田中 太郎"
* name[=].family = "田中"
* name[=].given = "太郎"

* gender = #male
* birthDate = "1955-05-04"

//-------- 埋め込み　患者情報02
Instance: Example-JP-Patient-eCS-02-Contained
InstanceOf: JP_Patient_eCS_Contained
Usage: #inline
Description: "埋め込み　患者情報02"

* meta.profile[+] = $JP_Patient_eCS_Contained

* id = "Patient2"
* identifier.system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier.value = "989"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "田中 太郎"
* name[=].family = "田中"
* name[=].given = "太郎"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "タナカ タロウ"
* name[=].family = "タナカ"
* name[=].given = "タロウ"

* gender = #male
* birthDate = "1955-05-04"

//-------- 埋め込み　外来受診01
Instance: Example-JP-Encounter-OW-eCS-01-Contained
InstanceOf: JP_Encounter
Usage: #inline

Description: "埋め込み　外来受診01 "
* meta.profile[+] = $JP_Encounter_OW_eCS_Contained

* id = "Encounter1"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192844"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "外来"
