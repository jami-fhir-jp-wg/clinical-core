Extension: JP_CLINS_BundleCategory
Id: jp-clins-bundlecategory
Title: "JP CLINS BundleCategory Extension"
Description: "６情報のバンドルカテゴリを表現するための拡張"
* ^url = $JP_CLINS_BundleCategory
// http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_CLINS_BundleCategory
* ^status = #active
* ^date = "2023-10-09"
* ^purpose = "6情報等のBundleのリソースカテゴリを明示するため。AllergyIntolerance, Condition, MedicationRequest, Observationのいずれかを明示する。"
* ^context[+].type = #element
* ^context[=].expression = "Bundle"
* url = $JP_CLINS_BundleCategory (exactly)
* value[x] only code
* value[x] ^short = "6情報等のBundleのリソースカテゴリを設定する。AllergyIntolerance, Condition, MedicationRequest, Observationのいずれかを設定する。"
* value[x] ^definition = "6情報等のBundleのリソースカテゴリを設定する。AllergyIntolerance, Condition, MedicationRequest, Observationのいずれかを設定する。"
* valueCode from $JP_CLINS_BundleCategory_VS 
