//--------

Instance: Example-Patient-minimun
InstanceOf: JP_Patient
Usage: #example
Description: "埋め込み　患者情報_患者識別情報だけ"
* id = "PatientExample-Patient-minimun"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier[=].value = "000999739"
* identifier[+].system = "http:/jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_member"
* identifier[=].value = "00012345:あいう:１８７:05"

//-------- 埋め込み　患者情報01
Instance: Example-JP-Patient-eCS-01-Contained
InstanceOf: JP_Patient_eCS_Contained
Usage: #example
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
Usage: #example
Description: "埋め込み　患者情報02"

* meta.profile[+] = $JP_Patient_eCS_Contained

* id = "Patient2"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier[=].value = "989"
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
Instance: Example-JP-Encounter-AMB
InstanceOf: JP_Encounter
Usage: #example
Description: "埋め込み　外来受診01 "
* id = "Encounter-AMB"
* identifier.system = $JP_ResourceInstanceIdentifier
* identifier.value = "192844"
* status = #finished

* class.system = $v3-ActCode
* class.code = #AMB
* class.display = "外来"

//-------- 埋め込み　入院01
Instance: Example-JP-Encounter-IMP
InstanceOf: JP_Encounter
Usage: #example
Description: "埋め込み　入院01"
* id = "Encounter-IMP"
* status = #finished
* class = $v3-ActCode#IMP "入院"
* period.start = "2021-07-05"

//-------- 埋め込み　医療者R001
Instance: Example_Practitioner_minimun_R001
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み 医療者情報だけ"
* id = "R001"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "医学 一郎"

//-------- 埋め込み　医療者D001
Instance: Example_Practitioner_minimun_D001
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み 医療者情報だけ"
* id = "D001"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "医療 太郎"

//-------- 埋め込み　医療者D002
Instance: Example_Practitioner_minimun_D002
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み 医療者情報だけ"
* id = "D002"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "田中 宏"

//-------- 埋め込み　医療者D003
Instance: Example_Practitioner_minimun_D003
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み 医療者情報だけ"
* id = "D003"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "診療 和子"



