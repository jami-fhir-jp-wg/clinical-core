CodeSystem: JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS
Id: jp-clins-codesystem-JLAC10-corelabo-cs
Title: "CLINS 電子カルテ共有サービス用:JLAC10検体検査項目セット"
Description: "CLINS 電子カルテ共有サービス用 JLAC10検体検査項目セット"
* ^url = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-11-01T00:00:00.000+09:00"
* ^version = "1.6.0"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^date = "2024-11-01"
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
  * #3A010000002399901  "TP"
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3A010000002299901  "TP"
    * ^designation.language = #ja
    * ^designation.value = "総蛋白(TP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3A015000002399901  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3A015000002299901  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3A015000001899901  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3B010000002399901  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B010000002299901  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B010000001999901  "CK"
    * ^designation.language = #ja
    * ^designation.value = "クレアチンキナーゼ(CK)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B035000002229001  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B035000002399901  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B035000002299901  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B035000001899901  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B035000001999901  "AST"
    * ^designation.language = #ja
    * ^designation.value = "AST(GOT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B045000002229001  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B045000002399901  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B045000002299901  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B045000001899901  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B045000001999901  "ALT"
    * ^designation.language = #ja
    * ^designation.value = "ALT(GPT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B050000002229001  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B050000002399901  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B050000002299901  "LD"
    * ^designation.language = #ja
    * ^designation.value = "LD(LDH)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
  * #3B070000002229001  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー･IFCC)"
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
  * #3B070000002399901  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B070000002299901  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B070000001999901  "ALP"
    * ^designation.language = #ja
    * ^designation.value = "アルカリホスファターゼ(ALP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #GGT
  * #3B090000002327701  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000002329101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002229101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002227701  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000002327101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B090000002227101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B090000001827701  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B090000001929101  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B090000002399901  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B090000002299901  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B090000001899901  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B090000001999901  "GGT"
    * ^designation.language = #ja
    * ^designation.value = "γ-GT(γ-GTP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3B110000002399901  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B110000002299901  "ChE"
    * ^designation.language = #ja
    * ^designation.value = "コリンエステラーゼ(ChE)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #AMY
  * #3B160000002327701  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000002329101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002229101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002327101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B160000002227701  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000002227101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3B160000001827701  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法(JSCC標準化対応法以外)"
  * #3B160000001929101  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3B160000002399901  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B160000002299901  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B160000001899901  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3B160000001999901  "AMY"
    * ^designation.language = #ja
    * ^designation.value = "アミラーゼ(AMY)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #Cre
  * #3C015000002329101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000002229101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000002327101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C015000002227101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C015000001829101  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C015000001826201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000001926201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002126201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002026201  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3C015000002399901  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C015000002299901  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C015000001899901  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C015000001999901  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C015000002199901  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C015000002099901  "Cre"
    * ^designation.language = #ja
    * ^designation.value = "血清クレアチニン(Cre)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3C016000002399901  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C016000002299901  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C016000002199901  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C016000001999901  "Cys-C"
    * ^designation.language = #ja
    * ^designation.value = "シスタチンC(Cys-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #UA
  * #3C020000002329101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002229101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002327101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C020000002227101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3C020000001929101  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3C020000002327201  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000002227201  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000001927201  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3C020000002399901  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C020000002299901  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C020000001999901  "UA"
    * ^designation.language = #ja
    * ^designation.value = "血清尿酸(UA)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3C025000002399901  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C025000002299901  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C025000001899901  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3C025000001999901  "BUN"
    * ^designation.language = #ja
    * ^designation.value = "尿素窒素(BUN)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #BG
  * #3D010000002327101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002227101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002127101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002229101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002329101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002227201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010000002327201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010000002326201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002226201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001827101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000001929101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002129101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000001829101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010000002126201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001826201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002026201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001926201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000002199101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010000001899101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010000003326201  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010000001927101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002027101  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010000002399901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010000002299901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010000002199901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010000001899901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010000001999901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010000002099901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010000003399901  "BG"
    * ^designation.language = #ja
    * ^designation.value = "血糖(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #FBG
  * #3D010130002327101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002227101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002127101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002229101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002329101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002227201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010130002327201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010130002326201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130002226201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001827101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130001929101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002129101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130001829101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010130002126201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001826201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130002026201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001926201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130002199101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010130001899101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010130003326201  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010130001927101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002027101  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010130002399901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010130002299901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010130002199901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010130001899901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010130001999901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010130002099901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010130003399901  "FBG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #CBG
  * #3D010129902327101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902227101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902127101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902229101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902329101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902227201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010129902327201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "紫外吸光光度法(UV法)"
  * #3D010129902326201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129902226201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901827101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129901929101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902129101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129901829101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3D010129902126201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901826201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129902026201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901926201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129902199101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010129901899101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自己測定(電流測定法)"
  * #3D010129903326201  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #3D010129901927101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902027101  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3D010129902399901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010129902299901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010129902199901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010129901899901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010129901999901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010129902099901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "動脈血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D010129903399901  "CBG"
    * ^designation.language = #ja
    * ^designation.value = "随時血糖"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血液ろ紙"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3D046000001920402  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "高速液体クラマトグラフィー(HPLC)"
  * #3D046000001999902  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D046000002199902  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3D046000001899902  "HbA1c-NGSP"
    * ^designation.language = #ja
    * ^designation.value = "HbA1c(NGSP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3F015000002399901  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015000002299901  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015000001999901  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015000002199901  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015000001899901  "TG"
    * ^designation.language = #ja
    * ^designation.value = "中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #FTG
  * #3F015130002327101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130002227101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130001927101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130002127101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130002329101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130002229101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130001827101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015130001829101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130002129101  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015130002399901  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015130002299901  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015130001999901  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015130002199901  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015130001899901  "FTG"
    * ^designation.language = #ja
    * ^designation.value = "空腹時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #CTG
  * #3F015129902327101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129902227101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129901927101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129902127101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129902329101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129902229101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129901827101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #3F015129901829101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129902129101  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #3F015129902399901  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015129902299901  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015129901999901  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015129902199901  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F015129901899901  "CTG"
    * ^designation.language = #ja
    * ^designation.value = "随時中性脂肪(TG)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3F050000002399901  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F050000002299901  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F050000001999901  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F050000002199901  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F050000001899901  "T-CHO"
    * ^designation.language = #ja
    * ^designation.value = "総コレステロール(T-CHO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3F070000002399901  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F070000002299901  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F070000001999901  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F070000002199901  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F070000001899901  "HDL-C"
    * ^designation.language = #ja
    * ^designation.value = "HDL-コレステロール(HDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3F077000002399901  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3F077000002299901  "LDL-C"
    * ^designation.language = #ja
    * ^designation.value = "LDL-コレステロール(LDL-C)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3H010000002399901  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H010000001999901  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H010000001899901  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H010000002199901  "Na"
    * ^designation.language = #ja
    * ^designation.value = "ナトリウム(Na)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3H015000002399901  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H015000001999901  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H015000001899901  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H015000002199901  "K"
    * ^designation.language = #ja
    * ^designation.value = "カリウム(K)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3H020000002399901  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H020000001999901  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H020000001899901  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H020000002199901  "Cl"
    * ^designation.language = #ja
    * ^designation.value = "クロール(Cl)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3H030000002399901  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3H030000002299901  "Ca"
    * ^designation.language = #ja
    * ^designation.value = "カルシウム(Ca)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3J010000002399901  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3J010000002299901  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3J010000001999901  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3J010000002199901  "T-Bil"
    * ^designation.language = #ja
    * ^designation.value = "総ビリルビン(T-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3J015000002399901  "D-Bil"
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3J015000002299901  "D-Bil"
    * ^designation.language = #ja
    * ^designation.value = "直接ビリルビン(D-Bil)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #WBC
  * #2A990000001930952  "WBC"
    * ^designation.language = #ja
    * ^designation.value = "白血球数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A990000001999952  "WBC"
    * ^designation.language = #ja
    * ^designation.value = "白血球数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #RBC
  * #2A990000001930951  "RBC"
    * ^designation.language = #ja
    * ^designation.value = "赤血球数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A990000001999951  "RBC"
    * ^designation.language = #ja
    * ^designation.value = "赤血球数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #Hb
  * #2A030000001930901  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A030000001927101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #2A030000001929101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #2A030000001827101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #2A030000001830901  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A030000001826201  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000001926201  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000002126201  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "電流測定"
  * #2A030000001829101  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #2A990000001930953  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A990000001999953  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2A030000001899901  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2A030000002199901  "Hb"
    * ^designation.language = #ja
    * ^designation.value = "血色素量(ヘモグロビン値)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #PLT
  * #2A050000001930901  "PLT"
    * ^designation.language = #ja
    * ^designation.value = "血小板数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A990000001930955  "PLT"
    * ^designation.language = #ja
    * ^designation.value = "血小板数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "自動機械法"
  * #2A990000001999955  "PLT"
    * ^designation.language = #ja
    * ^designation.value = "血小板数"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #2B020000002299901  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B020000001999901  "APTT"
    * ^designation.language = #ja
    * ^designation.value = "活性化部分トロンボプラスチン時間(APTT)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #PT-Sec
  * #2B030000002231151  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002231901  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粘稠&散乱光法"
  * #2B030000002231101  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000001831151  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002131151  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002299951  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B030000001899951  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B030000002199951  "PT-秒"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-秒)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #PT-Ratio
  * #2B030000002231155  "PT比"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002299955  "PT比"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #PT-Act
  * #2B030000002231153  "PT-活性%"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-活性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000001831153  "PT-活性%"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-活性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002299953  "PT-活性%"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-活性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B030000001899953  "PT-活性%"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-活性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #PT-INR
  * #2B030000002231157  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000001831157  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002131157  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "凝固時間測定"
  * #2B030000002299957  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B030000001899957  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B030000002199957  "PT-INR"
    * ^designation.language = #ja
    * ^designation.value = "プロトロンビン時間(PT-INR)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #DD
  * #2B140000002205201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
  * #2B140000001905201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
  * #2B140000002206201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #2B140000002306201  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #2B140000002202301  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #2B140000002302301  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #2B140000002304101  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002204101  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001904101  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001904301  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000001919001  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #2B140000002219001  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #2B140000002211701  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000001904401  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002204401  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #2B140000002299901  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B140000001999901  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B140000002399901  "DD"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #DD-class
  * #2B140000002211711  "DD-定性"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000002311711  "DD-定性"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "粒子凝集反応"
  * #2B140000002299911  "DD-定性"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #2B140000002399911  "DD-定性"
    * ^designation.language = #ja
    * ^designation.value = "Dダイマー(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #U-TP
  * #1A990000000191153  "U-TP"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190153  "U-TP"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000100053  "U-TP"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #U-TP-HalfQty
  * #1A990000000191171  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190171  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A015000000127101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000427101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "可視吸光光度法"
  * #1A015000000129101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000429101  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #1A015000000199901  "U-TP-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿蛋白(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #U-Glu
  * #1A990000000191154  "U-Glu"
    * ^designation.language = #ja
    * ^designation.value = "尿糖(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190154  "U-Glu"
    * ^designation.language = #ja
    * ^designation.value = "尿糖(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000199954  "U-Glu"
    * ^designation.language = #ja
    * ^designation.value = "尿糖(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #U-Glu-HalfQty
  * #1A990000000191172  "U-Glu-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿糖(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190172  "U-Glu-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿糖(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000199972  "U-Glu-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿糖(半定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #U-Bld
  * #1A990000000191159  "U-Bld"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190159  "U-Bld"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000199959  "U-Bld"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(定性)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #U-Bld-HalfQty
  * #1A990000000191177  "U-Bld-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、希釈倍率)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法(機械読み取り)"
  * #1A990000000190177  "U-Bld-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、希釈倍率)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学発色法"
  * #1A990000000199977  "U-Bld-半定量"
    * ^designation.language = #ja
    * ^designation.value = "尿潜血(半定量、希釈倍率)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #1A015000000199928  "U-P/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中蛋白/クレアチニン比(P/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
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
  * #3A015000000499951  "U-A/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中アルブミン/クレアチニン比(A/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "蓄尿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #3A015000000199951  "U-A/C"
    * ^designation.language = #ja
    * ^designation.value = "尿中アルブミン/クレアチニン比(A/C比)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "尿(含むその他)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #BNP
  * #4Z271000002205101  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLIA)"
  * #4Z271000002205201  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
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
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
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
  * #4Z271000002299901  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #4Z271000001999901  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #4Z271000001899901  "BNP"
    * ^designation.language = #ja
    * ^designation.value = "脳性Na利尿ペプチド(BNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #NT-proBNP
  * #4Z272000002305301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(ECLIA)"
  * #4Z272000002205301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(ECLIA)"
  * #4Z272000001919001  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z272000002305201  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002205201  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002302401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002202401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002302301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002202301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #4Z272000002219001  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #4Z272000002204301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000001904301  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002305101  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLIA)"
  * #4Z272000002205101  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLIA)"
  * #4Z272000001905201  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "化学･生物発光イムノアッセイ(CLEIA)"
  * #4Z272000002104401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000001904401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002204401  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #4Z272000002399901  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #4Z272000002299901  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #4Z272000001999901  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #4Z272000002199901  "NT-proBNP"
    * ^designation.language = #ja
    * ^designation.value = "ヒト脳性Na利尿ペプチド前駆体N端フラグメント(NT-proBNP)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #CRP
  * #5C070000002206401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #5C070000001906401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "金コロイド凝集法"
  * #5C070000002306201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002206201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000002329101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000002229101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000002306301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #5C070000002206301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比朧法(ネフェロメトリー)"
  * #5C070000002302301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002202301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002306101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002206101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002204301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001804301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001806201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001906201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001906101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000002106201  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "ラテックス凝集比濁法"
  * #5C070000001829101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
  * #5C070000001902301  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "エンザイムイムノアッセイ(EIA)"
  * #5C070000002304101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002204101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001904101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001806101  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "免疫比濁法(TIA)"
  * #5C070000001919001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002319001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002219001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000001819001  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002104401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000001904401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002204401  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "蛍光イムノアッセイ(FIA)"
  * #5C070000002299901  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血漿"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #5C070000001999901  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #5C070000002399901  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #5C070000001899901  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #5C070000002199901  "CRP"
    * ^designation.language = #ja
    * ^designation.value = "CRP(定量)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "毛細管血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #CRP-class
  * #5C070000001819012  "CRP-class"
    * ^designation.language = #ja
    * ^designation.value = "CRP(スコア)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "イムノクロマトグラフィ法"
  * #5C070000002307012  "CRP-class"
    * ^designation.language = #ja
    * ^designation.value = "CRP(スコア)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他のイムノアッセイ法"
  * #5C070000001899912  "CRP-class"
    * ^designation.language = #ja
    * ^designation.value = "CRP(スコア)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
  * #5C070000002399912  "CRP-class"
    * ^designation.language = #ja
    * ^designation.value = "CRP(スコア)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "その他"
* #BLD-ABO
  * #5H010000001910114  "血液型-ABO"
    * ^designation.language = #ja
    * ^designation.value = "血液型(ABO)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "赤血球凝集反応[定性]"
* #BLD-Rh
  * #5H020000001910114  "血液型-Rh"
    * ^designation.language = #ja
    * ^designation.value = "血液型(Rh)"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "全血(添加物入り)"
    * ^property[+].code = #method
    * ^property[=].valueString = "赤血球凝集反応[定性]"
