CodeSystem: JP_CLINS_CodeSystem_CoreLabo_CS
Id: jp-clins-codesystem-corelabo-cs
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
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_unitProperty"
* ^property[=].type = #string

* ^property[+].code = #method
* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_unitProperty"
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
  * #3A015000001827101  "ALB"  // アルブミン  可視吸光光度法  全血
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A015000002206301  "ALB"  // アルブミン  免疫比朧法(ネフェロメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3A015000002227101  "ALB"  // アルブミン  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "g/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A015000002229101  "ALB"  // アルブミン  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3A015000002306301  "ALB"  // アルブミン  免疫比朧法(ネフェロメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
    * ^property[=].valueString = "g/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3A015000002327101  "ALB"  // アルブミン  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "g/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A015000002329101  "ALB"  // アルブミン  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #ALP
  * #3B070000001929101  "ALP"  // アルカリホスファターゼ(ALP)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B070000002227101  "ALP"  // アルカリホスファターゼ(ALP)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B070000002227501  "ALP"  // アルカリホスファターゼ(ALP)  可視吸光光度法(IFCC対応法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(IFCC対応法)"
  * #3B070000002227701  "ALP"  // アルカリホスファターゼ(ALP)  可視吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B070000002229001  "ALP"  // アルカリホスファターゼ(ALP)  反射測光法(レフラクトメトリー・IFCC)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B070000002229101  "ALP"  // アルカリホスファターゼ(ALP)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B070000002327101  "ALP"  // アルカリホスファターゼ(ALP)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B070000002327501  "ALP"  // アルカリホスファターゼ(ALP)  可視吸光光度法(IFCC対応法)  血清
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(IFCC対応法)"
  * #3B070000002327701  "ALP"  // アルカリホスファターゼ(ALP)  可視吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B070000002329001  "ALP"  // アルカリホスファターゼ(ALP)  反射測光法(レフラクトメトリー・IFCC)  血清
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B070000002329101  "ALP"  // アルカリホスファターゼ(ALP)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #ALT
  * #3B045000001827701  "ALT"  // ALT(GPT)  可視吸光光度法(JSCC標準化対応法以外)  全血
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B045000001929101  "ALT"  // ALT(GPT)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B045000002227201  "ALT"  // ALT(GPT)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B045000002227701  "ALT"  // ALT(GPT)  可視吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002227801  "ALT"  // ALT(GPT)  紫外吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002227901  "ALT"  // ALT(GPT)  紫外吸光光度法(IFCC対応法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B045000002229001  "ALT"  // ALT(GPT)  反射測光法(レフラクトメトリー・IFCC)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B045000002229101  "ALT"  // ALT(GPT)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B045000002327201  "ALT"  // ALT(GPT)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B045000002327701  "ALT"  // ALT(GPT)  可視吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002327801  "ALT"  // ALT(GPT)  紫外吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B045000002327901  "ALT"  // ALT(GPT)  紫外吸光光度法(IFCC対応法)  血清
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B045000002329001  "ALT"  // ALT(GPT)  反射測光法(レフラクトメトリー・IFCC)  血清
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B045000002329101  "ALT"  // ALT(GPT)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #AMY
  * #3B160000001827701  "AMY"  // アミラ－ゼ(AMY)  可視吸光光度法(JSCC標準化対応法以外)  全血
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000001929101  "AMY"  // アミラ－ゼ(AMY)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002227101  "AMY"  // アミラ－ゼ(AMY)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B160000002227701  "AMY"  // アミラ－ゼ(AMY)  可視吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000002229101  "AMY"  // アミラ－ゼ(AMY)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002327101  "AMY"  // アミラ－ゼ(AMY)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B160000002327701  "AMY"  // アミラ－ゼ(AMY)  可視吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000002329101  "AMY"  // アミラ－ゼ(AMY)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "アミラ－ゼ(AMY)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #APTT
  * #2B020000001931901  "APTT"  // 活性化部分トロンボプラスチン時間(APTT)  粘稠&散乱光法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
  * #2B020000002231101  "APTT"  // 活性化部分トロンボプラスチン時間(APTT)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B020000002231152  "APTT"  // 活性化部分トロンボプラスチン時間(APTT)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B020000002231155  "APTT"  // 活性化部分トロンボプラスチン時間(APTT)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B020000002231901  "APTT"  // 活性化部分トロンボプラスチン時間(APTT)  粘稠&散乱光法  血漿
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
* #AST
  * #3B035000001827701  "AST"  // AST(GOT)  可視吸光光度法(JSCC標準化対応法以外)  全血
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B035000001929101  "AST"  // AST(GOT)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B035000002227201  "AST"  // AST(GOT)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B035000002227701  "AST"  // AST(GOT)  可視吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002227801  "AST"  // AST(GOT)  紫外吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002227901  "AST"  // AST(GOT)  紫外吸光光度法(IFCC対応法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B035000002229001  "AST"  // AST(GOT)  反射測光法(レフラクトメトリー・IFCC)  血漿
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B035000002229101  "AST"  // AST(GOT)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B035000002327201  "AST"  // AST(GOT)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B035000002327701  "AST"  // AST(GOT)  可視吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002327801  "AST"  // AST(GOT)  紫外吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B035000002327901  "AST"  // AST(GOT)  紫外吸光光度法(IFCC対応法)  血清
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B035000002329001  "AST"  // AST(GOT)  反射測光法(レフラクトメトリー・IFCC)  血清
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B035000002329101  "AST"  // AST(GOT)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #BG
  * #3D010000001826201  "BG"  // 血糖(定量)  電流測定  全血
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001827101  "BG"  // 血糖(定量)  可視吸光光度法  全血
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000001829101  "BG"  // 血糖(定量)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000001899101  "BG"  // 血糖(定量)  自己測定(電流測定法)  全血
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010000001926201  "BG"  // 血糖(定量)  電流測定  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001927101  "BG"  // 血糖(定量)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000001929101  "BG"  // 血糖(定量)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002026201  "BG"  // 血糖(定量)  電流測定  動脈血
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002027101  "BG"  // 血糖(定量)  可視吸光光度法  動脈血
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002126201  "BG"  // 血糖(定量)  電流測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002127101  "BG"  // 血糖(定量)  可視吸光光度法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002129101  "BG"  // 血糖(定量)  反射測光法(レフラクトメトリー)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002199101  "BG"  // 血糖(定量)  自己測定(電流測定法)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010000002226201  "BG"  // 血糖(定量)  電流測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002227101  "BG"  // 血糖(定量)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002227201  "BG"  // 血糖(定量)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010000002229101  "BG"  // 血糖(定量)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002326201  "BG"  // 血糖(定量)  電流測定  血清
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002327101  "BG"  // 血糖(定量)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002327201  "BG"  // 血糖(定量)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010000002329101  "BG"  // 血糖(定量)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000003326201  "BG"  // 血糖(定量)  電流測定  血液ろ紙
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
* #BNP
  * #4Z271000001819001  "BNP"  // 脳性Na利尿ペプチド(BNP)  イムノクロマトグラフィ法  全血
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z271000001905201  "BNP"  // 脳性Na利尿ペプチド(BNP)  化学・生物発光イムノアッセイ（ＣＬＥＩＡ）  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
  * #4Z271000001919001  "BNP"  // 脳性Na利尿ペプチド(BNP)  イムノクロマトグラフィ法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z271000002202301  "BNP"  // 脳性Na利尿ペプチド(BNP)  エンザイムイムノアッセイ(EIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z271000002205101  "BNP"  // 脳性Na利尿ペプチド(BNP)  化学・生物発光イムノアッセイ（ＣＬＩＡ）  血漿
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＩＡ）"
  * #4Z271000002205201  "BNP"  // 脳性Na利尿ペプチド(BNP)  化学・生物発光イムノアッセイ（ＣＬＥＩＡ）  血漿
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
  * #4Z271000002206201  "BNP"  // 脳性Na利尿ペプチド(BNP)  ラテックス凝集比濁法  血漿
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #4Z271000002219001  "BNP"  // 脳性Na利尿ペプチド(BNP)  イムノクロマトグラフィ法  血漿
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
* #BUN
  * #3C025000001826201  "BUN"  // 尿素窒素(BUN)  電流測定  全血
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C025000001827101  "BUN"  // 尿素窒素(BUN)  可視吸光光度法  全血
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C025000001829101  "BUN"  // 尿素窒素(BUN)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C025000001929101  "BUN"  // 尿素窒素(BUN)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C025000002226401  "BUN"  // 尿素窒素(BUN)  電導度測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電導度測定"
  * #3C025000002227101  "BUN"  // 尿素窒素(BUN)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C025000002227201  "BUN"  // 尿素窒素(BUN)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C025000002229101  "BUN"  // 尿素窒素(BUN)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C025000002326401  "BUN"  // 尿素窒素(BUN)  電導度測定  血清
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電導度測定"
  * #3C025000002327101  "BUN"  // 尿素窒素(BUN)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C025000002327201  "BUN"  // 尿素窒素(BUN)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C025000002329101  "BUN"  // 尿素窒素(BUN)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Ca
  * #3H030000002227101  "Ca"  // カルシウム(Ca)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mEq/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3H030000002227201  "Ca"  // カルシウム(Ca)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3H030000002229101  "Ca"  // カルシウム(Ca)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3H030000002327101  "Ca"  // カルシウム(Ca)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mEq/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3H030000002327201  "Ca"  // カルシウム(Ca)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3H030000002329101  "Ca"  // カルシウム(Ca)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #ChE
  * #3B110000002227101  "ChE"  // コリンエステラーゼ(ChE)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B110000002227201  "ChE"  // コリンエステラーゼ(ChE)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B110000002227701  "ChE"  // コリンエステラーゼ(ChE)  可視吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B110000002229101  "ChE"  // コリンエステラーゼ(ChE)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B110000002327101  "ChE"  // コリンエステラーゼ(ChE)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B110000002327201  "ChE"  // コリンエステラーゼ(ChE)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B110000002327701  "ChE"  // コリンエステラーゼ(ChE)  可視吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B110000002329101  "ChE"  // コリンエステラーゼ(ChE)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #CK
  * #3B010000001929101  "CK"  // クレアチンキナーゼ(CK)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B010000002227201  "CK"  // クレアチンキナーゼ(CK)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B010000002227801  "CK"  // クレアチンキナーゼ(CK)  紫外吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B010000002229101  "CK"  // クレアチンキナーゼ(CK)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B010000002327201  "CK"  // クレアチンキナーゼ(CK)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B010000002327801  "CK"  // クレアチンキナーゼ(CK)  紫外吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B010000002329101  "CK"  // クレアチンキナーゼ(CK)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Cl
  * #3H020000001826101  "Cl"  // クロール(Cl)  電位差測定  全血
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H020000001926101  "Cl"  // クロール(Cl)  電位差測定  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H020000002126101  "Cl"  // クロール(Cl)  電位差測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H020000002326101  "Cl"  // クロール(Cl)  電位差測定  血清
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
* #Cre
  * #3C015000001826201  "Cre"  // 血清クレアチニン(Cre)  電流測定  全血
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000001829101  "Cre"  // 血清クレアチニン(Cre)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000001926201  "Cre"  // 血清クレアチニン(Cre)  電流測定  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002026201  "Cre"  // 血清クレアチニン(Cre)  電流測定  動脈血
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002126201  "Cre"  // 血清クレアチニン(Cre)  電流測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002227101  "Cre"  // 血清クレアチニン(Cre)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "μmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C015000002229101  "Cre"  // 血清クレアチニン(Cre)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "μmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000002327101  "Cre"  // 血清クレアチニン(Cre)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "μmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C015000002329101  "Cre"  // 血清クレアチニン(Cre)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "μmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #CRP
  * #5C070000001804301  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  全血
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "ng/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001806101  "CRP"  // CRP(定量)  免疫比濁法(TIA)  全血
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000001806201  "CRP"  // CRP(定量)  ラテックス凝集比濁法  全血
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001819001  "CRP"  // CRP(定量)  イムノクロマトグラフィ法  全血
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000001819012  "CRP"  // CRP(定量)  イムノクロマトグラフィ法  全血
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000001829101  "CRP"  // CRP(定量)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000001902301  "CRP"  // CRP(定量)  エンザイムイムノアッセイ(EIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000001904101  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001904401  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001906101  "CRP"  // CRP(定量)  免疫比濁法(TIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000001906201  "CRP"  // CRP(定量)  ラテックス凝集比濁法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001906401  "CRP"  // CRP(定量)  金コロイド凝集法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #5C070000001919001  "CRP"  // CRP(定量)  イムノクロマトグラフィ法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002104401  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002106201  "CRP"  // CRP(定量)  ラテックス凝集比濁法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002202301  "CRP"  // CRP(定量)  エンザイムイムノアッセイ(EIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002204101  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002204301  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "ng/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002204401  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002206101  "CRP"  // CRP(定量)  免疫比濁法(TIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002206201  "CRP"  // CRP(定量)  ラテックス凝集比濁法  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002206301  "CRP"  // CRP(定量)  免疫比朧法(ネフェロメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #5C070000002206401  "CRP"  // CRP(定量)  金コロイド凝集法  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #5C070000002219001  "CRP"  // CRP(定量)  イムノクロマトグラフィ法  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002229101  "CRP"  // CRP(定量)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000002302301  "CRP"  // CRP(定量)  エンザイムイムノアッセイ(EIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002302401  "CRP"  // CRP(定量)  エンザイムイムノアッセイ(EIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002304101  "CRP"  // CRP(定量)  蛍光イムノアッセイ(FIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002306101  "CRP"  // CRP(定量)  免疫比濁法(TIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002306201  "CRP"  // CRP(定量)  ラテックス凝集比濁法  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002306301  "CRP"  // CRP(定量)  免疫比朧法(ネフェロメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #5C070000002307012  "CRP"  // CRP(定量)  その他のイムノアッセイ法  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "スコア"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他のイムノアッセイ法"
  * #5C070000002319001  "CRP"  // CRP(定量)  イムノクロマトグラフィ法  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002329101  "CRP"  // CRP(定量)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Cys-C
  * #3C016000001906201  "Cys-C"  // シスタチンC(Cys-C)  ラテックス凝集比濁法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002106201  "Cys-C"  // シスタチンC(Cys-C)  ラテックス凝集比濁法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002202301  "Cys-C"  // シスタチンC(Cys-C)  エンザイムイムノアッセイ(EIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #3C016000002206201  "Cys-C"  // シスタチンC(Cys-C)  ラテックス凝集比濁法  血漿
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002206301  "Cys-C"  // シスタチンC(Cys-C)  免疫比朧法(ネフェロメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3C016000002206401  "Cys-C"  // シスタチンC(Cys-C)  金コロイド凝集法  血漿
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #3C016000002302301  "Cys-C"  // シスタチンC(Cys-C)  エンザイムイムノアッセイ(EIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #3C016000002306201  "Cys-C"  // シスタチンC(Cys-C)  ラテックス凝集比濁法  血清
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3C016000002306301  "Cys-C"  // シスタチンC(Cys-C)  免疫比朧法(ネフェロメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #3C016000002306401  "Cys-C"  // シスタチンC(Cys-C)  金コロイド凝集法  血清
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
* #D-Bil
  * #3J015000002227101  "D-Bil"  // 直接ビリルビン(D-Bil)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J015000002229101  "D-Bil"  // 直接ビリルビン(D-Bil)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3J015000002327101  "D-Bil"  // 直接ビリルビン(D-Bil)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J015000002329101  "D-Bil"  // 直接ビリルビン(D-Bil)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #DD
  * #2B140000001904101  "DD"  // Dダイマー(定量)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001904301  "DD"  // Dダイマー(定量)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001904401  "DD"  // Dダイマー(定量)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001905201  "DD"  // Dダイマー(定量)  化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(ＣＬＥＩＡ)"
  * #2B140000001919001  "DD"  // Dダイマー(定量)  イムノクロマトグラフィ法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #2B140000002202301  "DD"  // Dダイマー(定量)  エンザイムイムノアッセイ(EIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #2B140000002204101  "DD"  // Dダイマー(定量)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002204401  "DD"  // Dダイマー(定量)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002205201  "DD"  // Dダイマー(定量)  化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(ＣＬＥＩＡ)"
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(ＣＬＥＩＡ)"
  * #2B140000002206201  "DD"  // Dダイマー(定量)  ラテックス凝集比濁法  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #2B140000002211701  "DD"  // Dダイマー(定量)  粒子凝集反応  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000002219001  "DD"  // Dダイマー(定量)  イムノクロマトグラフィ法  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
    * ^property[=].valueString = "ng/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #2B140000002302301  "DD"  // Dダイマー(定量)  エンザイムイムノアッセイ(EIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #2B140000002304101  "DD"  // Dダイマー(定量)  蛍光イムノアッセイ(FIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002306201  "DD"  // Dダイマー(定量)  ラテックス凝集比濁法  血清
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "μg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
* #FTG
  * #3F015000001827101  "FTG"  // 空腹時中性脂肪(TG)  可視吸光光度法  全血
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000001829101  "FTG"  // 空腹時中性脂肪(TG)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015000001927101  "FTG"  // 空腹時中性脂肪(TG)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002127101  "FTG"  // 空腹時中性脂肪(TG)  可視吸光光度法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002129101  "FTG"  // 空腹時中性脂肪(TG)  反射測光法(レフラクトメトリー)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015000002227101  "FTG"  // 空腹時中性脂肪(TG)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002229101  "FTG"  // 空腹時中性脂肪(TG)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015000002327101  "FTG"  // 空腹時中性脂肪(TG)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015000002329101  "FTG"  // 空腹時中性脂肪(TG)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #GGT
  * #3B090000001827701  "GGT"  // γ-GT(γ-GTP)  可視吸光光度法(JSCC標準化対応法以外)  全血
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000001929101  "GGT"  // γ-GT(γ-GTP)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002227101  "GGT"  // γ-GT(γ-GTP)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B090000002227701  "GGT"  // γ-GT(γ-GTP)  可視吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000002229101  "GGT"  // γ-GT(γ-GTP)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002327101  "GGT"  // γ-GT(γ-GTP)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B090000002327701  "GGT"  // γ-GT(γ-GTP)  可視吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000002329101  "GGT"  // γ-GT(γ-GTP)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #Hb
  * #2A030000001826201  "Hb"  // 血色素量(ヘモグロビン値)  電流測定  全血
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000001827101  "Hb"  // 血色素量(ヘモグロビン値)  可視吸光光度法  全血
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #2A030000001829101  "Hb"  // 血色素量(ヘモグロビン値)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #2A030000001830901  "Hb"  // 血色素量(ヘモグロビン値)  自動機械法  全血
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A030000001926201  "Hb"  // 血色素量(ヘモグロビン値)  電流測定  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000001927101  "Hb"  // 血色素量(ヘモグロビン値)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #2A030000001929101  "Hb"  // 血色素量(ヘモグロビン値)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #2A030000001930901  "Hb"  // 血色素量(ヘモグロビン値)  自動機械法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A030000002126201  "Hb"  // 血色素量(ヘモグロビン値)  電流測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A990000001930953  "Hb"  // 血色素量(ヘモグロビン値)  自動機械法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #HbA1c-NGSP
  * #3D046000001806202  "HbA1c-NGSP"  // HbA1c(NGSP)  ラテックス凝集比濁法  全血
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3D046000001819002  "HbA1c-NGSP"  // HbA1c(NGSP)  イムノクロマトグラフィ法  全血
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #3D046000001829101  "HbA1c-NGSP"  // HbA1c(NGSP)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001829102  "HbA1c-NGSP"  // HbA1c(NGSP)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001904401  "HbA1c-NGSP"  // HbA1c(NGSP)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000001904402  "HbA1c-NGSP"  // HbA1c(NGSP)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000001906101  "HbA1c-NGSP"  // HbA1c(NGSP)  免疫比濁法(TIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #3D046000001906102  "HbA1c-NGSP"  // HbA1c(NGSP)  免疫比濁法(TIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #3D046000001906202  "HbA1c-NGSP"  // HbA1c(NGSP)  ラテックス凝集比濁法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3D046000001920402  "HbA1c-NGSP"  // HbA1c(NGSP)  高速液体クラマトグラフィー(HPLC)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "高速液体クラマトグラフィー(HPLC)"
  * #3D046000001921002  "HbA1c-NGSP"  // HbA1c(NGSP)  その他のクラマトグラフィー  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他のクラマトグラフィー"
  * #3D046000001923702  "HbA1c-NGSP"  // HbA1c(NGSP)  キャピラリー電気泳動  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "キャピラリー電気泳動"
  * #3D046000001927101  "HbA1c-NGSP"  // HbA1c(NGSP)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D046000001927102  "HbA1c-NGSP"  // HbA1c(NGSP)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D046000001929101  "HbA1c-NGSP"  // HbA1c(NGSP)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000001929102  "HbA1c-NGSP"  // HbA1c(NGSP)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D046000002104401  "HbA1c-NGSP"  // HbA1c(NGSP)  蛍光イムノアッセイ(FIA)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/mol"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000002104402  "HbA1c-NGSP"  // HbA1c(NGSP)  蛍光イムノアッセイ(FIA)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #3D046000002106202  "HbA1c-NGSP"  // HbA1c(NGSP)  ラテックス凝集比濁法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #3D046000002119002  "HbA1c-NGSP"  // HbA1c(NGSP)  イムノクロマトグラフィ法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #3D046000002127102  "HbA1c-NGSP"  // HbA1c(NGSP)  可視吸光光度法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D046000002129102  "HbA1c-NGSP"  // HbA1c(NGSP)  反射測光法(レフラクトメトリー)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #HDL-C
  * #3F070000001829101  "HDL-C"  // HDL-コレステロール(HDL-C)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F070000001927101  "HDL-C"  // HDL-コレステロール(HDL-C)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002127101  "HDL-C"  // HDL-コレステロール(HDL-C)  可視吸光光度法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002129101  "HDL-C"  // HDL-コレステロール(HDL-C)  反射測光法(レフラクトメトリー)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F070000002227101  "HDL-C"  // HDL-コレステロール(HDL-C)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002229101  "HDL-C"  // HDL-コレステロール(HDL-C)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F070000002327101  "HDL-C"  // HDL-コレステロール(HDL-C)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F070000002327201  "HDL-C"  // HDL-コレステロール(HDL-C)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F070000002329101  "HDL-C"  // HDL-コレステロール(HDL-C)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #K
  * #3H015000001826101  "K"  // カリウム(K)  電位差測定  全血
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000001926101  "K"  // カリウム(K)  電位差測定  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000002126101  "K"  // カリウム(K)  電位差測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000002326101  "K"  // カリウム(K)  電位差測定  血清
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H015000002327201  "K"  // カリウム(K)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3H015000002329101  "K"  // カリウム(K)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #LD
  * #3B050000002227201  "LD"  // LD(LDH)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B050000002227801  "LD"  // LD(LDH)  紫外吸光光度法(JSCC標準化対応法以外)  血漿
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B050000002227901  "LD"  // LD(LDH)  紫外吸光光度法(IFCC対応法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B050000002229001  "LD"  // LD(LDH)  反射測光法(レフラクトメトリー・IFCC)  血漿
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B050000002229101  "LD"  // LD(LDH)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B050000002327201  "LD"  // LD(LDH)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3B050000002327801  "LD"  // LD(LDH)  紫外吸光光度法(JSCC標準化対応法以外)  血清
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(JSCC標準化対応法以外)"
  * #3B050000002327901  "LD"  // LD(LDH)  紫外吸光光度法(IFCC対応法)  血清
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(IFCC対応法)"
  * #3B050000002329001  "LD"  // LD(LDH)  反射測光法(レフラクトメトリー・IFCC)  血清
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー・IFCC)"
  * #3B050000002329101  "LD"  // LD(LDH)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "U/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #LDL-C
  * #3F077000002227101  "LDL-C"  // LDL-コレステロール(LDL-C)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F077000002227201  "LDL-C"  // LDL-コレステロール(LDL-C)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F077000002291901  "LDL-C"  // LDL-コレステロール(LDL-C)  計算法  血漿
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "計算法"
  * #3F077000002327101  "LDL-C"  // LDL-コレステロール(LDL-C)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F077000002327201  "LDL-C"  // LDL-コレステロール(LDL-C)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F077000002391901  "LDL-C"  // LDL-コレステロール(LDL-C)  計算法  血清
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "計算法"
* #Na
  * #3H010000001826101  "Na"  // ナトリウム(Na)  電位差測定  全血
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000001926101  "Na"  // ナトリウム(Na)  電位差測定  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000002126101  "Na"  // ナトリウム(Na)  電位差測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000002326101  "Na"  // ナトリウム(Na)  電位差測定  血清
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電位差測定"
  * #3H010000002327101  "Na"  // ナトリウム(Na)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
* #NT-proBNP
  * #4Z272000001904301  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "ng/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000001904401  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  蛍光イムノアッセイ(FIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000001905201  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ(CLEIA)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(CLEIA)"
  * #4Z272000001919001  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  イムノクロマトグラフィ法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z272000002104401  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  蛍光イムノアッセイ(FIA)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002202301  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  エンザイムイムノアッセイ(EIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002202401  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  エンザイムイムノアッセイ(EIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002204301  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "ng/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002204401  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  蛍光イムノアッセイ(FIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002205101  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ（ＣＬＩＡ）  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＩＡ）"
  * #4Z272000002205201  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ（ＣＬＥＩＡ）  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
    * ^property[=].valueString = "pmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
  * #4Z272000002205201  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ(CLEIA)  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002205301  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ（ＥＣＬＩＡ）  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＥＣＬＩＡ）"
  * #4Z272000002219001  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  イムノクロマトグラフィ法  血漿
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z272000002302301  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  エンザイムイムノアッセイ(EIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002302401  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  エンザイムイムノアッセイ(EIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002305101  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ（ＣＬＩＡ）  血清
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＩＡ）"
  * #4Z272000002305201  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ（ＣＬＥＩＡ）  血清
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
    * ^property[=].valueString = "pmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＣＬＥＩＡ）"
  * #4Z272000002305201  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ(CLEIA)  血清
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002305301  "NT-proBNP"  // ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)  化学・生物発光イムノアッセイ（ＥＣＬＩＡ）  血清
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "pg/mL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学・生物発光イムノアッセイ（ＥＣＬＩＡ）"
* #PLT
  * #2A990000001930955  "PLT"  // 血小板数  自動機械法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血小板数"
    * ^property[0].code = #unit
    * ^property[=].valueString = "X10*3/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
    * ^property[=].valueString = "X10*4/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
    * ^property[=].valueString = "X10*6/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A050000001930901  "PLT"  // 血小板数  自動機械法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血小板数"
    * ^property[0].code = #unit
    * ^property[=].valueString = "X10*9/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #PT-INR
  * #2B030000001831157  "PT-INR"  // プロトロンビン時間(PT-INR)  凝固時間測定  全血
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "INR"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002131157  "PT-INR"  // プロトロンビン時間(PT-INR)  凝固時間測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "INR"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231157  "PT-INR"  // プロトロンビン時間(PT-INR)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "INR"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #RBC
  * #2A990000001930951  "RBC"  // 赤血球数  自動機械法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "赤血球数"
    * ^property[0].code = #unit
    * ^property[=].valueString = "X10*4/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
    * ^property[=].valueString = "X10*6/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #T-Bil
  * #3J010000001927101  "T-Bil"  // 総ビリルビン(T-Bil)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000002127101  "T-Bil"  // 総ビリルビン(T-Bil)  可視吸光光度法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000002227101  "T-Bil"  // 総ビリルビン(T-Bil)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000002229101  "T-Bil"  // 総ビリルビン(T-Bil)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3J010000002327101  "T-Bil"  // 総ビリルビン(T-Bil)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3J010000002329101  "T-Bil"  // 総ビリルビン(T-Bil)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #T-CHO
  * #3F050000001827101  "T-CHO"  // 総コレステロール(T-CHO)  可視吸光光度法  全血
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000001829101  "T-CHO"  // 総コレステロール(T-CHO)  反射測光法(レフラクトメトリー)  全血
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000001927101  "T-CHO"  // 総コレステロール(T-CHO)  可視吸光光度法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000001929101  "T-CHO"  // 総コレステロール(T-CHO)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000002127101  "T-CHO"  // 総コレステロール(T-CHO)  可視吸光光度法  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000002129101  "T-CHO"  // 総コレステロール(T-CHO)  反射測光法(レフラクトメトリー)  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000002227101  "T-CHO"  // 総コレステロール(T-CHO)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000002227201  "T-CHO"  // 総コレステロール(T-CHO)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F050000002229101  "T-CHO"  // 総コレステロール(T-CHO)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F050000002327101  "T-CHO"  // 総コレステロール(T-CHO)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mmol/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F050000002327201  "T-CHO"  // 総コレステロール(T-CHO)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3F050000002329101  "T-CHO"  // 総コレステロール(T-CHO)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #TP
  * #3A010000002227101  "TP"  // 総蛋白(TP)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "g/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A010000002229101  "TP"  // 総蛋白(TP)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3A010000002327101  "TP"  // 総蛋白(TP)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "g/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3A010000002329101  "TP"  // 総蛋白(TP)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #U-A/C
  * #3A015000000106128  "U-A/C"  // 尿中アルブミン/クレアチニン比(A/C比)  免疫比濁法(TIA)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中アルブミン/クレアチニン比(A/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
* #U-P/C
  * #1A990000000190183  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "g/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191183  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "g/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A015000000127101  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  可視吸光光度法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/L"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000127128  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  可視吸光光度法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000129101  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  反射測光法(レフラクトメトリー)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000129128  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  反射測光法(レフラクトメトリー)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000129201  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  比濁法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "比濁法"
  * #1A015000000129228  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  比濁法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "g/g･Cr"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "比濁法"
  * #1A015000000427101  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  可視吸光光度法  蓄尿
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000427126  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  可視吸光光度法  蓄尿
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/d"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000429101  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  反射測光法(レフラクトメトリー)  蓄尿
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000429126  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  反射測光法(レフラクトメトリー)  蓄尿
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/d"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000429201  "U-P/C"  // 尿中蛋白/クレアチニン比(P/C比)  比濁法  蓄尿
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/d"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "比濁法"
* #UA
  * #3C020000001927201  "UA"  // 血清尿酸(UA)  紫外吸光光度法(UV法)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000001929101  "UA"  // 血清尿酸(UA)  反射測光法(レフラクトメトリー)  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002227101  "UA"  // 血清尿酸(UA)  可視吸光光度法  血漿
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C020000002227201  "UA"  // 血清尿酸(UA)  紫外吸光光度法(UV法)  血漿
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000002229101  "UA"  // 血清尿酸(UA)  反射測光法(レフラクトメトリー)  血漿
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002327101  "UA"  // 血清尿酸(UA)  可視吸光光度法  血清
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C020000002327201  "UA"  // 血清尿酸(UA)  紫外吸光光度法(UV法)  血清
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000002329101  "UA"  // 血清尿酸(UA)  反射測光法(レフラクトメトリー)  血清
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
* #WBC
  * #2A990000001930952  "WBC"  // 白血球数  自動機械法  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "白血球数"
    * ^property[0].code = #unit
    * ^property[=].valueString = "X10*3/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
    * ^property[=].valueString = "X10*2/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
* #DD-class
  * #2B140000002211711  "DD-判定"  // Dダイマー(判定)  粒子凝集反応  血漿
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000002311711  "DD-判定"  // Dダイマー(判定)  粒子凝集反応  血清
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
* #PT-Act
  * #2B030000001831153  "PT-活性%"  // プロトロンビン時間(PT-活性)  凝固時間測定  全血
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-活性)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231153  "PT-活性%"  // プロトロンビン時間(PT-活性)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-活性)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "%"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #PT-Sec
  * #2B030000001831151  "PT-秒"  // プロトロンビン時間(PT-秒)  凝固時間測定  全血
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002131151  "PT-秒"  // プロトロンビン時間(PT-秒)  凝固時間測定  毛細血管
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細血管"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231101  "PT-秒"  // プロトロンビン時間(PT-秒)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231151  "PT-秒"  // プロトロンビン時間(PT-秒)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231901  "PT-秒"  // プロトロンビン時間(PT-秒)  粘稠&散乱光法  血漿
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "s"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
* #PT-Ratio
  * #2B030000002231155  "PT比"  // プロトロンビン時間(PT比)  凝固時間測定  血漿
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT比)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "比"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
* #U-Bld-HalfQty
  * #1A990000000190177  "U-Bid-半定量"  // 尿潜血(半定量、希釈倍率)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、希釈倍率)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191177  "U-Bid-半定量"  // 尿潜血(半定量、希釈倍率)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、希釈倍率)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "/μL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
* #U-Bld-QLHalfQty
  * #1A990000000190159  "U-Bid-半定量"  // 尿潜血(半定量、判定)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191159  "U-Bid-半定量"  // 尿潜血(半定量、判定)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
* #U-Glu-HalfQty
  * #1A990000000190172  "U-Glu-半定量"  // 尿糖(半定量)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿糖(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191172  "U-Glu-半定量"  // 尿糖(半定量)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿糖(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
* #U-Glu-QLHalfQty
  * #1A990000000190154  "U-Glu-半定量"  // 尿糖(半定量、判定)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿糖(半定量、判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
* #U-TP-QLHalfQty
  * #1A990000000190171  "U-TP-半定量"  // 尿蛋⽩(半定量、判定)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量、判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191171  "U-TP-半定量"  // 尿蛋⽩(半定量、判定)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量、判定)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "mg/dL"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
    * ^property[=].valueString = "クラス"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
* #U-TP-HalfQty
  * #1A990000000190153  "U-TP-半定量"  // 尿蛋⽩(半定量)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000190171  "U-TP-半定量"  // 尿蛋⽩(半定量)  化学発色法  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000191153  "U-TP-半定量"  // 尿蛋⽩(半定量)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000191154  "U-TP-半定量"  // 尿蛋⽩(半定量)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000191171  "U-TP-半定量"  // 尿蛋⽩(半定量)  化学発色法(機械読み取り)  尿(含むその他)
    * ^designation.language = #ja
    * ^designation.value = "尿蛋⽩(半定量)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "定性･判定"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
* #BLD-ABO
  * #5H010000001910114  "⾎液型-ABO"  // 血液型(ABO)  赤血球凝集反応[定性]  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血液型(ABO)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "型"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "赤血球凝集反応[定性]"
* #BLD-Rh
  * #5H020000001910114  "⾎液型-Rh"  // 血液型(Rh)  赤血球凝集反応[定性]  全血(静脈血、添加物入り)
    * ^designation.language = #ja
    * ^designation.value = "血液型(Rh)"
    * ^property[0].code = #unit
    * ^property[=].valueString = "型"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(静脈血、添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "赤血球凝集反応[定性]"
    