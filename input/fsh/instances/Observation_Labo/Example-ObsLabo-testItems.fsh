Instance: Example-JP-Obs-LabResult-eCS-JLAC10-BG
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）BG 血糖(定量)　3D010000002327101　102 mg/dL"
* insert core43LaboItemInstanceCodeUnit(BG,血糖(定量\),90010,3D010000002327101)
* insert laboItemValueStringWithUnit(102,mg/dL,mg/dL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC11-BG
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）BG 血糖(定量) C4001000025000185 102 mg/dL"
* insert core43LaboItemInstanceCodeUnit(BG,血糖(定量\),90010,C4001000025000185)
* insert laboItemValueStringWithUnit(102,mg/dL,mg/dL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC10-FBG
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）FBG 空腹時血糖　3D010130002327101　88 mg/dL"
* insert core43LaboItemInstanceCodeUnit(FG,空腹時血糖,90020,3D010130002327101)
* insert laboItemValueStringWithUnit(88,mg/dL,mg/dL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC11-FBG
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）FBG 空腹時血糖 C4001133725000185 88 mg/dL"
* insert core43LaboItemInstanceCodeUnit(FBG,空腹時血糖,90020,C4001133725000185)
* insert laboItemValueStringWithUnit(88,mg/dL,mg/dL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC10-CBG
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）CBG 随時血糖　3D010129902327101　112 mg/dL"
* insert core43LaboItemInstanceCodeUnit(CBG,随時血糖,90030,3D010129902327101)
* insert laboItemValueStringWithUnit(112,mg/dL,mg/dL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC11-CBG
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）CBG 随時血糖　C4001133625000185　112 mg/dL"
* insert core43LaboItemInstanceCodeUnit(CBG,随時血糖,90030,C4001133625000185)
* insert laboItemValueStringWithUnit(122,mg/dL,mg/dL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC10-DD
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）Dダイマー(定量)　2B140000002205201　112 μg/mL"
* insert core43LaboItemInstanceCodeUnit(DD,Dダイマー(定量\),90040,2B140000002205201)
* insert laboItemValueStringWithUnit(112,μg/mL,μg/mL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC11-DD
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）Dダイマー(定量)　B20190000240001H6　112 μg/mL"
* insert core43LaboItemInstanceCodeUnit(DD,Dダイマー(定量\),90040,B20190000240001H6)
* insert laboItemValueStringWithUnit(122,μg/mL,ug/mL)

Instance: Example-JP-Obs-LabResult-eCS-JLAC10-DD-class
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）Dダイマー(定性)　2B140000002205201　1:陽性"
* insert core43LaboItemInstanceCodeUnit(DD-定性,Dダイマー(定量\),90050,2B140000002205201)
* insert laboItemValueCodeableConcept(http://jpfhir.jp/fhir/LaboResult/CodeSystem/JP_PosNegHold_CS,1,陽性)

Instance: Example-JP-Obs-LabResult-eCS-JLAC11-DD-class
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）Dダイマー(定性)　B20190000240001H6　1:陽性"
* insert core43LaboItemInstanceCodeUnit(DD-定性,Dダイマー(定量\),90050,B20190000240001H6)
* insert laboItemValueCodeableConcept(http://jpfhir.jp/fhir/LaboResult/CodeSystem/JP_PosNegHold_CS,1,陽性)

Instance: Example-JP-Obs-LabResult-eCS-JLAC10-PTAct
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）プロトロンビン時間(PT-活性)　2B030000002231153　98%"
* insert core43LaboItemInstanceCodeUnit(PT-活性%,プロトロンビン時間(PT-活性\),90060,2B030000002231153)
* insert laboItemValueCodeableConcept(98,%,%)

Instance: Example-JP-Obs-LabResult-eCS-JLAC11-PTAct
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）プロトロンビン時間(PT-活性)　B2006000324000112　98%"
* insert core43LaboItemInstanceCodeUnit(PT-活性%,プロトロンビン時間(PT-活性\),90060,B2006000324000112)
* insert laboItemValueCodeableConcept(98,%,%)

