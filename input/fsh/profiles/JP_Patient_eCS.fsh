Profile: JP_Patient_eCS
Parent: JP_Patient
Id: JP-Patient-eCS
Title: "JP_Patient_eCS"
Description: "診療主要情報用　Patientリソース（患者情報）プロファイル"
* ^url = $JP_Patient_eCS
* ^status = #active
* ^date = "2023-10-15"
* . ^short = "診療主要情報における患者情報の格納に使用する"
* . ^definition = "診療主要情報・厚労省6情報などにおける患者情報の格納に使用する"
* . ^comment = "他のリソースに埋め込まれる（contained要素）患者情報の検証用には、別のプロファイル　JP_Patient_CLINS_eCS　が用意されている。"

* meta.lastUpdated 0.. MS
* meta.lastUpdated ^short = "最終更新日"
* meta.lastUpdated ^definition = "この患者情報の内容がサーバ上で最後に格納または更新された日時、またはこのFHIRリソースが生成された日時"
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

* name 1.. MS
* name ^short =  "漢字またはカナの名前情報"
* name ^definition =  "漢字またはカナの名前情報。extension.url='http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation' の拡張のvalueCode = IDE:漢字名前、SYL:カナ名前　で区別される"

* name.text 1..1  MS // 名前　半角空白で姓と名を区切る
* name.family 1..1  MS // 姓
* name.given 1..1  MS // 名

* gender  MS
* birthDate 1.. MS
* address 0..1 MS
* address ^definition = "An address for the individual.\r\n患者の住所。必須。"
* address.text 1.. MS
* address.postalCode 1.. MS
* address.country 0.. 

