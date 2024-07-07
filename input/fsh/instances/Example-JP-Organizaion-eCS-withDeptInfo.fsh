Instance: Example-JP-Org-eCS-InstWithDepartment
InstanceOf: JP_Organization_eCS
Usage: #example

Description: "医療機関情報　診療科情報を拡張に含む　例"

// 002r_ValidationProfile(ARGmetaprofile)
//* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS"

* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS"

//
// 機関都道府県番号：2桁数字　北海道は01
/*

* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.21"
* extension[=].valueCoding.code = #13

// 点数表コード１桁「1：医科」、「3：歯科」
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.22"
* extension[=].valueCoding.code = #1

// 保険医療機関番号７桁
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo" (exactly)
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.23"
* extension[=].valueIdentifier.value = "9876543"
*/

// 診療科情報（循環器科）
* extension[+].url = $JP_eCS_Department (exactly)
* extension[=].valueCodeableConcept = $JP_Department_SsMix_CS#08 "循環器科"

//
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier[=].value = "1311234567"

* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #prov

* name = "みなと診療所"

//--------------------------------------------------------------------------------
Instance: Example-JP-Org-eCS-InstWithDepartment-Inline
InstanceOf: JP_Organization_eCS
Usage: #inline

Description: "医療機関情報　診療科情報を拡張に含む　例"

// 002r_ValidationProfile(ARGmetaprofile)
//* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS"

* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS"

//
// 機関都道府県番号：2桁数字　北海道は01
/*

* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.21"
* extension[=].valueCoding.code = #13

// 点数表コード１桁「1：医科」、「3：歯科」
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.22"
* extension[=].valueCoding.code = #1

// 保険医療機関番号７桁
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo" (exactly)
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.23"
* extension[=].valueIdentifier.value = "9876543"
*/

// 診療科情報（循環器科）
* extension[+].url = $JP_eCS_Department (exactly)
* extension[=].valueCodeableConcept = $JP_Department_SsMix_CS#08 "循環器科"

//
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier[=].value = "1311234567"

* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #prov

* name = "みなと診療所"
