Mapping: JPPatientR4toSSMIX2ADT00PID
Source:   JP_Patient
Target:   "http://ssmix2"
Id:       ssmix2-adt00-pid-r4-jppatient
Title:    "SSMIX2ADT00PID  to JP_Patient"
// * -> "Patient"
// * extension[USCoreRaceExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-race]"
// * extension[USCoreEthnicityExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity]"
// * extension[USCoreBirthSexExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-birthsex]"
// * identifier -> "Patient.identifier"
// * identifier.system -> "Patient.identifier.system"
// * identifier.value -> "Patient.identifier.value"
* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"
* identifier.system -> "urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号 医療機関識別OID番号;患者IDの発行者である機関の医療機関コード（１０桁）の先頭に１をつけた11桁"
* identifier.value -> "PID-3-1"
* name[0].family -> "PID-5-1"
* name[IDE].given -> "PID-5-2"

* active = "true"

* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = "#IDE"
* name[=].use = "#official"
* name[=].text = "PID-5[PID-5-8='I']-1　PID-5[PID-5-8='I']-2"
* name[=].family = "PID-5[PID-5-8='I']-1"
* name[=].given = "PID-5[PID-5-8='I']-2"

* name[1].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = "#SYL"
* name[=].use = "#official"
* name[=].text = "PID-5[PID-5-8='P']-1　PID-5[PID-5-8='P']-2"
* name[=].family = "PID-5[PID-5-8='P']-1"
* name[=].given = "PID-5[PID-5-8='P']-2"

// 自宅電話番号と同じ処理
* telecom[0].system = "#phone"
* telecom[=].value = "03-1234-5678"
* telecom[=].use = "#home"

* gender = "PID-8=F: female, =M: male =U: unknown  =O: other"

* birthDate = "PID-8(YYYYMMDD)->YYYY-MM-DD"

* address[+].text = "PID-11-8  例：神奈川県横浜市港区１－２－３"
* address[=].postalCode = "PID-11-5  例：123-4567"
* address[=].use = "#usual" 
* address[=].country = "JP"
