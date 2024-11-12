CodeSystem: JP_v3ActCode_display
Id: jp-v3ActCod-display
Title: "Japanese supplement for CodeSystem v3-ActCode"
Description: "http://terminology.hl7.org/CodeSystem/v3-ActCodeに日本語displayを追加"
* ^url = "http://jpfhir.jp/core/terminology/CodeSystemJPDisplay/v3-ActCode"
* ^title = "http://terminology.hl7.org/CodeSystem/v3-ActCodeに日本語displayを追加"

* ^version = "1.4.0"
* ^status = #active
* ^content = #supplement
// * ^caseSensitive = true
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^supplements = "http://terminology.hl7.org/CodeSystem/v3-ActCode"

* ^concept[+].code = #AMB
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "外来"

* ^concept[+].code = #EMER
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "救急"

* ^concept[+].code = #FLD
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "現地"

* ^concept[+].code = #HH
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "在宅"

* ^concept[+].code = #IMP
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "入院"

* ^concept[+].code = #OBSENC
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "検査受診"

* ^concept[+].code = #PRENC
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "入院前受診"

* ^concept[+].code = #SS
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "ショートステイ"

* ^concept[+].code = #VR
* ^concept[=].designation[+].language = #ja
* ^concept[=].designation[=].value = "遠隔受診"