//Example-JP-MedReq-TID-01

// MedicationResourceリース
// JP_JPMedicationRequest
// ePrescriptionData 派生
//000mn_ExampleJPMedicationRequest_ePrescriptionData(ARGinstancename)
//001mn_Description(ARGtxt)
//002or_ValidationProfile_JPMedicationRequest_ePrescriptionData()
//010mn_処方番号(ARGshohono,ARGrpno)
//020mr_処方薬HOT9(ARGcode,ARGname)
//020mr_処方薬YJ(ARGcode,ARGname)
//020mr_処方薬LOCAL(ARGcode,ARGname,ARGlocalsystem)
//030mn_処方薬TEXT(ARGname)
//040mn_処方患者(ARGpatient)
//050mn_処方日時(ARGdate,ARGtime)
//060on_処方薬剤メモ(ARGtext)
//070mn_処方用法テキスト(ARGtext)
//080on_処方開始日(ARGdate)
//090on_処方実日数(ARGdays)
//100or_処方補足用法(ARGusageauxcode,ARGusageauxname)
//110or_処方服用全期間日数(ARGduration)
//120mn_処方用法メイン(ARGtimingusagecode,ARGtimingusagename)
//130on_処方用法部位(ARGsitecode,ARGsite)
//140on_処方内服用法()
//150on_処方外用用法(ARGmethodcode,ARGmethodname)
//160mn_処方製剤量指定()
//160mn_処方原薬量指定()
//170on_処方用法1回量(ARGdoseqty,ARGdoseunitcode,ARGdoseunitname)
//180on_処方用法1日量(ARGdoseqty,ARGdoseunitcode,ARGdoseunitname)
//200mn_処方調剤全量(ARGqty,ARGqtycode,ARGqtyname)
//210on_処方調剤全日数(ARGdays)
//300on_処方後発変更可()
//300on_処方後発変更不可(ARGnote)

Instance: Example-JP-MedReq-TID-01Inline
InstanceOf: JP_MedicationRequest_eCS
Usage: #inline

Description: "内服　処方例１件　MedicationRequestリソースのインスタンス例"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|1"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|1"
* language = #ja



* identifier[rpNumber].system = $JP_Medication_RPGroupNumber
* identifier[rpNumber].value = "1"
* identifier[orderInRp].system = $JP_MedicationAdministrationIndex
* identifier[orderInRp].value = "1"
* identifier[requestIdentifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[requestIdentifier].value = "1311234567-2020-00123456"

* intent = #order

* medicationCodeableConcept.coding[+] = $JP_MedicationCodeHOT9_CS#103831601 "カルボシステイン錠２５０ｍｇ「サワイ」・沢井製薬"

* medicationCodeableConcept.coding[+] = urn:oid:1.2.392.100495.20.1.73#2233002F1280 "カルボシステイン錠２５０ｍｇ「サワイ」"

//* medicationCodeableConcept.coding[+] = ARGlocalsystem#ARGcode "ARGname"

* medicationCodeableConcept.text = "カルボシステイン２５０ｍｇ錠"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* authoredOn = "2020-08-21T12:28:17+09:00"

//060on_処方薬剤メモ(ARGtext)
* dosageInstruction[+].text = "内服・経口・１日３回朝昼夕食後"

//080on_処方開始日(ARGdate)
* dosageInstruction[=].extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction[=].extension[=].valuePeriod.start = "2020-08-22"

//100or_処方補足用法(ARGusageauxcode,ARGusageauxname)
* dosageInstruction[=].timing.repeat.boundsDuration = 7 'd' "日"

* dosageInstruction[=].timing.code.coding[jami_yoho] = $JP_MedicationUsageJAMI_CS#1013044400000000 "内服 １日３回 朝昼夕食後"
* dosageInstruction[=].timing.code.coding[mhw_prescription_yoho] =  $JAMI_MedicationUsage_ePrescription_CS#1013044400000000 "１日３回朝昼夕食後　服用"
* dosageInstruction[=].timing.code.text = "内服・経口・１日３回朝昼夕食後"

//130on_処方用法部位(ARGsitecode,ARGsite)
* dosageInstruction[=].route = http://jpfhir.jp/fhir/core/CodeSystem/route-codes#PO "口"
* dosageInstruction[=].method = $JP_MedicationMethodJAMIBasicUsage_CS#1 "内服"

//150on_処方外用用法(ARGmethodcode,ARGmethodname)
* dosageInstruction[=].doseAndRate.type = $JP_MedicationIngredientStrengthStrengthType_CS#1 "製剤量"

* dosageInstruction[=].doseAndRate.doseQuantity = 1 $JP_MedicationUnitMERIT9_CS#TAB "錠"

* dosageInstruction[=].doseAndRate.rateRatio.numerator = 3 $JP_MedicationUnitMERIT9_CS#TAB "錠"
* dosageInstruction[=].doseAndRate.rateRatio.denominator = 1 'd' "日"

* dispenseRequest.quantity = 21 $JP_MedicationUnitMERIT9_CS#21code "21name"

* dispenseRequest.expectedSupplyDuration = 7 'd' "日"

//300on_処方後発変更可()
* substitution.allowedCodeableConcept = $JP_MedicationSubstitutionNotAllowedReason_CS#1 "後発品変更不可"
* substitution.reason.text = ""


