Instance: Example_Patient_standard
InstanceOf: JP_Patient
Usage: #example
* identifier.system = "urn:oid:1.2.392.200119.6.102.11318814790"
* identifier.value = "0009993939"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "マキノ　ランマン"
* name[=].family = "マキノ"
* name[=].given = "ランマン"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "マキノ　ランマン"
* name[=].family = "マキノ"
* name[=].given = "ランマン"
* telecom.system = #phone
* telecom.value = "03-123-1234"
* telecom.use = #home
* telecom.rank = 1
* gender = #female
* birthDate = "1930-06-28"
* deceasedBoolean = false
* address.text = "高知県高知市五台山4200-6"
* address.postalCode = "781-8125"
* contact.relationship = $v2-0131#E "Employer"
* contact.telecom.system = #phone
* contact.telecom.value = "03-0123-4545   99991"
* contact.telecom.use = #work
* contact.telecom.rank = 2