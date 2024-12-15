
RuleSet: core43LaboItemInstanceCodeUnit(laboItemFHIRcode,itemName,local,jlac,JLACkubun)
* note.text = "Observationリソース（検体検査結果）{laboItemFHIRcode}　{valueString}　{unitString}　ローカルコード={local}} 臨床検査項目基本コードJLAC={jlac} 検体：(埋込みリソース無し）　診療科：循環器診療科"
* meta.lastUpdated = "2024-12-15T14:11:13.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
//* meta.tag[lts] = $JP_ehrshrs_indication_CS#LTS "長期保存"
//* language = #ja
* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"
* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"
* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "1318814790-9990767-OBSLAB13883807672021070909210705-099"
// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB
// 検体材料　* contained[+] = Example-Contained-JP-Specimen-Serum
//* contained[+] = Example-Contained-JP-Specimen-Serum
// 検査オーダ医師
* contained[+] = Example-Contained-JP-Practitioner-minimun-D002
* status = #final
* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#{local} "{itemName}"
* code.coding[+] = $JP_CLINS_CodeSystem_{JLACkubun}_CoreLabo_CS#{jlac}  "{laboItemFHIRcode}"
* code.text = "itemName"
* subject.identifier.system = $JP_Insurance_memberID
* subject.identifier.value = "00012345:あいう:１８７:05"
* effectiveDateTime = "2024-12-14T14:11:13.000+09:00"
* encounter = Reference(Example-Contained-JP-Encounter-AMB)
* issued = "2024-12-15T14:11:13.000+09:00"
* performer[+] = Reference(Example-Contained-JP-Practitioner-minimun-D002)

RuleSet: laboItemValueStringWithUnit(specimen,valueNum,unitString,unitCode)
// valueString は引用なしの数値文字列
// unitStringは引用符なしの文字列
* valueQuantity.value = {valueNum}
* valueQuantity.unit = "{unitString}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{unitCode}`

//* interpretation.coding.version = "4.0.1"
//* interpretation.coding = $v3-ObservationInterpretation#null "範囲未定義、もしくは正常が適用されない"
//* interpretation.text = "範囲未定義、もしくは正常が適用されない"
//* specimen = Reference(Specimen/Example-Contained-JP-Specimen-Serum)
//* specimen.type = "Specimen"
* specimen.display = "{specimen}"
* specimen.type = "Specimen"

RuleSet: laboItemValueString(specimen,valueString)
// valueString は引用なしの文字列
* valueString = "{valueString}"
* specimen.display = "{specimen}"
* specimen.type = "Specimen"

RuleSet: laboItemValueCodeableConcept(specimen,system,code,display)
// valueString は引用なしの数値文字列
// unitStringは引用符なしの文字列
* valueCodeableConcept.coding.system = "{system}"
* valueCodeableConcept.coding.code = #{code}
* valueCodeableConcept.coding.display = "{display}"
* specimen.display = "{specimen}"
* specimen.type = "Specimen"