//　全ての指定感染症コード
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11
Id: jp-clins-valueset-infectionlaboJLAC11-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #CORE-INFECTIONS

// HBs抗原(コントロール比)
/*
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsagcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11  HBs抗原(コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11  HBs抗原(コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGCOI_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AG-COI
*/
// HBs抗原(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsagdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗原(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗原(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGDIL_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AG-DIL

// HBs抗原(吸光度)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HbsAGOD_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsagod-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11  HBs抗原(吸光度)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11  HBs抗原(吸光度)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HbsAGOD_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AG-OD

// HBs抗原(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsagresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗原(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗原(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AG-RESULT

// HBs抗原(定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsagquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗原(定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗原(定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AG-QUANT

// HBs抗原(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsagposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗原(陽性コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗原(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsAGPOSCOI_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AG-POS-COI

// HBs抗体(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsABDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsabdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗体(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗体(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsABDIL_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AB-DIL


// HBs抗体(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsabresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗体(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗体(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsABRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AB-RESULT

// HBs抗体(定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsABQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hbsabquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HBs抗体(定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HBs抗体(定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HBsABQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HBs-AB-QUANT

// HCV核酸増幅検査(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVNRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvnresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV核酸増幅検査(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11HCV核酸増幅検査(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVNRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-NRESULT


// HCV核酸増幅検査(定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVNQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvnquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV核酸増幅検査(定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV核酸増幅検査(定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVNQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-NQUANT


// HCV抗原検査(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvagresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗原検査(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗原検査(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AG-RESULT

// HCV抗原検査(定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvagquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗原検査(定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗原検査(定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AG-QUANT


// HCV抗体(コントロール比)
/*
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvabcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗体(コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗体(コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABCOI_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AB-COI
*/
// HCV抗体(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvabdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗体(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗体(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABDIL_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AB-DIL

// HCV抗体(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvabresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11  HCV抗体(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11  HCV抗体(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AB-RESULT

// HCV抗体(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvabposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗体(陽性コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗体(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVABPOSCOI_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AB-POS-COI

//---for 2025.12
// HCV抗原・抗体同時(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvagabresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗原・抗体同時(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗原・抗体同時(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGABRESULT_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AGAB-RESULT

//---for 2025.12
// HCV抗原・抗体同時(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGABPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hcvagabposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HCV抗原・抗体同時(陽性コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HCV抗原・抗体同時(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HCVAGABPOSCOI_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HCV-AGAB-POS-COI

// HIV-1(ウイルスRNA定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1QUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1quant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1(ウイルスRNA定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1(ウイルスRNA定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1QUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1-QUANT

// HIV-1(ウイルスRNA定量判定)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1RESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1result-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1(ウイルスRNA定量判定)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1(ウイルスRNA定量判定)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1RESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1-RESULT



//-- for 2025.12
// HIV-1p24抗原(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p24agresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1p24抗原(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1p24抗原(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGRESULT_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P24AG-RESULT

//-- for 2025.12
// HIV-1p24抗原(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p24agposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1p24抗原(陽性コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1p24抗原(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGPOSCOI_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P24AG-POS-COI

//-- for 2025.12
// HIV-1+2抗原・抗体同時(吸光度)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGABOD_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p24agabod-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1+2抗原・抗体同時(吸光度)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1+2抗原・抗体同時(吸光度)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGABOD_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P24AGAB-OD

//-- for 2025.12
// HIV-1+2抗原・抗体同時(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p24agabresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1+2抗原・抗体同時(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1+2抗原・抗体同時(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGABRESULT_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P24AGAB-RESULT

//-- for 2025.12
// HIV-1+2抗原・抗体同時(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGABPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p24agabposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1+2抗原・抗体同時(陽性コントロール比))"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1+2抗原・抗体同時(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P24AGABPOSCOI_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P24AGAB-POS-COI


// HIV-1+2抗体(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P2ABDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p2abdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1+2抗体(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1+2抗体(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P2ABDIL_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P2-AB-DIL

// HIV-1+2抗体(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P2ABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p2abresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1+2抗体(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1+2抗体(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P2ABRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P2-AB-RESULT

// HIV-1+2抗体(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P2ABPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1p2abposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1+2抗体(陽性コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1+2抗体(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1P2ABPOSCOI_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1P2-AB-POS-COI

// HIV-1抗体(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1ABDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1abdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1抗体(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1抗体(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1ABDIL_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1-AB-DIL

// HIV-1抗体(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1ABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv1abresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-1抗体(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-1抗体(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV1ABRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-1-AB-RESULT

// HIV-2抗体(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV2ABDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv2abdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 HIV-2抗体(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 HIV-2抗体(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV2ABDIL_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-2-AB-DIL

// HIV-2抗体(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV2ABRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-hiv2abresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11  HIV-2抗体(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11  HIV-2抗体(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_HIV2ABRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #HIV-2-AB-RESULT

// 梅毒STS(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_STSQLRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-stsqlresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒STS(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒STS(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_STSQLRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #STS-QLRESULT

// 梅毒STS(定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_STSQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-stsquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒STS(定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒STS(定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_STSQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #STS-QUANT

//-- for 2025.12
// 梅毒STS(希釈倍率)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_STSDIL_VS
Id: jp-clins-valueset-infectionlaboJLAC11-stsdil-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒STS(希釈倍率)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒STS(希釈倍率)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2025-08-15T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_STSDIL_VS
* ^version = "1.2.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-08-15"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #STS-DIL

// 梅毒TP抗体(定性)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_TPRESULT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-tpresult-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒TP抗体(定性)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒TP抗体(定性)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_TPRESULT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #TP-RESULT

// 梅毒TP抗体(陽性コントロール比)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_TPPOSCOI_VS
Id: jp-clins-valueset-infectionlaboJLAC11-tpposcoi-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒TP抗体(陽性コントロール比)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒TP抗体(陽性コントロール比)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_TPPOSCOI_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #TP-POS-COI

// 梅毒TP抗体(定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_TPQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-tpquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒TP抗体(定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒TP抗体(定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_TPQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #TP-QUANT

// 梅毒TP抗体(半定量)
ValueSet: JP_CLINS_ValueSet_InfectionLaboJLAC11_TPHQUANT_VS
Id: jp-clins-valueset-infectionlaboJLAC11-tphquant-vs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セットJLAC11 梅毒TP抗体(半定量)"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セットJLAC11 梅毒TP抗体(半定量)"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_InfectionLaboJLAC11_TPHQUANT_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_InfectionLabo_CS where concept descendant-of #TP-HQUANT



