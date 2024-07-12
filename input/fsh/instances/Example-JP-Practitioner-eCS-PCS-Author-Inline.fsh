Instance: Example-JP-Practitioner-eCS-PCS-Author
InstanceOf: JP_Practitioner_eCS
Usage: #example

Description: "医師情報　例"

// 002or_ValidationProfile(ARGmetaprofile)
* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS"
* language = #ja


* identifier.system  = "urn:oid:1.2.392.100495.20.3.41.11311234567"
* identifier.value = "U4403020"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "石川 さおり"
* name[=].family = "石川"
* name[=].given = "さおり"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "イシカワ サオリ"
* name[=].family = "イシカワ"
* name[=].given = "サオリ"

//----------------------------------------------------------------
Instance: Example-JP-Practitioner-eCS-PCS-Author-Inline
InstanceOf: JP_Practitioner_eCS
Usage: #inline

Description: "医師情報　例"

// 002or_ValidationProfile(ARGmetaprofile)
* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS"

* identifier.system  = "urn:oid:1.2.392.100495.20.3.41.11311234567"
* identifier.value = "U4403020"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "石川 さおり"
* name[=].family = "石川"
* name[=].given = "さおり"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "イシカワ サオリ"
* name[=].family = "イシカワ"
* name[=].given = "サオリ"


