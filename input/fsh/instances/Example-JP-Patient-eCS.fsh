//--------

Instance: Example-JP-Patient-minimun
InstanceOf: JP_Patient
Usage: #example
Description: "Patientリソース　（患者情報）最小限  データ作成例"


// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>患者情報最小限  データ作成例</p> </div>"

//* meta.profile[+] = $JP_Patient_eCS
* id = "Example-JP-Patient-minimun"

* identifier[+].system = $JP_Hospital_PatientID
* identifier[=].value = "000999739"
//---
* identifier[+].system = "http://jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_memberID"
* identifier[=].value = "00012345:あいう:１８７:05"

//-------- 患者情報01
Instance: Example-JP-Patient-eCS-01-Contained
InstanceOf: JP_Patient
Usage: #example
Description: "Patientリソース　（患者情報）01  データ作成例"


// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>患者情報01  データ作成例</p> </div>"

* meta.profile[+] = $JP_Patient

* id = "Patient1"

* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier[=].value = "826739"
* identifier[+].system = "http://jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_memberID"
* identifier[=].value = "00012345:あいう:３８７４７６:01"
* name[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension[=].valueCode = #IDE
* name[=].text = "田中 太郎"
* name[=].family = "田中"
* name[=].given = "太郎"

* gender = #male
* birthDate = "1955-05-04"

//-------- 患者情報02
Instance: Example-JP-Patient-eCS-02-Contained
InstanceOf: JP_Patient
Usage: #example
Description: "Patientリソース　（患者情報）02  データ作成例"
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>患者情報02  データ作成例</p> </div>"


* meta.profile[+] = $JP_Patient

* id = "Patient2"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier[=].value = "989"
* identifier[+].system = "http://jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_memberID"
* identifier[=].value = "00012345:あいう:3294837:05"
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
