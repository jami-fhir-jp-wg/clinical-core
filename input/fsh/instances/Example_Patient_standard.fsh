Instance: Example-Patient-standard
InstanceOf: JP_Patient
Usage: #example

* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11318814790"
* identifier[=].value = "000999739"
* identifier[+].system = "http:/jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_member"
* identifier[=].value = "00012345:あいう:１８７:05"

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
* contact.telecom.system = #phone
* contact.telecom.value = "03-0123-4545   99991"
* contact.telecom.use = #work
* contact.telecom.rank = 2