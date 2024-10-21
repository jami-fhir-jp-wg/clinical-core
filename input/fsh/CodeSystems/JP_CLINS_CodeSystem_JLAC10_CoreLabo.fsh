CodeSystem: JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS
Id: jp-clins-codesystem-JLAC10-corelabo-cs
Title: "CLINS 電子カルテ共有サービス用:検体検査項目セット"
Description: "CLINS 電子カルテ共有サービス用 検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-10-08T00:45:56.836+09:00"
* ^url = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS
* ^version = "1.5.0"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^hierarchyMeaning = #is-a

* ^property[+].code = #unit
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_unitProperty"
* ^property[=].type = #string

* ^property[+].code = #specimen
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_specimenProperty"
* ^property[=].type = #string

* ^property[+].code = #method
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_methodProperty"
* ^property[=].type = #string

* ^property[+].code = #fullNumberOfDigits
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_ndigitsProperty"
* ^property[=].type = #integer

* ^property[+].code = #numberOfDecimalDigits
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_ddigitsProperty"
* ^property[=].type = #integer

* ^property[+].code = #oidOfValueSet
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_oidVSProperty"
* ^property[=].type = #string

* #ALB
  * #3A015000002329101  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3A015000002229101  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3A015000002327101  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A015000002227101  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A015000002306301  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3A015000002206301  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3A015000001827101  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #ALP
  * #3B070000002327101  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B070000002329101  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B070000002229101  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B070000002327701  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B070000002227701  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B070000002227101  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B070000001929101  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B070000002329001  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B070000002229001  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B070000002327501  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(IFCC対応法)"
  * #3B070000002227501  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(IFCC対応法)"
* #ALT
  * #3B045000002327201  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B045000002329101  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B045000002229101  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B045000002327801  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002227801  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002227201  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B045000002327701  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002227701  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B045000001827701  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B045000001929101  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B045000002327901  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B045000002227901  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B045000002329001  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B045000002229001  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
* #AMY
  * #3B160000002327701  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000002329101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002229101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002327101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B160000002227701  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000002227101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B160000001827701  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000001929101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #APTT
  * #2B020000002231101  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B020000002231901  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
  * #2B020000001931901  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
  * #2B020000002231151  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B020000002231155  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B020000002231152  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #AST
  * #3B035000002327201  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B035000002329101  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B035000002229101  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B035000002327801  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002227801  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002227201  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B035000002327701  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002227701  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B035000001827701  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B035000001929101  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B035000002327901  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B035000002227901  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B035000002329001  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B035000002229001  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
* #BG
  * #3D010000002327101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002227101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002127101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002229101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002329101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002227201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010000002327201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010000002326201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002226201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001827101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000001929101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002129101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000001829101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002126201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001826201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002026201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001926201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002199101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010000001899101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010000003326201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001927101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002027101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #BLD-ABO
  * #5H010000001910114  "⾎液型-ABO"
    * ^designation.language = #ja
    * ^designation.value = "⾎液型-ABO"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "赤血球凝集反応[定性]"
* #BLD-Rh
  * #5H020000001910114  "⾎液型-Rh"
    * ^designation.language = #ja
    * ^designation.value = "⾎液型-Rh"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "赤血球凝集反応[定性]"
* #BNP
  * #4Z271000002205101  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＩＡ）"
  * #4Z271000002205201  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
  * #4Z271000002202301  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z271000001905201  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
  * #4Z271000001919001  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z271000002219001  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z271000002206201  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #4Z271000001819001  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
* #BS
  * #3D010129902327101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902227101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902127101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902229101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902329101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902227201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010129902327201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010129902326201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129902226201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901827101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129901929101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902129101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129901829101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902126201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901826201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129902026201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901926201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129902199101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010129901899101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010129903326201  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901927101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902027101  "BS"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #BUN
  * #3C025000002329101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C025000002229101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C025000002327201  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C025000002227201  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C025000001827101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C025000002327101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C025000002227101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C025000002326401  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電導度測定"
  * #3C025000002226401  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電導度測定"
  * #3C025000001929101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C025000001826201  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C025000001829101  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Ca
  * #3H030000002327101  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3H030000002329101  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3H030000002229101  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3H030000002227101  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3H030000002327201  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3H030000002227201  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
* #CBG
  * #3D010130002327101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002227101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002127101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002229101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002329101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002227201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010130002327201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010130002326201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130002226201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001827101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130001929101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002129101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130001829101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002126201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001826201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130002026201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001926201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130002199101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010130001899101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010130003326201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001927101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002027101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "グルコース(血糖)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #ChE
  * #3B110000002329101  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B110000002229101  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B110000002327701  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B110000002227701  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B110000002327201  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B110000002227201  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B110000002327101  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B110000002227101  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #CK
  * #3B010000002327201  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B010000002227201  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B010000002329101  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B010000002229101  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B010000002327801  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B010000002227801  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B010000001929101  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Cl
  * #3H020000002326101  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H020000001926101  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H020000001826101  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H020000002126101  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
* #Cre
  * #3C015000002329101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000002229101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000002327101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C015000002227101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C015000001829101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000001826201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000001926201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002126201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002026201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
* #CRP
  * #5C070000002206401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #5C070000001906401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #5C070000002306201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002206201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002329101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000002229101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000002306301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #5C070000002206301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #5C070000002302301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002202301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002306101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002206101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002204301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001804301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001806201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001906201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001906101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002106201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001829101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000001902301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002304101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002204101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001904101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001806101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000001919001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002319001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002219001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000001819001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002104401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001904401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002204401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
* #CRP-class
  * #5C070000001819012  "CRP-class"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002307012  "CRP-class"
    * ^designation.language = #ja
    * ^designation.value = "Ｃ反応性蛋白(CRP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他のイムノアッセイ法"
* #CTG
  * #3F015129902327101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129902227101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129901927101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129902127101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129902329101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129902229101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129901827101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129901829101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129902129101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Cys-C
  * #3C016000002306201  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002206201  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002106201  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000001906201  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002306401  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #3C016000002206401  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #3C016000002306301  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3C016000002206301  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3C016000002302301  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #3C016000002202301  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
* #D-Bil
  * #3J015000002327101  "D-Bil"
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J015000002329101  "D-Bil"
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3J015000002229101  "D-Bil"
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3J015000002227101  "D-Bil"
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #DD
  * #2B140000002205201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(ＣＬＥＩＡ)"
  * #2B140000001905201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(ＣＬＥＩＡ)"
  * #2B140000002206201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #2B140000002306201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #2B140000002202301  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #2B140000002302301  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #2B140000002304101  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002204101  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001904101  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001904301  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001919001  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #2B140000002219001  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #2B140000002211701  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000001904401  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002204401  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
* #DD-class
  * #2B140000002211711  "DD-定性"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000002311711  "DD-定性"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(DD)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
* #FTG
  * #3F015130002327101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130002227101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130001927101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130002127101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130002329101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130002229101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130001827101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130001829101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130002129101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #GGT
  * #3B090000002327701  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000002329101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002229101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002227701  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000002327101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B090000002227101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B090000001827701  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000001929101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GTP(GGT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Hb
  * #2A030000001930901  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A030000001927101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #2A030000001929101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #2A030000001827101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #2A030000001830901  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A030000001826201  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000001926201  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000002126201  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000001829101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #2A990000001930953  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血算-ヘモグロビン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #HbA1c-NGSP
  * #3D046000001921002  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他のクラマトグラフィー"
  * #3D046000001906102  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #3D046000001906202  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3D046000001927102  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D046000001923702  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "キャピラリー電気泳動"
  * #3D046000002129102  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001929102  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001806202  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3D046000002106202  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3D046000001906101  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #3D046000001927101  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D046000002119002  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #3D046000001819002  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #3D046000002127102  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D046000001829102  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001829101  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001929101  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000002104402  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000001904402  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000002104401  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000001904401  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000001920402  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "高速液体クラマトグラフィー(HPLC)"
* #HDL-C
  * #3F070000002327101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002227101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000001927101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002127101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002329101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F070000002229101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F070000002327201  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F070000002129101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F070000001829101  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #K
  * #3H015000002327201  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3H015000002329101  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3H015000002326101  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000001926101  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000001826101  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000002126101  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
* #LD
  * #3B050000002327201  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B050000002329101  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B050000002229101  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B050000002327801  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B050000002227801  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B050000002227201  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B050000002327901  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B050000002227901  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B050000002329001  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B050000002229001  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
* #LDL-C
  * #3F077000002327101  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F077000002227101  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F077000002327201  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F077000002227201  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F077000002391901  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "計算法"
  * #3F077000002291901  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "計算法"
* #Na
  * #3H010000002327101  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3H010000002326101  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000001926101  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000001826101  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000002126101  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
* #NT-proBNP
  * #4Z272000002305301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＥＣＬＩＡ）"
  * #4Z272000002205301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＥＣＬＩＡ）"
  * #4Z272000001919001  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z272000002305201  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002205201  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002302401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002202401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002302301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002202301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002219001  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z272000002204301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000001904301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002305101  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＩＡ）"
  * #4Z272000002205101  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＩＡ）"
  * #4Z272000001905201  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002104401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000001904401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002204401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
* #PLT
  * #2A050000001930901  "PLT"
    * ^designation.language = #ja
    * ^designation.value = "血算-血小板数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A990000001930955  "PLT"
    * ^designation.language = #ja
    * ^designation.value = "血算-血小板数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #PT-Act
  * #2B030000002231153  "PT-活性%"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000001831153  "PT-活性%"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #PT-INR
  * #2B030000002231157  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000001831157  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002131157  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #PT-Ratio
  * #2B030000002231155  "PT比"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #PT-Sec
  * #2B030000002231151  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231901  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
  * #2B030000002231101  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000001831151  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002131151  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #RBC
  * #2A990000001930951  "RBC"
    * ^designation.language = #ja
    * ^designation.value = "血算-赤血球数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #T-Bil
  * #3J010000002327101  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000002329101  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3J010000002229101  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3J010000002227101  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000001927101  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000002127101  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #T-CHO
  * #3F050000002327101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000002227101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000001927101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000002127101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000002329101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000002229101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000002327201  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F050000002227201  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F050000001827101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000001929101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000002129101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000001829101  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #TG
  * #3F015000002327101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002227101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000001927101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002127101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002329101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015000002229101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015000001827101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000001829101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015000002129101  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #TP
  * #3A010000002329101  "TP"
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3A010000002229101  "TP"
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3A010000002327101  "TP"
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A010000002227101  "TP"
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #U-A/C
  * #3A015000000106151  "U-A/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中アルブミン/クレアチニン比(A/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #3A015000000406151  "U-A/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中アルブミン/クレアチニン比(A/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #3A015000000106251  "U-A/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中アルブミン/クレアチニン比(A/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
* #U-Bld
  * #1A990000000191159  "U-Bld"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190159  "U-Bld"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
* #U-Bld-HalfQty
  * #1A990000000191177  "U-Bld-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190177  "U-Bld-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
* #U-Glu
  * #1A990000000191154  "U-Glu"
    * ^designation.language = #ja
    * ^designation.value = "尿糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190154  "U-Glu"
    * ^designation.language = #ja
    * ^designation.value = "尿糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
* #U-Glu-HalfQty
  * #1A990000000191172  "U-Glu-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190172  "U-Glu-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
* #U-P/C
  * #1A990000000190183  "U-P/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191183  "U-P/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A015000000127128  "U-P/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000129128  "U-P/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #U-TP
  * #1A990000000191153  "U-TP"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190153  "U-TP"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
* #U-TP-HalfQty
  * #1A990000000191171  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190171  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A015000000127101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000427101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000427126  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000129101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000429101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000429126  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #UA
  * #3C020000002329101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002229101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002327101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C020000002227101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C020000001929101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002327201  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000002227201  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000001927201  "UA"
    * ^designation.language = #ja
    * ^designation.value = "尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
* #WBC
  * #2A990000001930952  "WBC"
    * ^designation.language = #ja
    * ^designation.value = "血算-白血球数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
    