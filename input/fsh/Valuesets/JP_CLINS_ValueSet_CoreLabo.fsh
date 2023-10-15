ValueSet: JP_CLINS_ValueSet_CoreLabo_abo_bld_VS
Id: jp-clins-valueset-corelabo-abo-bld-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_abo_bld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// ⾎液型-ABO^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#5H010000001910111  "ABO-BLD"  // 血液型(ABO)(カラム凝集法)  (空白)  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#5H010000001910114  "ABO-BLD"  // 赤血球凝集反応[定性]  (空白)  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#5H010000001999911  "ABO-BLD"  // その他  (空白)  全血

ValueSet: JP_CLINS_ValueSet_CoreLabo_rh_bld_VS
Id: jp-clins-valueset-corelabo-rh-bld-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_rh_bld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// ⾎液型-Rh^^
* #5H020000001910111  "Rh-BLD"  // 血液型(Rh)(カラム凝集法)  (空白)  (空白)
* #5H020000001910114  "Rh-BLD"  // 赤血球凝集反応[定性]  (空白)  全血(添加物入り)
* #5H020000001999911  "Rh-BLD"  // その他  (空白)  (空白)

ValueSet: JP_CLINS_ValueSet_CoreLabo_alb_VS
Id: jp-clins-valueset-corelabo-alb-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_alb_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// アルブミン^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000001827101  "ALB"  // 可視吸光光度法  g/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000002306301  "ALB"  // 免疫比朧法(ネフェロメトリー)  g/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000002327101  "ALB"  // 可視吸光光度法  g/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000002329101  "ALB"  // 反射測光法(レフラクトメトリー)  g/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000002399901  "ALB"  // その他  g/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_alp_VS
Id: jp-clins-valueset-corelabo-alp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_alp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// アルカリホスファターゼ(ALP)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B070000001929101  "ALP"  // 反射測光法(レフラクトメトリー)  U/L  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B070000002327101  "ALP"  // 可視吸光光度法  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B070000002327501  "ALP"  // 可視吸光光度法(IFCC対応法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B070000002327701  "ALP"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B070000002329101  "ALP"  // 反射測光法(レフラクトメトリー)  U/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B070000002399901  "ALP"  // その他  U/L  血清


ValueSet: JP_CLINS_ValueSet_CoreLabo_alt_VS
Id: jp-clins-valueset-corelabo-alt-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_alt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// ALT(GPT)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000001827701  "ALT"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000001929101  "ALT"  // 反射測光法(レフラクトメトリー)  U/L  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000002327201  "ALT"  // 紫外吸光光度法(UV法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000002327701  "ALT"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000002327801  "ALT"  // 紫外吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000002329101  "ALT"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B045000002399901  "ALT"  // その他  U/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_amy_VS
Id: jp-clins-valueset-corelabo-amy-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_amy_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// アミラ－ゼ(AMY)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B160000001827701  "AMY"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B160000001929101  "AMY"  // 反射測光法(レフラクトメトリー)  U/L  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B160000002327101  "AMY"  // 可視吸光光度法  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B160000002327701  "AMY"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B160000002329101  "AMY"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B160000002399801  "AMY"  // その他  U/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_aptt_VS
Id: jp-clins-valueset-corelabo-aptt-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_aptt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 活性化部分トロンボプラスチン時間(APTT)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B020000002231151  "APTT"  // 凝固時間測定  sec  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B020000002299951  "APTT"  // その他  sec  血漿

ValueSet: JP_CLINS_ValueSet_CoreLabo_ast_VS
Id: jp-clins-valueset-corelabo-ast-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ast_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// AST(GOT)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000001827701  "AST"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000001929101  "AST"  // 反射測光法(レフラクトメトリー)  U/L  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000002327201  "AST"  // 紫外吸光光度法(UV法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000002327701  "AST"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000002327801  "AST"  // 紫外吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000002329101  "AST"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B035000002399901  "AST"  // その他  U/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_nt_probnp_VS
Id: jp-clins-valueset-corelabo-nt-probnp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_nt_probnp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// ヒト脳性Na利尿ペプチド前駆体Ｎ端フラグメント(NT-proBNP)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000001904301  "NT-proBNP"  // 蛍光イムノアッセイ(FIA)  pg/mL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000001919001  "NT-proBNP"  // イムノクロマトグラフィ法  pg/mL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002202301  "NT-proBNP"  // エンザイムイムノアッセイ(EIA)  pg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002302301  "NT-proBNP"  // エンザイムイムノアッセイ(EIA)  pg/mL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002302401  "NT-proBNP"  // エンザイムイムノアッセイ(EIA)  pg/mL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002305101  "NT-proBNP"  // 化学・生物発光イムノアッセイ(ＣＬＩＡ)  pg/mL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002305201  "NT-proBNP"  // 化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  pg/mL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002305301  "NT-proBNP"  // 化学・生物発光イムノアッセイ(ＥＣＬＩＡ)  pg/mL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z272000002399901  "NT-proBNP"  // その他  pg/mL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_bs_VS
Id: jp-clins-valueset-corelabo-bs-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_bs_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// グルコース(血糖)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001826201  "BS"  // 電流測定  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001827101  "BS"  // 可視吸光光度法  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001829101  "BS"  // 反射測光法(レフラクトメトリー)  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001926201  "BS"  // 電流測定  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001929101  "BS"  // 反射測光法(レフラクトメトリー)  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001999901  "BS"  // その他  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002126201  "BS"  // 電流測定  mg/dL  毛細管血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002226201  "BS"  // 電流測定  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002227101  "BS"  // 可視吸光光度法  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002227201  "BS"  // 紫外吸光光度法(UV法)  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002229101  "BS"  // 反射測光法(レフラクトメトリー)  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002326201  "BS"  // 電流測定  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002327101  "BS"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002327201  "BS"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000002329101  "BS"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000026226201  "BS"  // 電流測定  mg/dL  毛細管血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010129901926101  "BS"  // 電位差法(ブドウ糖酸化酵素電極法)  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010129901927201  "BS"  // 紫外吸光光度法(ヘキソキナーゼ法、グルコキナーゼ法、ブドウ糖脱水素酵素法)  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010129901999901  "BS"  // その他  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010129902227101  "BS"  // 可視吸光光度法(ブドウ糖酸化酵素法)  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010170102126201  "BS"  // 電流測定  mg/dL  毛細管血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010170102129101  "BS"  // 反射測光法(レフラクトメトリー)  mg/dL  毛細管血

ValueSet: JP_CLINS_ValueSet_CoreLabo_bun_VS
Id: jp-clins-valueset-corelabo-bun-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_bun_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 尿素窒素(BUN)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000001826201  "BUN"  // 電流測定  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000001827101  "BUN"  // 可視吸光光度法  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000001829101  "BUN"  // 反射測光法(レフラクトメトリー)  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000001929101  "BUN"  // 反射測光法(レフラクトメトリー)  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000002326401  "BUN"  // 電導度測定  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000002327101  "BUN"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000002327201  "BUN"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000002329101  "BUN"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C025000002399801  "BUN"  // その他  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_ca_VS
Id: jp-clins-valueset-corelabo-ca-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ca_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// カルシウム(Ca)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H030000002327101  "Ca"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H030000002327201  "Ca"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H030000002329101  "Ca"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H030000002399901  "Ca"  // その他  mg/dL  血清


ValueSet: JP_CLINS_ValueSet_CoreLabo_K_VS
Id: jp-clins-valueset-corelabo-k-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_k_VS 
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2022-09-26"
* ^copyright = "JAMI"
// カリウム(K)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H015000001826101  "K"  // 電位差測定  mEq/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H015000002326101  "K"  // 電位差測定  mEq/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H015000002327201  "K"  // 紫外吸光光度法(UV法)  mEq/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H015000002329101  "K"  // 反射測光法(レフラクトメトリー)  mEq/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H015000002399901  "K"  // その他  mEq/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_che_VS
Id: jp-clins-valueset-corelabo-che-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_che_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// コリンエステラーゼ(ChE)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B110000002327101  "ChE"  // コリンエステラーゼ(可視吸光光度法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B110000002327201  "ChE"  // 紫外吸光光度法(UV法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B110000002327701  "ChE"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B110000002329101  "ChE"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B110000002399801  "ChE"  // その他  U/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_ck_VS
Id: jp-clins-valueset-corelabo-ck-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ck_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// クレアチンキナーゼ(CK)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B010000001929101  "CK"  // 反射測光法(レフラクトメトリー)  U/L  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B010000002327101  "CK"  // ＣＫ(ＣＰＫ)(可視吸光光度法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B010000002327201  "CK"  // 紫外吸光光度法(UV法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B010000002327801  "CK"  // 紫外吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B010000002329101  "CK"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B010000002399801  "CK"  // その他  U/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_cl_VS
Id: jp-clins-valueset-corelabo-cl-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_cl_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// クロール(Cl)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H020000001826101  "Cl"  // 電位差測定  mEq/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H020000002326101  "Cl"  // 電位差測定  mEq/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H020000002399901  "Cl"  // その他  mEq/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_cre_VS
Id: jp-clins-valueset-corelabo-cre-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_cre_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// クレアチニン(Cre)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015000001829101  "Cre"  // 反射測光法(レフラクトメトリー)  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015000001926201  "Cre"  // 電流測定  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015000002327101  "Cre"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015000002329101  "Cre"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015000002399901  "Cre"  // その他  mg/dL  血清
// 血清クレアチニン(実施理由)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015161002399949  "Cre"  // (空白)  (空白)  血清
// 血清クレアチニン(対象者)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C015161602399911  "Cre"  // (空白)  (空白)  血清


ValueSet: JP_CLINS_ValueSet_CoreLabo_crp_VS
Id: jp-clins-valueset-corelabo-crp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_crp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// Ｃ反応性蛋白(CRP)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000001804301  "CRP"  // 蛍光イムノアッセイ(FIA)  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000001806201  "CRP"  // ラテックス凝集比濁法  mg/dL  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000001906201  "CRP"  // ラテックス凝集比濁法  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000001919501  "CRP"  // 免疫着色法  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002302301  "CRP"  // エンザイムイムノアッセイ(EIA)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002304101  "CRP"  // 蛍光イムノアッセイ(FIA)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002306101  "CRP"  // 免疫比濁法(TIA)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002306201  "CRP"  // ラテックス凝集比濁法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002306211  "CRP"  // ラテックス凝集比濁法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002306301  "CRP"  // 免疫比朧法(ネフェロメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002329101  "CRP"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000002399901  "CRP"  // その他  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_crp_class_VS
Id: jp-clins-valueset-corelabo-crp-class-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_crp_class_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000001819012  "CRP-class"  // イムノクロマトグラフィ法  クラス  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#5C070000001899912  "CRP-class"  // その他  クラス  全血

ValueSet: JP_CLINS_ValueSet_CoreLabo_cys_c_VS
Id: jp-clins-valueset-corelabo-cys-c-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_cys_c_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// シスタチンC(Cys-C)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C016000002106201  "Cys-C"  // ラテックス凝集比濁法  mg/L  毛細管血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C016000002302301  "Cys-C"  // エンザイムイムノアッセイ(EIA)  mg/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C016000002306201  "Cys-C"  // ラテックス凝集比濁法  mg/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C016000002306301  "Cys-C"  // 免疫比朧法(ネフェロメトリー)  mg/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C016000002306401  "Cys-C"  // 金コロイド凝集法  mg/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C016000002399801  "Cys-C"  // その他  mg/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_d_bil_VS
Id: jp-clins-valueset-corelabo-d-bil-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_d_bil_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 直接ビリルビン(D-Bil)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J015000002327101  "D-Bil"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J015000002329101  "D-Bil"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J015000002399901  "D-Bil"  // その他  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J023000002329151  "D-Bil"  // 反射測光法(レフラクトメトリー)  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_dd_VS
Id: jp-clins-valueset-corelabo-dd-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_dd_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// Dダイマー(DD)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000001904301  "DD"  // 蛍光イムノアッセイ(FIA)  μg/mL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000001919001  "DD"  // イムノクロマトグラフィ法  μg/mL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002202301  "DD"  // エンザイムイムノアッセイ(EIA)  μg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002205201  "DD"  // 化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  μg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002206201  "DD"  // ラテックス凝集比濁法  μg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002206211  "DD"  // ラテックス凝集比濁法  (空白)  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002211701  "DD"  // 粒子凝集反応  μg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002211711  "DD"  // 粒子凝集反応  (空白)  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002219001  "DD"  // イムノクロマトグラフィ法  μg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002299901  "DD"  // その他  μg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002299911  "DD"  // その他  (空白)  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B140000002304101  "DD"  // 蛍光イムノアッセイ(FIA)  μg/mL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_fbs_VS
Id: jp-clins-valueset-corelabo-fbs-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_fbs_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001926101  "FBS" 
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001927201  "FBS" 
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D010000001999901  "FBS" 

ValueSet: JP_CLINS_ValueSet_CoreLabo_ggt_VS
Id: jp-clins-valueset-corelabo-ggt-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ggt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// γ-GTP(GGT)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B090000001827701  "GGT"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B090000001929101  "GGT"  // 反射測光法(レフラクトメトリー)  U/L  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B090000002327101  "GGT"  // 可視吸光光度法  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B090000002327701  "GGT"  // 可視吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B090000002329101  "GGT"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B090000002399901  "GGT"  // その他  U/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_ngsp_VS
Id: jp-clins-valueset-corelabo-ngsp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_hba1c_ngsp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// HbA1c(NGSP)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001806201  "HbA1c-NGSP"  // ラテックス凝集比濁法  %  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001829101  "HbA1c-NGSP"  // 反射測光法(レフラクトメトリー)  %  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001906102  "HbA1c-NGSP"  // 免疫比濁法(TIA)  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001906202  "HbA1c-NGSP"  // ラテックス凝集比濁法  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001920402  "HbA1c-NGSP"  // 高速液体クラマトグラフィー(HPLC)  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001921002  "HbA1c-NGSP"  // その他のクラマトグラフィー  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001923702  "HbA1c-NGSP"  // キャピラリー電気泳動  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001927102  "HbA1c-NGSP"  // 可視吸光光度法  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000001999902  "HbA1c-NGSP"  // その他  %  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3D046000002129102  "HbA1c-NGSP"  // 反射測光法(レフラクトメトリー)  %  毛細管血

ValueSet: JP_CLINS_ValueSet_CoreLabo_hdl_c_VS
Id: jp-clins-valueset-corelabo-hdl-c-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_hdl_c_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// HDL-コレステロール(HDL-C)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F070000002227101  "HDL-C"  // 可視吸光光度法  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F070000002327101  "HDL-C"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F070000002327201  "HDL-C"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F070000002329101  "HDL-C"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F070000002399901  "HDL-C"  // その他  mg/dL  血清


ValueSet: JP_CLINS_ValueSet_CoreLabo_ld_VS
Id: jp-clins-valueset-corelabo-ld-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// LD(LDH)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B050000002327201  "LD"  // 紫外吸光光度法(UV法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B050000002327801  "LD"  // 紫外吸光光度法(JSCC、IFCC対応法以外)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B050000002327901  "LD"  // 紫外吸光光度法(IFCC対応法)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B050000002329101  "LD"  // 反射測光法(レフラクトメトリー)  U/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3B050000002399801  "LD"  // その他  U/L  血清


ValueSet: JP_CLINS_ValueSet_CoreLabo_ldl_c_VS
Id: jp-clins-valueset-corelabo-ldl-c-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ldl_c_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// LDL-コレステロール(LDL-C)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F077000002327101  "LDL-C"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F077000002327201  "LDL-C"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F077000002391901  "LDL-C"  // 計算法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F077000002399901  "LDL-C"  // その他  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_na_VS
Id: jp-clins-valueset-corelabo-na-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_na_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// ナトリウム(Na)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H010000001826101  "Na"  // 電位差測定  mEq/L  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H010000002326101  "Na"  // 電位差測定  mEq/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H010000002327101  "Na"  // 可視吸光光度法  mEq/L  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3H010000002399901  "Na"  // その他  mEq/L  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_pt_sec_VS
Id: jp-clins-valueset-corelabo-pt-sec-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_pt_sec_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// プロトロンビン時間^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000001831151  "PT-sec"  // 凝固時間測定  sec  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000001831153  "PT-sec"  // 凝固時間測定  sec  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002131151  "PT-sec"  // 凝固時間測定  sec  毛細管血
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002231151  "PT-sec"  // 凝固時間測定  sec  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002299951  "PT-sec"  // その他  sec  血漿

ValueSet: JP_CLINS_ValueSet_CoreLabo_pt_act_VS
Id: jp-clins-valueset-corelabo-pt-act-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_pt_act_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// プロトロンビンACT^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002231153  "PT-act"  // 凝固時間測定  %  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002299953  "PT-act"  // その他  %  血漿

ValueSet: JP_CLINS_ValueSet_CoreLabo_pt_inr_VS
Id: jp-clins-valueset-corelabo-pt-inr-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_pt_inr_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// プロトロンビンINR^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002231157  "PT-INR"  // 凝固時間測定  (空白)  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002299957  "PT-INR"  // その他  (空白)  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000001831157  "PT-INR"  // 凝固時間測定  (空白)  全血
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002131157  "PT-INR"  // 凝固時間測定  (空白)  毛細管血

ValueSet: JP_CLINS_ValueSet_CoreLabo_pt_ratio_VS
Id: jp-clins-valueset-corelabo-pt-ratio-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_pt_ratio_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// プロトロンビンINR^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002299955  "PT-ratio"  // その他  (空白)  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#2B030000002231155  "PT-ratio"  // 凝固時間測定  (空白)  血漿

ValueSet: JP_CLINS_ValueSet_CoreLabo_hb_VS
Id: jp-clins-valueset-corelabo-hb-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_hb_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 血算-ヘモグロビン^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A030000001930101  "Hb"  // 自動血球算定装置  g/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A030000001999901  "Hb"  // その他  g/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A990000001930953  "Hb"  // 自動機械法  g/dL  全血(添加物入り)

ValueSet: JP_CLINS_ValueSet_CoreLabo_plt_VS
Id: jp-clins-valueset-corelabo-hplt-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_plt_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 血算-血小板数^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A050000001930101  "PLT"  // 自動血球算定装置  10000/mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A050000001930901  "PLT"  // 自動機械法  10000/mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A050000001999901  "PLT"  // その他  10000/mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A990000001930955  "PLT"  // 自動機械法  10000/mm3  全血(添加物入り)

ValueSet: JP_CLINS_ValueSet_CoreLabo_rbc_VS
Id: jp-clins-valueset-corelabo-rbc-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_rbc_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 血算-赤血球数^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A020000001930101  "RBC"  // 自動血球算定装置  10000/mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A020000001999901  "RBC"  // その他  10000/mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A990000001930951  "RBC"  // 自動機械法  10000/mm3  全血(添加物入り)

ValueSet: JP_CLINS_ValueSet_CoreLabo_wbc_VS
Id: jp-clins-valueset-corelabo-wbc-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_wbc_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
* ^copyright = "JAMI"
// 血算-白血球数^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A010000001930101  "WBC"  // 自動血球算定装置  /mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A010000001999901  "WBC"  // その他  /mm3  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#2A990000001930952  "WBC"  // 自動機械法  /mm3  全血(添加物入り)

ValueSet: JP_CLINS_ValueSet_CoreLabo_t_cho_VS
Id: jp-clins-valueset-corelabo-t-cho-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_t_cho_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 総コレステロール(T-CHO)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F050000002227101  "T-CHO"  // 可視吸光光度法  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F050000002327101  "T-CHO"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F050000002327201  "T-CHO"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F050000002329101  "T-CHO"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F050000002399901  "T-CHO"  // その他  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_t_bil_VS
Id: jp-clins-valueset-corelabo-t-bil-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_t_bil_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 総ビリルビン(T-Bil)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J010000001927101  "T-Bil"  // 可視吸光光度法  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J010000002327101  "T-Bil"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J010000002329101  "T-Bil"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3J010000002399901  "T-Bil"  // その他  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_tp_VS
Id: jp-clins-valueset-corelabo-tp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_tp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 総蛋白(TP)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A010000002327101  "TP"  // 可視吸光光度法(ビウレット法)  g/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A010000002329101  "TP"  // 反射測光法(レフラクトメトリー)  g/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A010000002399901  "TP"  // その他  g/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_tg_VS
Id: jp-clins-valueset-corelabo-tg-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_tg_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 中性脂肪(TG)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F015000002227101  "TG"  // 可視吸光光度法  mg/dL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F015000002327101  "TG"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F015000002327201  "TG"  // 紫外吸光光度法(UV法)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F015000002329101  "TG"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F015000002399901  "TG"  // その他  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3F015129902327101  "TG"  // 可視吸光光度法(酵素比色法・グリセロール消去)  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_ua_VS
Id: jp-clins-valueset-corelabo-ua-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_ua_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 尿酸(UA)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C020000001929101  "UA"  // 反射測光法(レフラクトメトリー)  mg/dL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C020000002327101  "UA"  // 可視吸光光度法  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C020000002329101  "UA"  // 反射測光法(レフラクトメトリー)  mg/dL  血清
* $JP_CLINS_CodeSystem_CoreLabo_CS#3C020000002399901  "UA"  // その他  mg/dL  血清

ValueSet: JP_CLINS_ValueSet_CoreLabo_u_bld_VS
Id: jp-clins-valueset-corelabo-u-bld-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_u_bld_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 尿潜血^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A100000000190111  "U-Bld"  // 試験紙法(目視法)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A100000000191111  "U-Bld"  // 試験紙法(機械読み取り)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A100000000199911  "U-Bld"  // その他  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190159  "U-Bld"  // 化学発色法  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190177  "U-Bld"  // 化学発色法  /μL、クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191159  "U-Bld"  // 化学発色法(機械読み取り)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191177  "U-Bld"  // 化学発色法(機械読み取り)  /μL、クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000199977  "U-Bld"  // その他  /μL、クラス  尿(含むその他)

ValueSet: JP_CLINS_ValueSet_CoreLabo_u_tp_VS
Id: jp-clins-valueset-corelabo-u-tp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_u_tp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 尿蛋⽩^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A010000000190111  "U-TP"  // 試験紙法(目視法)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A010000000191111  "U-TP"  // 試験紙法(機械読み取り)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A010000000199911  "U-TP"  // その他  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190153  "U-TP"  // 化学発色法  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190171  "U-TP"  // 化学発色法  mg/dL、クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191153  "U-TP"  // 化学発色法(機械読み取り)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191171  "U-TP"  // 化学発色法(機械読み取り)  mg/dL、クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000199971  "U-TP"  // その他  mg/dL、クラス  尿(含むその他)

ValueSet: JP_CLINS_ValueSet_CoreLabo_u_ac_VS
Id: jp-clins-valueset-corelabo-u-ac-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_u_ac_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 尿中アルブミン/クレアチニン比(A/C比)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190184  "U-A/C"  // 化学発色法  クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191184  "U-A/C"  // 化学発色法(機械読み取り)  クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000199984  "U-A/C"  // その他  クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000000106128  "U-A/C"  // 免疫比濁法(TIA)  mg/g･CR  尿(含むその他)

ValueSet: JP_CLINS_ValueSet_CoreLabo_u_pc_VS
Id: jp-clins-valueset-corelabo-u-pc-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_u_pc_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 尿中蛋白/クレアチニン比(P/C比)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A015000000127128  "U-P/C"  // (空白)  g/gCr  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190183  "U-P/C"  // 化学発色法  クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191183  "U-P/C"  // 化学発色法(機械読み取り)  クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000199983  "U-P/C"  // その他  クラス  尿(含むその他)

ValueSet: JP_CLINS_ValueSet_CoreLabo_u_glu_VS
Id: jp-clins-valueset-corelabo-u-glu-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_u_glu_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 尿糖^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A020000000190111  "U-Glu"  // 試験紙法(目視法)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A020000000191111  "U-Glu"  // 試験紙法(機械読み取り)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190154  "U-Glu"  // 化学発色法  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190172  "U-Glu"  // 化学発色法  mg/dL、クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191154  "U-Glu"  // 化学発色法(機械読み取り)  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000191172  "U-Glu"  // 化学発色法(機械読み取り)  mg/dL、クラス  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000199954  "U-Glu"  // その他  (空白)  尿(含むその他)
* $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000199972  "U-Glu"  // その他  mg/dL、クラス  尿(含むその他)

ValueSet: JP_CLINS_ValueSet_CoreLabo_bnp_VS
Id: jp-clins-valueset-corelabo-bnp-vs
Title: "JP Core Medication IngredientStrength StrengthType ValueSet"
Description: "６情報用検体検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-11T21:17:22.426+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo_bnp_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-15"
// 脳性Na利尿ペプチド(BNP)^^
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000002205201  "BNP"  // 化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  pg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000001905201  "BNP"  // 化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  pg/mL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000002205101  "BNP"  // 化学・生物発光イムノアッセイ(ＣＬＥＩＡ)  pg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000001919001  "BNP"  // イムノクロマトグラフィ法  pg/mL  全血(添加物入り)
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000002219001  "BNP"  // イムノクロマトグラフィ法  pg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000002202301  "BNP"  // エンザイムイムノアッセイ(EIA)  pg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000002206201  "BNP"  // ラテックス凝集比濁法  pg/mL  血漿
* $JP_CLINS_CodeSystem_CoreLabo_CS#4Z271000002299901  "BNP"  // その他  pg/mL  血漿
