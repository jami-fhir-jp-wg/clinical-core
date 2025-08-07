Instance: Example-JP-MedReq-PO-Fumin-asNeeded-4
InstanceOf: JP_MedicationRequest_eCS
Usage: #example
Description: "MedicationRequestリソース　入院・内服頓用　頓用と1回量をコードで記述する例"
* note.text = "MedicationRequestリソース　入院・内服頓用　頓用と1回量をコードで記述する例"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>入院処方　内服頓用　頓用と1回量をコードで記述する例</p> </div>"

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber_Extension 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1311234567"
* id = "Example-JP-MedReq-PO-Fumin-AsNeeded-4"

// * contained[+] = Example-Contained-JP-Patient-minimum
* contained[+] = Example-Contained-JP-Encounter-IMP
* contained[+] = Example-Contained-JP-Practitioner-minimum-D001

* meta.lastUpdated = "2021-07-27T01:31:19.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|x.x.x-instance"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|x.x.x-instance"
* language = #ja

* identifier[rpNumber].system = $JP_Medication_RPGroupNumber // "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber" // 
* identifier[rpNumber].value = "1"
* identifier[orderInRp].system = $JP_MedicationAdministrationIndex // "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex" // 
* identifier[orderInRp].value = "1"
* identifier[requestIdentifierCommon].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[requestIdentifierCommon].value = "1311234567-9990767-0A172AE334669A2021070515574101-1"
* identifier[requestIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[requestIdentifier].value = "1311234567-9990767-0A172AE334669A2021070515574101-1"
* status = #completed
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = $JP_MedicationCodeYJ_CS#1190027F1022 "デエビゴ錠２．５ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1379700 "デエビゴ錠２．５ｍｇ"
* medicationCodeableConcept.text = "デエビゴ錠２．５ｍｇ"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* encounter = Reference(Example-Contained-JP-Encounter-IMP)

* authoredOn = "2021-07-14T10:52:26+09:00"


* authoredOn = "2021-07-05T16:00:40+09:00"
* requester = Reference(Example-Contained-JP-Practitioner-minimum-D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Example-Contained-JP-Practitioner-minimum-D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1311234567-9990767-0A172AE334669A2021070515574101-1"
* dosageInstruction.extension[periodOfUse].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension[periodOfUse].valuePeriod.start = "2021-07-05"
* dosageInstruction.text = "不眠時  4　回分"
* dosageInstruction.timing.event = "2021-07-05T08:00:00+09:00"
* dosageInstruction.timing.code.coding[+].system = $MHLW_MedicationUsage_ePrescription_CS
* dosageInstruction.timing.code.coding[=].code = #1050610000000000
* dosageInstruction.timing.code.coding[=].display = "不眠時　服用"
* dosageInstruction.timing.code.text = "不眠時"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.doseAndRate.type = $JP_MedicationIngredientStrengthStrengthType_CS#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 $JP_MedicationUnitMERIT9_CS#TAB "錠"
* dispenseRequest.quantity = 4 $JP_MedicationUnitMERIT9_CS#TAB "錠"