// Organizaionリース
// JP_Organizaion
// JP_Organization_eCS_issuer
// 0E1mr_機関都道府県番号(ARGcode)
// 0E2mr_機関区分(ARGcode)
// 0E3mr_機関保険医療機関番号(ARGcode)
// 000mn_ExampleJPOrganization_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganization_eCS() 
// 
// 010mn_機関医療機関番号(ARGorgno)
// 040mn_機関名(ARGorgname)
// 040or_機関電話番号(ARG)
// 080or_機関住所(ARGpostal,ARGtext)
// Organizaionリース
// JP_Organizaion
// JP_Organization_eCS_departmentOfIssuer
// 000mn_ExampleJPOrganizationDept_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganizationDept_eCS() 
// 
// 030mn_診療科コード名称(ARGcodesystem, ARGdeptcode)
// 040mn_診療科名称(ARGorgname)
// 040or_診療科所属医療機関参照(ARGrefresource)
// Practitionerリース
// JP_Practitioner
// JP_Practitioner_eCS_author
// 000mn_ExampleJPPractitioner_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile) 
// 002or_ValidationProfile_JPPractitioner_eCS() 
// 030mn_医療者漢字氏名(ARGfirstname,ARGgivenname)
// 030on_医療者カナ氏名(ARGfirstnamekana,ARGgivennamekana)

Instance: Example-JP-Org-eCS-ReferralTo01
InstanceOf: JP_Organization_eCS
Usage: #example

Description: "Organizationリソース　（診療情報提供書　紹介先　医療機関情報情報）"

// 002or_ValidationProfile(ARGmetaprofile)

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS"
* language = #ja

 
// 
//--------------
// 機関都道府県番号：2桁数字　北海道は01
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo" (exactly)
* extension[=].valueCoding.system = $JP_PrefectureNumber_CS
* extension[=].valueCoding.code = #13

// 点数表コード１桁「1：医科」、「3：歯科」
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory" (exactly)
* extension[=].valueCoding.system = $JP_MedicalFeeScoreType_CS 
* extension[=].valueCoding.code = #1

// 保険医療機関番号７桁
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo" (exactly)
* extension[=].valueIdentifier.system = $JP_IdSystemMedicalOrganizationID
* extension[=].valueIdentifier.value = "1234567"

// 診療科情報（循環器内科）
* extension[+].url = $JP_eCS_Department (exactly)
* extension[=].valueCodeableConcept = $JP_Department_SsMix_CS#081 "循環器内科"

//
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier[=].value = "1311234567"
* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #prov

* name = "東京第一テスト病院"

* telecom[+].system = #phone
* telecom[=].value = "03-1234-5678"

* address[+].text = "東京都文京区文京町１−２−３"
* address[=].postalCode = "113-0001"
* address[=].country = "JP"

//--------------
/*
Instance: referralToOrganizationDeptExample01
InstanceOf: JP_Organization_eCS_department
Usage: #example

Description: "Organizationリソース　（診療情報提供書　紹介先　診療科情報）"

//002or_ValidationProfile(ARGmetaprofile)
* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS_department"
 
// 
* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #dept
//
* type[+].coding.system = $JAMI_MedicationRequestDepartment_CS
* type[=].coding.code = #03

* name = "循環器内科"

* partOf.reference = "Organization/Example-JP-Org-eCS-ReferralTo01"
*/
//--------------
Instance: Example-JP-Practitioner-eCS-ReferralTo01
InstanceOf: JP_Practitioner_eCS
Usage: #example

Description: "Practitionerリソース　（診療情報提供書　紹介先　医師情報）"

// 002or_ValidationProfile(ARGmetaprofile) 
* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS"
* language = #ja

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "野口 英世丸"
* name[=].family = "野口"
* name[=].given = "英世丸"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "ノグチ ヒデヨマル"
* name[=].family = "ノグチ"
* name[=].given = "ヒデヨマル"

//--------------

//--------------
Instance: Example-JP-Practitioner-eCS-ReferralTo02
InstanceOf: JP_Practitioner_eCS
Usage: #example

Description: "Practitionerリソース　（診療情報提供書　紹介先　医師情報）氏名テキストのみ。"

// 002or_ValidationProfile(ARGmetaprofile) 
* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS"
* language = #ja

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "野口 英世丸"

//--------------
