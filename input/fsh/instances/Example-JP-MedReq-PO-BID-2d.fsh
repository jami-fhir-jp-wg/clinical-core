Instance: Example-JP-MedReq-PO-BID-2d
InstanceOf: JP_MedicationRequest_CLINS_eCS
Usage: #example
Description: "入院処方　内服処方1日1回１回2錠 2日分処方例"

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"
* id = "Example-JP-MedReq-PO-BID-2d"

// * contained[+] = Example-Patient-minimun
* contained[+] = Example-Practitioner-minimun-D001

* meta.lastUpdated = "2021-07-12T19:29:12.000+09:00"
* meta.profile = $JP_MedicationRequest_CLINS_eCS
* identifier[rpNumber].system = "urn:oid:1.2.392.100495.20.3.81" // "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber" // 
* identifier[rpNumber].value = "1"
* identifier[orderInRp].system = "urn:oid:1.2.392.100495.20.3.82" // "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex" // 
* identifier[orderInRp].value = "1"
* identifier[requestIdentifierCommon].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[requestIdentifierCommon].value = "1318814790-9990767-0A172B1DB7EF2B2021071211420001-1"
* identifier[resourceInstance-identifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceInstance-identifier].value = "1318814790-9990767-0A172B1DB7EF2B2021071211420001-1"
* status = #completed
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = http://medis.or.jp/CodeSystem/master-HOT9#122394101 "デノタスチュアブル配合錠"
* medicationCodeableConcept.coding[+] = $Icode#I1388110 "デノタスチュアブル配合錠"
* medicationCodeableConcept.text = "デノタスチュアブル配合錠"
* subject.identifier.system = $JP_Insurance_memberID
* subject.identifier.value = "00012345:あいう:１８７:05"


* subject.type = "Patient"

* authoredOn = "2021-07-12T11:43:12+09:00"
* requester = Reference(Practitioner/Example-Practitioner-minimun-D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example-Practitioner-minimun-D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A172B1DB7EF2B2021071211420001-1"
* dosageInstruction.extension[periodOfUse].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension[periodOfUse].valuePeriod.start = "2021-07-12"
* dosageInstruction.text = "1日1回 夕食後 １回 2錠  (１日  2錠) 2　日分"
* dosageInstruction.timing.event = "2021-07-12T08:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 3 'd' "日"
* dosageInstruction.timing.repeat.count = 2
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日1回 夕食後"
* dosageInstruction.doseAndRate.type = http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthStrengthType#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 2 http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 2 http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 4 http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 2 'd' "日"