Instance: Example-Patient-standard
InstanceOf: JP_Patient_eCS
Usage: #example
Description: "患者情報　標準サンプル"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>患者情報　標準サンプル</p> </div>"

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"


* meta.profile[+] = $JP_Patient_eCS

* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11318814790"
* identifier[=].value = "000999739"
* identifier[+].system = $JP_Insurance_memberID
* identifier[=].value = "00012345:あいう:１８７:05"
//* identifier[=].value = "50012:あいう:123:05"
//* identifier[=].value = "00012345::１８７:05"
//* identifier[=].value = "00012345:あいう::05"
//* identifier[=].value = "00012345:あいう:１８７:1"


* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "牧野 爛漫"
* name[=].family = "牧野"
* name[=].given = "爛漫"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "マキノ ランマン"
* name[=].family = "マキノ"
* name[=].given = "ランマン"
* telecom.system = #phone
* telecom.value = "03-123-1234"
* telecom.use = #home
* telecom.rank = 1
* gender = #female
* birthDate = "1930-06-28"
* address.text = "高知県高知市五台山4200-6"
* address.postalCode = "781-8125"
* address.city = "高知市"
* address.state = "高知県"
* contact.telecom.system = #phone
* contact.telecom.value = "03-0123-4545   99991"
* contact.telecom.use = #work
* contact.telecom.rank = 2