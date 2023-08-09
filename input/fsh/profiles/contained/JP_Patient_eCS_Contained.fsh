//-------------------------------
//--- Profile for conatained resource within other resources
//-------------------------------
Profile: JP_Patient_eCS_Contained
Parent: JP_Patient_eCS
Id: JP-Patient-eCS-Contained
Title: "JP_Patient_eCS_Contained"
Description: "診療主要6情報への埋め込み用 Patientリソース(患者情報)プロファイル　"
* ^url = $JP_Patient_eCS_Contained
* ^status = #active
* ^date = "2023-03-31"
* insert toplevel_short_definition("診療主要情報における患者情報の格納に使用する\(他のリソースに埋め込まれる（contained要素）専用\)")
* . ^comment = "他のリソースに埋め込まれる（contained要素）患者情報のためには、別のプロファイルが用意されている。"

* id 1..1

* implicitRules ..0
* text ..0
* contained ..0
* extension[religion] ..0
* extension[birthPlace] ..0
* extension[race] ..0
* modifierExtension ..0
* identifier 1.. 
* identifier.id ..0
* identifier.extension ..0
* identifier.use ..0
* identifier.type ..0
* identifier.period ..0
* identifier.assigner ..0
* active ..0
* telecom ..0
* address ..0
* maritalStatus ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* managingOrganization ..0
* link ..0
