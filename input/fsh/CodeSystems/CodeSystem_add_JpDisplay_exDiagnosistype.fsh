CodeSystem: JP_ex_diagnosistyp_display
Id: jp-ex-diagnosistyp-display
Title: "Japanese supplement for CodeSystem ex-diagnosistype"
Description: "http://terminology.hl7.org/CodeSystem/ex-diagnosistypeに日本語displayを追加"
* ^url = "http://jpfhir.jp/core/terminology/CodeSystemJPDisplay/ex-diagnosistype"
* ^title = "http://terminology.hl7.org/CodeSystem/ex-diagnosistypeに日本語displayを追加"

* ^version = "1.4.0"
* ^status = #active
* ^content = #supplement
// * ^caseSensitive = true
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^supplements = "http://terminology.hl7.org/CodeSystem/ex-diagnosistype"

* ^concept.code = #principal
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "主診断"
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "主病名"

* ^concept.code = #admitting
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "入院時診断"

* ^concept.code = #clinical
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "臨床診断"

* ^concept.code = #differential
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "鑑別診断"

* ^concept.code = #discharge
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "退院時病名"
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "退院時診断"

* ^concept.code = #laboratory
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "検査診断"

* ^concept.code = #nursing
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "看護診断"

* ^concept.code = #prenatal
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "出生前診断"

* ^concept.code = #radiology
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "放射線画像診断"
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "画像診断"

* ^concept.code = #remote
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "遠隔診断"

* ^concept.code = #retrospective
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "振り返り診断"
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "考察診断"

* ^concept.code = #self
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "自己診断"
* ^concept.designation[+].language = #ja
* ^concept.designation[=].value = "患者診断"

