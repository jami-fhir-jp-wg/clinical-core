Instance: 0009993939-0A172BC10398DD2021071314262201-1-1-1
InstanceOf: MedicationRequest
Usage: #inline
* meta.lastUpdated = "2021-07-13T19:21:18.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-0A172BC10398DD2021071314262201-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-0A172BC10398DD2021071314262201-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#123812902 "カロナール錠５００"
* medicationCodeableConcept.coding[+] = $Icode#I1187300 "カロナール錠５００"
* medicationCodeableConcept.text = "カロナール錠５００"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.10) "整形外科・脊椎外科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-13T15:01:29+09:00"
* requester = Reference(Practitioner/D10584) "診療　和子"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/D10584)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-0A172BC10398DD2021071314262201-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-13"
* dosageInstruction.text = "1日4回 毎食後と就寝前 １回 1錠  (１日  4錠) 7　日分"
* dosageInstruction.timing.event = "2021-07-13T08:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 8 'd' "日"
* dosageInstruction.timing.repeat.count = 28
* dosageInstruction.timing.repeat.frequency = 4
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日4回 毎食後と就寝前"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 4 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 28 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 7 'd' "日"