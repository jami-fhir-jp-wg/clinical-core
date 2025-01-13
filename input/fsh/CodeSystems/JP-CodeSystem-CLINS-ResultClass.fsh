CodeSystem: JP_CLINS_CodeSystem_ResultClass_PosNegHold_CS
Id: jp-clins-codesystem-resultclass-posneghold-cs
Title: "JP_CLINS 判定定性検査結果コード表"
Description: "JP_CLINS 判定定性検査結果　1:陽性、2:陰性、3:判定保留 コードは半角、コード表示名は全角文字"
* ^url = $JP_LaboResult_PosNegHold_CS // "http://jpfhir.jp/fhir/LaboResult/CodeSystem/JP_PosNegHold_CS"
* ^title = "JP_CLINS 判定定性検査結果コード表 1：陽性、2：陰性"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^content = #complete
* ^caseSensitive = false
* ^date = "2024-12-16T00:00:00+09:00"
* ^contact.name = "Kazuhiko Ohe, The Univerisity of Tokyo"

* #1 "陽性"
* #2 "陰性"
* #3 "判定保留" // 使わない検査もある


CodeSystem: JP_CLINS_CodeSystem_ResultClass_UrineCode_CS
Id: jp-clins-codesystem-resultclass-urincode-cs
Title: "JP_CLINS 尿関係の定性検査結果コード表"
Description: "JP_CLINS 尿関係の定性検査結果　1：－、2：±、3：＋、4：２＋、5：３＋、6：４＋、7：５＋ コードは半角、コード表示名は全角文字"
* ^url = $JP_LaboResult_Urine_Code_CS　//"http://jpfhir.jp/fhir/LaboResult/CodeSystem/JP_Urine_Code_CS"
* ^title = "JP_CLINS 尿関係の定性検査結果コード表 1：－、2：±、3：＋、4：2＋、5：3＋、6：4＋、7：5＋"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^content = #complete
* ^caseSensitive = false
* ^date = "2024-12-16T00:00:00+09:00"
* ^contact.name = "Kazuhiko Ohe, The Univerisity of Tokyo"
* #1 "－"
  * ^designation[+].language = #ja
  * ^designation[=].value = "-"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(-)"
* #2 "±"
  * ^designation[+].language = #ja
  * ^designation[=].value = "+-"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(+-)"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(±)"
* #3 "＋"
  * ^designation[+].language = #ja
  * ^designation[=].value = "+"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(+)"
* #4 "２＋"
  * ^designation[+].language = #ja
  * ^designation[=].value = "2+"
  * ^designation[+].language = #ja
  * ^designation[=].value = "++"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(++)"
* #5 "３＋"
  * ^designation[+].language = #ja
  * ^designation[=].value = "3+"
  * ^designation[+].language = #ja
  * ^designation[=].value = "+++"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(+++)"
* #6 "４＋"
  * ^designation[+].language = #ja
  * ^designation[=].value = "4+"
  * ^designation[+].language = #ja
  * ^designation[=].value = "++++"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(++++)"
* #7 "５＋"
  * ^designation[+].language = #ja
  * ^designation[=].value = "5+"
  * ^designation[+].language = #ja
  * ^designation[=].value = "+++++"
  * ^designation[+].language = #ja
  * ^designation[=].value = "(+++++)"

CodeSystem: JP_CLINS_CodeSystem_ResultClass_BldABO_CS
Id: jp-clins-codesystem-resultclass-bldABO-cs
Title: "JP_CLINS ABO血液型の検査結果コード表"
Description: "JP_CLINS ABO血液型の検査結果コード表　1：A、2：B、3：AB、4：O コードは半角、コード表示名は全角文字または半角文字"
* ^url = "http://jpfhir.jp/fhir/LaboResult/CodeSystem/JP_BldABO_CS"
* ^title = "JP_CLINS ABO血液型の検査結果コード表 1：A、2：B、3：AB、4：O"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^content = #complete
* ^caseSensitive = false
* ^date = "2024-12-16T00:00:00+09:00"
* ^contact.name = "Kazuhiko Ohe, The Univerisity of Tokyo"
* #1 "Ａ"
  * ^designation[+].language = #ja
  * ^designation[=].value = "A"
* #2 "Ｂ"
  * ^designation[+].language = #ja
  * ^designation[=].value = "B"
* #3 "ＡＢ"
  * ^designation[+].language = #ja
  * ^designation[=].value = "AB"
* #4 "Ｏ"
  * ^designation[+].language = #ja
  * ^designation[=].value = "O"

CodeSystem: JP_CLINS_CodeSystem_ResultClass_BldRh_CS
Id: jp-clins-codesystem-resultclass-bldRh-cs
Title: "JP_CLINS Rh血液型の検査結果コード表"
Description: "JP_CLINS Rh血液型の検査結果コード表　1：＋、2：－ コードは半角、コード表示名は全角文字または半角文字"
* ^url = "http://jpfhir.jp/fhir/LaboResult/CodeSystem/JP_BldRh_CS"
* ^title = "JP_CLINS Rh血液型の検査結果コード表1：＋、2：－"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^content = #complete
* ^caseSensitive = false
* ^date = "2024-12-16T00:00:00+09:00"
* ^contact.name = "Kazuhiko Ohe, The Univerisity of Tokyo"
* #1 "＋"
  * ^designation[+].language = #ja
  * ^designation[=].value = "+"
* #2 "－"
  * ^designation[+].language = #ja
  * ^designation[=].value = "-"