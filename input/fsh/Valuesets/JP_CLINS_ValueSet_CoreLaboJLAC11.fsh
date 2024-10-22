// ⾎液型-ABO^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_abo_bld_VS
Id: jp-clins-valueset-corelaboJLAC11-abo-bld-vs
Title: "CLINS: ABO-BLD ValueSet"
Description: "CLINS 電子カルテ共有サービス用 血液型(ABO) JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_abo_bld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"

* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #BLD-ABO


/*
* $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS#5H010000001910111  "ABO-BLD"  // 血液型(ABO)(カラム凝集法)  (空白)  全血
* $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS#5H010000001910114  "ABO-BLD"  // 赤血球凝集反応[定性]  (空白)  全血
* $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS#5H010000001999911  "ABO-BLD"  // その他  (空白)  全血
*/

// ⾎液型-Rh^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_rh_bld_VS
Id: jp-clins-valueset-corelaboJLAC11-rh-bld-vs
Title: "CLINS: Rh-BLD ValueSet"
Description: "CLINS 電子カルテ共有サービス用 血液型(Rh) JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_rh_bld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #BLD-Rh



// アルブミン^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_alb_VS
Id: jp-clins-valueset-corelaboJLAC11-alb-vs
Title: "CLINS: ALB ValueSet"
Description: "CLINS 電子カルテ共有サービス用 アルブミン JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_alb_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #ALB

// アルカリホスファターゼ(ALP)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_alp_VS
Id: jp-clins-valueset-corelaboJLAC11-alp-vs
Title: "CLINS: ALP ValueSet"
Description: "CLINS 電子カルテ共有サービス用 アルカリホスファターゼ JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_alp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #ALP

// ALT(GPT)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_alt_VS
Id: jp-clins-valueset-corelaboJLAC11-alt-vs
Title: "CLINS: ALT ValueSet"
Description: "CLINS 電子カルテ共有サービス用 ALT(GPT) JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_alt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #ALT


ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_amy_VS
Id: jp-clins-valueset-corelaboJLAC11-amy-vs
Title: "CLINS: AMY ValueSet"
Description: "CLINS 電子カルテ共有サービス用 アミラ－ゼ JLAC11 ValueSet"

// アミラ－ゼ(AMY)^^
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_amy_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #AMY


ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_aptt_VS
Id: jp-clins-valueset-corelaboJLAC11-aptt-vs
Title: "CLINS: APTT ValueSet"
Description: "CLINS 電子カルテ共有サービス用 活性化部分トロンボプラスチン時間 JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_aptt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #APTT


ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ast_VS
Id: jp-clins-valueset-corelaboJLAC11-ast-vs
Title: "CLINS: AST ValueSet"
Description: "CLINS 電子カルテ共有サービス用 AST(GOT) JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ast_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #AST

// ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_nt_probnp_VS
Id: jp-clins-valueset-corelaboJLAC11-nt-probnp-vs
Title: "CLINS: NT-proBNP ValueSet"
Description: "CLINS 電子カルテ共有サービス用 ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_nt_probnp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #NT-proBNP

// グルコース(血糖)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_bs_VS
Id: jp-clins-valueset-corelaboJLAC11-bs-vs
Title: "CLINS: BS ValueSet"
Description: "CLINS 電子カルテ共有サービス用 グルコース(血糖) JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_bs_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #BS

// 尿素窒素(BUN)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_bun_VS
Id: jp-clins-valueset-corelaboJLAC11-bun-vs
Title: "CLINS: BUN ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿素窒素(BUN) JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_bun_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #BUN

// カルシウム(Ca)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ca_VS
Id: jp-clins-valueset-corelaboJLAC11-ca-vs
Title: "CLINS: Ca ValueSet"
Description: "CLINS 電子カルテ共有サービス用 カルシウム JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ca_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #Ca

// カリウム(K)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_k_VS
Id: jp-clins-valueset-corelaboJLAC11-k-vs
Title: "CLINS: K ValueSet"
Description: "CLINS 電子カルテ共有サービス用 カリウム JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_k_VS 
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2022-09-26"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #K

// コリンエステラーゼ(ChE)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_che_VS
Id: jp-clins-valueset-corelaboJLAC11-che-vs
Title: "CLINS: ChE ValueSet"
Description: "CLINS 電子カルテ共有サービス用 コリンエステラーゼ JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_che_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #ChE

// クレアチンキナーゼ(CK)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ck_VS
Id: jp-clins-valueset-corelaboJLAC11-ck-vs
Title: "CLINS: CK ValueSet"
Description: "CLINS 電子カルテ共有サービス用 クレアチンキナーゼ JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ck_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #CK

// クロール(Cl)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_cl_VS
Id: jp-clins-valueset-corelaboJLAC11-cl-vs
Title: "CLINS: Cl ValueSet"
Description: "CLINS 電子カルテ共有サービス用 クロール JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_cl_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #Cl

// クレアチニン(Cre)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_cre_VS
Id: jp-clins-valueset-corelaboJLAC11-cre-vs
Title: "CLINS: Cre ValueSet"
Description: "CLINS 電子カルテ共有サービス用 クレアチニン JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_cre_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #Cre

// Ｃ反応性蛋白(CRP)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_crp_VS
Id: jp-clins-valueset-corelaboJLAC11-crp-vs
Title: "CLINS: CRP ValueSet"
Description: "CLINS 電子カルテ共有サービス用 Ｃ反応性蛋白 JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_crp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #CRP


ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_crp_class_VS
Id: jp-clins-valueset-corelaboJLAC11-crp-class-vs
Title: "CLINS: CRP-class ValueSet"
Description: "CLINS 電子カルテ共有サービス用 Ｃ反応性蛋白判定 JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_crp_class_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #CRP-class

// シスタチンC(Cys-C)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_cys_c_VS
Id: jp-clins-valueset-corelaboJLAC11-cys-c-vs
Title: "CLINS: Cys-C ValueSet"
Description: "CLINS 電子カルテ共有サービス用 シスタチンC JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_cys_c_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #Cys-C

// 直接ビリルビン(D-Bil)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_d_bil_VS
Id: jp-clins-valueset-corelaboJLAC11-d-bil-vs
Title: "CLINS: D-Bil ValueSet"
Description: "CLINS 電子カルテ共有サービス用 直接ビリルビン JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_d_bil_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #D-Bil

// Dダイマー
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_dd_VS
Id: jp-clins-valueset-corelaboJLAC11-dd-vs
Title: "CLINS: DD ValueSet"
Description: "CLINS 電子カルテ共有サービス用 Dダイマー JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_dd_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #DD
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #DD-class


// FBS 空腹時血糖
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_fbs_VS
Id: jp-clins-valueset-corelaboJLAC11-fbs-vs
Title: "CLINS: FBS ValueSet"
Description: "CLINS 電子カルテ共有サービス用 空腹時血糖 JLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_fbs_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #BS

// γ-GTP(GGT)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ggt_VS
Id: jp-clins-valueset-corelaboJLAC11-ggt-vs
Title: "CLINS: GGT ValueSet"
Description: "CLINS 電子カルテ共有サービス用 γ-GTPJLAC11 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ggt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #GGT

// HbA1c(NGSP)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_hba1cngsp_VS
Id: jp-clins-valueset-corelaboJLAC11-hba1cngsp-vs
Title: "CLINS: HbA1c-NGSP ValueSet"
Description: "CLINS 電子カルテ共有サービス用 HbA1c(NGSP) ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_hba1c_ngsp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #HbA1c-NGSP

// HDL-コレステロール(HDL-C)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_hdl_c_VS
Id: jp-clins-valueset-corelaboJLAC11-hdl-c-vs
Title: "CLINS: HDL-C ValueSet"
Description: "CLINS 電子カルテ共有サービス用 HDL-コレステロール ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_hdl_c_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #HDL-C

// LD(LDH)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ld_VS
Id: jp-clins-valueset-corelaboJLAC11-ld-vs
Title: "CLINS: LD ValueSet"
Description: "CLINS 電子カルテ共有サービス用 LD(LDH) ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #LD

// LDL-コレステロール(LDL-C)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ldl_c_VS
Id: jp-clins-valueset-corelaboJLAC11-ldl-c-vs
Title: "CLINS: LDL-C ValueSet"
Description: "CLINS 電子カルテ共有サービス用 LDL-コレステロール ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ldl_c_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #LDL-C

// ナトリウム(Na)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_na_VS
Id: jp-clins-valueset-corelaboJLAC11-na-vs
Title: "CLINS: Na ValueSet"
Description: "CLINS 電子カルテ共有サービス用 ナトリウム ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_na_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #Na

// プロトロンビン時間^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_pt_sec_VS
Id: jp-clins-valueset-corelaboJLAC11-pt-sec-vs
Title: "CLINS: PT-sec ValueSet"
Description: "CLINS 電子カルテ共有サービス用 プロトロンビン時間 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_pt_sec_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #PT-Sec

// プロトロンビンACT^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_pt_act_VS
Id: jp-clins-valueset-corelaboJLAC11-pt-act-vs
Title: "CLINS: PT-act ValueSet"
Description: "CLINS 電子カルテ共有サービス用 プロトロンビンACT ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_pt_act_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #PT-Act

// プロトロンビンINR^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_pt_inr_VS
Id: jp-clins-valueset-corelaboJLAC11-pt-inr-vs
Title: "CLINS: PT-INR ValueSet"
Description: "CLINS 電子カルテ共有サービス用 プロトロンビンINR ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_pt_inr_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #PT-INR

// プロトロンビンratio^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_pt_ratio_VS
Id: jp-clins-valueset-corelaboJLAC11-pt-ratio-vs
Title: "CLINS: PT-ratio ValueSet"
Description: "CLINS 電子カルテ共有サービス用 プロトロンビン比 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_pt_ratio_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #PT-Ratio

// 血算-ヘモグロビン^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_hb_VS
Id: jp-clins-valueset-corelaboJLAC11-hb-vs
Title: "CLINS: Hb ValueSet"
Description: "CLINS 電子カルテ共有サービス用 血算-ヘモグロビン ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_hb_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #Hb

// 血算-血小板数^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_plt_VS
Id: jp-clins-valueset-corelaboJLAC11-hplt-vs
Title: "CLINS: PLT ValueSet"
Description: "CLINS 電子カルテ共有サービス用 血算-血小板数 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_plt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #PLT

// 血算-赤血球数^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_rbc_VS
Id: jp-clins-valueset-corelaboJLAC11-rbc-vs
Title: "CLINS: RBC ValueSet"
Description: "CLINS 電子カルテ共有サービス用 血算-赤血球数 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_rbc_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #RBC

// 血算-白血球数^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_wbc_VS
Id: jp-clins-valueset-corelaboJLAC11-wbc-vs
Title: "CLINS: WBC ValueSet"
Description: "CLINS 電子カルテ共有サービス用 血算-白血球数 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_wbc_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #WBC

// 総コレステロール(T-CHO)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_t_cho_VS
Id: jp-clins-valueset-corelaboJLAC11-t-cho-vs
Title: "CLINS: T-CHO ValueSet"
Description: "CLINS 電子カルテ共有サービス用 総コレステロール ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_t_cho_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #T-CHO

// 総ビリルビン(T-Bil)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_t_bil_VS
Id: jp-clins-valueset-corelaboJLAC11-t-bil-vs
Title: "CLINS: T-Bil ValueSet"
Description: "CLINS 電子カルテ共有サービス用 総ビリルビン ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_t_bil_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #T-Bil

// 総蛋白(TP)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_tp_VS
Id: jp-clins-valueset-corelaboJLAC11-tp-vs
Title: "CLINS: TP ValueSet"
Description: "CLINS 電子カルテ共有サービス用 総蛋白 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_tp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #TP

// 中性脂肪(TG)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_tg_VS
Id: jp-clins-valueset-corelaboJLAC11-tg-vs
Title: "CLINS: TG ValueSet"
Description: "CLINS 電子カルテ共有サービス用 中性脂肪 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_tg_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #TG

// 尿酸(UA)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_ua_VS
Id: jp-clins-valueset-corelaboJLAC11-ua-vs
Title: "CLINS: UA ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿酸 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_ua_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #UA

// 尿潜血(定性)
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_bld_VS
Id: jp-clins-valueset-corelaboJLAC11-u-bld-vs
Title: "CLINS: U-Bld ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿潜血(定性) ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_bld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-Bld

// 尿潜血(半定量、判定) ^^
/*
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_bld_QLHalfQty_VS
Id: jp-clins-valueset-corelaboJLAC11-u-bld-qlhalfqty-vs
Title: "CLINS: U-Bld-定性半定量 ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿潜血(半定量、判定)  ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_bld_QLHalfQty_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-Bld-QLHalfQty
*/

//  尿潜血(半定量、希釈倍率) ^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_bld_HalfQty_VS
Id: jp-clins-valueset-corelaboJLAC11-u-bld-halfqty-vs
Title: "CLINS: U-Bld-半定量 ValueSet"
Description: "CLINS 電子カルテ共有サービス用  尿潜血(半定量、希釈倍率)  ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_bld_HalfQty_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-Bld-HalfQty


// 尿蛋⽩(定性)
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_utp_VS
Id: jp-clins-valueset-corelaboJLAC11-utp-vs
Title: "CLINS: U-TP 尿蛋⽩(定性)ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿蛋⽩(定性) ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_utp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-TP

//  尿蛋⽩(半定量、判定) 
/*
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_utp_QLHalfQty_VS
Id: jp-clins-valueset-corelaboJLAC11-utp-qlhalfqty-vs
Title: "CLINS: U-TP-定性半定量 ValueSet"
Description: "CLINS 電子カルテ共有サービス用  尿蛋⽩(定性半定量) ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_utp_QLHalfQty_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-TP-QLHalfQty
*/

// 尿蛋⽩(半定量)
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_utp_HalfQty_VS
Id: jp-clins-valueset-corelaboJLAC11-utp-halfqty-vs
Title: "CLINS: U-TP-半定量 ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿蛋⽩(半定量) ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_utp_HalfQty_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-TP-HalfQty


// 尿中アルブミン/クレアチニン比(A/C比)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_ac_VS
Id: jp-clins-valueset-corelaboJLAC11-u-ac-vs
Title: "CLINS: U-A/C ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿中アルブミン/クレアチニン比 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_ac_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-A/C

// 尿中蛋白/クレアチニン比(P/C比)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_pc_VS
Id: jp-clins-valueset-corelaboJLAC11-u-pc-vs
Title: "CLINS: U-P/C ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿中蛋白/クレアチニン比 ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_pc_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-P/C

// 尿糖(定性) ^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_glu_VS
Id: jp-clins-valueset-corelaboJLAC11-u-glu-vs
Title: "CLINS: U-Glu 尿糖(定性)ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿糖(定性)ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_glu_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-Glu

// U-Glu-定性半定量 ^^
/*
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_glu_QLHalfQty_VS
Id: jp-clins-valueset-corelaboJLAC11-u-glu-qlhalfqty-vs
Title: "CLINS: U-Glu-QLHalfQty 尿糖(半定量、判定)　ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿糖(半定量、判定)　ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_glu_QLHalfQty_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-Glu-QLHalfQty
*/

// U-Glu-半定量 ^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_u_glu_HalfQty_VS
Id: jp-clins-valueset-corelaboJLAC11-u-glu-halfqty-vs
Title: "CLINS: U-Glu-HalfQty 尿糖(半定量) 　ValueSet"
Description: "CLINS 電子カルテ共有サービス用 尿糖(半定量) 　ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_u_glu_HalfQty_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #U-Glu-HalfQty

// 脳性Na利尿ペプチド(BNP)^^
ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_bnp_VS
Id: jp-clins-valueset-corelaboJLAC11-bnp-vs
Title: "CLINS: BNP ValueSet"
Description: "CLINS 電子カルテ共有サービス用 脳性Na利尿ペプチド ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLaboJLAC11_bnp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* include codes from system $JP_CLINS_CodeSystem_JLAC11_CoreLabo_CS where concept descendant-of #BNP
