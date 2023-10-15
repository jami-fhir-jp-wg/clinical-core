Profile: JP_Patient_CLINS_eCS
Parent: JP_Patient
Id: JP-Patient-CLINS-eCS
Title: "JP_Patient_CLINS_eCS"
Description: "診療６情報・サマリー用（埋め込みリソース検証専用）　Patientリソース（患者情報）プロファイル"
* ^url = $JP_Patient_CLINS_eCS
* ^status = #active
* ^date = "2023-10-15"
* . ^short = "診療主要情報における患者情報の格納（埋め込みリソース検証用）に使用する"
* . ^definition = "診療主要情報・厚労省6情報などにおける患者情報の格納（埋め込みリソース検証用）に使用する"
* . ^comment = "３文書など診療サマリーに使用する、Contaiedでない場合には、別のプロファイル　JP_Patient_eCSが用意されている。本プロファイルは、患者を識別するidentifierとして、被保険者個人識別子を必須としており、それ以外は必須にしていない。"

/*
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11234567890"
* identifier[=].value = "000999739"
* identifier[+].system = "http:/jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_member"
* identifier[=].value = "00012345:あいう:１８７:05"
*/
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
    jpInsuranceMember 1..1 MS

* identifier[jpInsuranceMember] 1.. MS
* identifier[jpInsuranceMember].system 1..1
* identifier[jpInsuranceMember].system  ^short = "保険者・被保険者番号情報のためのsystem値(url)"
* identifier[jpInsuranceMember].system  ^definition = "保険者・被保険者番号情報のためのsystem値(url)"
* identifier[jpInsuranceMember].system = "http:/jpfhir.jp/fhir/clins/Idsysmem/JP_Insurance_member" (exactly)
* identifier[jpInsuranceMember].value 1..1
* identifier[jpInsuranceMember].value ^short = "被保険者個人識別子"
* identifier[jpInsuranceMember].value ^definition = "保険者・被保険者番号情報(被保険者個人識別子)"
* identifier[jpInsuranceMember].value ^comment = "被保険者個人識別子の仕様は「被保険者個人識別子」の文字列仕様を参照のこと。"

