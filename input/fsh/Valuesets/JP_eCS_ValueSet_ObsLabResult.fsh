// eCS 検体検査結果で使用することが可能な ValueSet
ValueSet: JP_eCS_ObservationLabResultCode_VS
Id: jp-ecs-observationlabresultcode-vs
Title: "eCS Observation Lab Result Code Value Set"
Description: "eCS 検体検査結果で使用することが可能な ValueSet"
* ^url = $JP_eCS_ObservationLabResultCode_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_CoreLabo_CS    //共有項目JLACコード
* include codes from system $JP_CLINS_CodeSystem_InfectionLabo_CS   //感染症検査項目コード
* include codes from system $JP_ObservationLabResultCode_CS // JLAC10
* $JP_CLINS_ObsLabResultUncoded_CS#99999999999999999  "未標準化コード項目(JLAC)" // 未コード化検体検査結果項目コード 17桁
