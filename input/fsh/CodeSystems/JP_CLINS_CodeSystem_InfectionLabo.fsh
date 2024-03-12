CodeSystem: JP_CLINS_CodeSystem_InfectionLabo_CS
Id: jp-clins-codesystem-infectionlabo-cs
Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セット"
Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セット"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-11-03T00:45:56.836+09:00"
* ^url = $JP_CLINS_CodeSystem_InfectionLabo_CS
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^copyright = "Copyright JAMI. All Rights Reserved."
* ^hierarchyMeaning = #is-a

// descendent-of
//----感染症項目５項目
// HCV 健診
* #HCV-CHECK "C型肝炎ウイルス検診の判定"
  * #5F360140602302314  "C型肝炎ウイルス検診の判定"   // HCV エンザイムイムノアッセイ(EIA) 血清 
  * #5F360140602305214  "C型肝炎ウイルス検診の判定"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360140602399814  "C型肝炎ウイルス検診の判定"   // HCV 方法問わず 血清 
  * #5F360140602399914  "C型肝炎ウイルス検診の判定"   // HCV その他 血清 

// HBs抗原(S/CO)
* #HBS-AG-SCO   "HBs抗原(S/CO)"
  * #5F016141002305151  "HBs抗原(S/CO)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 S/CO
  * #5F016141002399851  "HBs抗原(S/CO)"   // HBs 方法問わず 血清 S/CO
  * #5F016141002399951  "HBs抗原(S/CO)"   // HBs その他 血清 S/CO

// HBs抗原(コントロール比)
* #HBs-AG-COI   "HBs抗原(コントロール比)"
  * #5F016141002302331  "HBs抗原(コントロール比)"   // HBs エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F016141002305231  "HBs抗原(コントロール比)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F016141002399831  "HBs抗原(コントロール比)"   // HBs 方法問わず 血清 COI
  * #5F016141002399931  "HBs抗原(コントロール比)"   // HBs その他 血清 COI

// HBs抗原(希釈倍率)
* #HBs-AG-DIL   "HBs抗原(希釈倍率)"
  * #5F016141002310405  "HBs抗原(希釈倍率)"   // HBs 逆受身赤血球凝集反応(RPHA法) 血清 倍
  * #5F016141002311705  "HBs抗原(希釈倍率)"   // HBs 粒子凝集反応 血清 倍
  * #5F016141002399805  "HBs抗原(希釈倍率)"   // HBs 方法問わず 血清 倍
  * #5F016141002399905  "HBs抗原(希釈倍率)"   // HBs その他 血清 倍

// HBs抗原(吸光度)
* #Hbs-AG-OD    "HBs抗原(吸光度)"
  * #5F016141002302304  "HBs抗原(吸光度)"   // HBs エンザイムイムノアッセイ(EIA) 血清 吸光度
  * #5F016141002399804  "HBs抗原(吸光度)"   // HBs 方法問わず 血清 吸光度
  * #5F016141002399904  "HBs抗原(吸光度)"   // HBs その他 血清 吸光度

// HBs抗原(定量)
* #HBs-AG-QUANT "HBs抗原(定量)"
  * #5F016141002302301  "HBs抗原(定量)"   // HBs エンザイムイムノアッセイ(EIA) 血清 IU／mL
  * #5F016141002305101  "HBs抗原(定量)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 IU／mL
  * #5F016141002305201  "HBs抗原(定量)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 IU／mL
  * #5F016141002305301  "HBs抗原(定量)"   // HBs 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 IU／mL
  * #5F016141002306301  "HBs抗原(定量)"   // HBs 免疫比朧法(ネフェロメトリー) 血清 IU／mL
  * #5F016141002399801  "HBs抗原(定量)"   // HBs 方法問わず 血清 IU／mL
  * #5F016141002399901  "HBs抗原(定量)"   // HBs その他 血清 IU／mL

// HBs抗原(判定)
* #HBs-AG-RESULT   "HBs抗原(判定)"
  * #5F016141001819011  "HBs抗原(判定)"   // HBs イムノクロマトグラフィ法 全血 
  * #5F016141001899811  "HBs抗原(判定)"   // HBs 方法問わず（全血） 全血 
  * #5F016141001899911  "HBs抗原(判定)"   // HBs その他（全血） 全血 
  * #5F016141002302311  "HBs抗原(判定)"   // HBs エンザイムイムノアッセイ(EIA) 血清 
  * #5F016141002305111  "HBs抗原(判定)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F016141002305152  "HBs抗原(判定)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F016141002305211  "HBs抗原(判定)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F016141002305311  "HBs抗原(判定)"   // HBs 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5F016141002306311  "HBs抗原(判定)"   // HBs 免疫比朧法(ネフェロメトリー) 血清 
  * #5F016141002310411  "HBs抗原(判定)"   // HBs 逆受身赤血球凝集反応(RPHA法) 血清 
  * #5F016141002311711  "HBs抗原(判定)"   // HBs 粒子凝集反応 血清 
  * #5F016141002319011  "HBs抗原(判定)"   // HBs イムノクロマトグラフィ法 血清 
  * #5F016141002399811  "HBs抗原(判定)"   // HBs 方法問わず（血清） 血清 
  * #5F016141002399911  "HBs抗原(判定)"   // HBs その他（血清） 血清 

// HBs抗原(陽性コントロール比)
* #HBs-AG-POS-COI   "HBs抗原(陽性コントロール比)"
  * #5F016141002305133  "HBs抗原(陽性コントロール比)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5F016141002305233  "HBs抗原(陽性コントロール比)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F016141002399833  "HBs抗原(陽性コントロール比)"   // HBs 方法問わず 血清 COI
  * #5F016141002399933  "HBs抗原(陽性コントロール比)"   // HBs その他 血清 COI

// HBs抗体(コントロール比)
* #HBs-AB-COI   "HBs抗体(コントロール比)"
  * #5F016143002302331  "HBs抗体(コントロール比)"   // HBs エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F016143002399831  "HBs抗体(コントロール比)"   // HBs 方法問わず 血清 COI
  * #5F016143002399931  "HBs抗体(コントロール比)"   // HBs その他 血清 COI

// HBs抗体(陰性コントロール比)
* #HBs-AB-NEG-COI   "HBs抗体(陰性コントロール比)"
  * #5F016143002302332  "HBs抗体(陰性コントロール比)"   // HBs エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F016143002399833  "HBs抗体(陰性コントロール比)"   // HBs 方法問わず 血清 COI
  * #5F016143002399933  "HBs抗体(陰性コントロール比)"   // HBs その他 血清 COI

// HBs抗体(希釈倍率)
* #HBs-AB-DIL   "HBs抗体(希釈倍率)"
  * #5F016143002310305  "HBs抗体(希釈倍率)"   // HBs 受身赤血球凝集反応(PHA法) 血清 倍
  * #5F016143002399805  "HBs抗体(希釈倍率)"   // HBs 方法問わず 血清 倍
  * #5F016143002399905  "HBs抗体(希釈倍率)"   // HBs その他 血清 倍

// HBs抗体(定量)
* #HBs-AB-QUANT "HBs抗体(定量)"
  * #5F016143002302301  "HBs抗体(定量)"   // HBs エンザイムイムノアッセイ(EIA) 血清 mIU／mL
  * #5F016143002304101  "HBs抗体(定量)"   // HBs 蛍光イムノアッセイ(FIA) 血清 mIU／mL
  * #5F016143002305101  "HBs抗体(定量)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 mIU／mL
  * #5F016143002305201  "HBs抗体(定量)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 mIU／mL
  * #5F016143002305301  "HBs抗体(定量)"   // HBs 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 mIU／mL
  * #5F016143002306301  "HBs抗体(定量)"   // HBs 免疫比朧法(ネフェロメトリー) 血清 mIU／mL
  * #5F016143002399801  "HBs抗体(定量)"   // HBs 方法問わず 血清 mIU／mL
  * #5F016143002399901  "HBs抗体(定量)"   // HBs その他 血清 mIU／mL

// HBs抗体(判定)
* #HBs-AB-RESULT    "HBs抗体(判定)"
  * #5F016143002302311  "HBs抗体(判定)"   // HBs エンザイムイムノアッセイ(EIA) 血清 
  * #5F016143002304111  "HBs抗体(判定)"   // HBs 蛍光イムノアッセイ(FIA) 血清 
  * #5F016143002305111  "HBs抗体(判定)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F016143002305211  "HBs抗体(判定)"   // HBs 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F016143002305311  "HBs抗体(判定)"   // HBs 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5F016143002306311  "HBs抗体(判定)"   // HBs 免疫比朧法(ネフェロメトリー) 血清 
  * #5F016143002310311  "HBs抗体(判定)"   // HBs 受身赤血球凝集反応(PHA法) 血清 
  * #5F016143002319011  "HBs抗体(判定)"   // HBs イムノクロマトグラフィ法 血清 
  * #5F016143002399811  "HBs抗体(判定)"   // HBs 方法問わず 血清 
  * #5F016143002399911  "HBs抗体(判定)"   // HBs その他 血清 

// HCV核酸増幅検査(定量)
* #HCV-QUANT    "HCV核酸増幅検査(定量)"
  * #5F360145302387501  "HCV核酸増幅検査(定量)"   // HCV リアルタイムRT-PCR法 血清 U/mL
  * #5F360145302399801  "HCV核酸増幅検査(定量)"   // HCV 方法問わず 血清 U/mL
  * #5F360145302399901  "HCV核酸増幅検査(定量)"   // HCV その他 血清 U/mL

// HCV核酸増幅検査(判定)
* #HCV-RESULT   "HCV核酸増幅検査(判定)"
  * #5F360145302387511  "HCV核酸増幅検査(判定)"   // HCV リアルタイムRT-PCR法 血清 

// HCV抗原検査(定量)
* #HCV-AG-QUANT "HCV抗原検査(定量)"
  * #5F360150002302301  "HCV抗原検査(定量)"   // HCV エンザイムイムノアッセイ(EIA) 血清 fmol/L
  * #5F360150002305101  "HCV抗原検査(定量)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 fmol/L
  * #5F360150002399801  "HCV抗原検査(定量)"   // HCV 方法問わず 血清 fmol/L
  * #5F360150002399901  "HCV抗原検査(定量)"   // HCV その他 血清 fmol/L

// HCV抗原検査(判定)
* #HCV-AG-RESULT    "HCV抗原検査(判定)"
  * #5F360150002302311  "HCV抗原検査(判定)"   // HCV エンザイムイムノアッセイ(EIA) 血清 
  * #5F360150002305111  "HCV抗原検査(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F360150002399811  "HCV抗原検査(判定)"   // HCV 方法問わず 血清 
  * #5F360150002399911  "HCV抗原検査(判定)"   // HCV その他 血清 

// HCV抗体(コントロール比)
* #HCV-AB-COI   "HCV抗体(コントロール比)"
  * #5F360148702305231  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360148802305231  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360148802305331  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 COI
  * #5F360151002305231  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360151202302331  "HCV抗体(コントロール比)"   // HCV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F360151302305231  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360151602306331  "HCV抗体(コントロール比)"   // HCV 免疫比朧法(ネフェロメトリー) 血清 COI
  * #5F360151702305231  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360152102305331  "HCV抗体(コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 COI
  * #5F360152102399831  "HCV抗体(コントロール比)"   // HCV 方法問わず 血清 COI
  * #5F360152102399931  "HCV抗体(コントロール比)"   // HCV その他 血清 COI

// HCV抗体(希釈倍率)
* #HCV-AB-DIL   "HCV抗体(希釈倍率)"
  * #5F360151402311705  "HCV抗体(希釈倍率)"   // HCV 粒子凝集反応 血清 倍
  * #5F360151402399805  "HCV抗体(希釈倍率)"   // HCV 方法問わず 血清 倍
  * #5F360151402399905  "HCV抗体(希釈倍率)"   // HCV その他 血清 倍

// HCV抗体(判定)
* #HCV-AB-RESULT    "HCV抗体(判定)"
  * #5F360148202302311  "HCV抗体(判定)"   // HCV エンザイムイムノアッセイ(EIA) 血清 
  * #5F360148502305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360148702304111  "HCV抗体(判定)"   // HCV 蛍光イムノアッセイ(FIA) 血清 
  * #5F360148702305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360148702306211  "HCV抗体(判定)"   // HCV ラテックス凝集比濁法 血清 
  * #5F360148802302311  "HCV抗体(判定)"   // HCV エンザイムイムノアッセイ(EIA) 血清 
  * #5F360148802305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360148802305311  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5F360151002305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360151002319011  "HCV抗体(判定)"   // HCV イムノクロマトグラフィ法 血清 
  * #5F360151102305111  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F360151202302311  "HCV抗体(判定)"   // HCV エンザイムイムノアッセイ(EIA) 血清 
  * #5F360151302302311  "HCV抗体(判定)"   // HCV エンザイムイムノアッセイ(EIA) 血清 
  * #5F360151302305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360151402311711  "HCV抗体(判定)"   // HCV 粒子凝集反応 血清 
  * #5F360151502305111  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F360151602306311  "HCV抗体(判定)"   // HCV 免疫比朧法(ネフェロメトリー) 血清 
  * #5F360151702305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360151802305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360151902305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360152002305211  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F360152102305311  "HCV抗体(判定)"   // HCV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5F360152102399811  "HCV抗体(判定)"   // HCV 方法問わず 血清 
  * #5F360152102399911  "HCV抗体(判定)"   // HCV その他 血清 

// HCV抗体(陽性コントロール比)
* #HCV-AB-POS-COI   "HCV抗体(陽性コントロール比)"
  * #5F360148202302333  "HCV抗体(陽性コントロール比)"   // HCV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F360148502305233  "HCV抗体(陽性コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360148702304133  "HCV抗体(陽性コントロール比)"   // HCV 蛍光イムノアッセイ(FIA) 血清 COI
  * #5F360148702306233  "HCV抗体(陽性コントロール比)"   // HCV ラテックス凝集比濁法 血清 COI
  * #5F360148802302333  "HCV抗体(陽性コントロール比)"   // HCV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F360151102305133  "HCV抗体(陽性コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5F360151302302333  "HCV抗体(陽性コントロール比)"   // HCV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F360151502305133  "HCV抗体(陽性コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5F360151802305233  "HCV抗体(陽性コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360151902305233  "HCV抗体(陽性コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360152002305233  "HCV抗体(陽性コントロール比)"   // HCV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F360152002399833  "HCV抗体(陽性コントロール比)"   // HCV 方法問わず 血清 COI
  * #5F360152002399933  "HCV抗体(陽性コントロール比)"   // HCV その他 血清 COI

// HIV-1(ウイルスRNA定量)
* #HIV-1-QUANT  "HIV-1(ウイルスRNA定量)"
  * #5F500145302287501  "HIV-1(ウイルスRNA定量)"   // HIV リアルタイムRT-PCR法 血漿 copies/mL
  * #5F500145302299801  "HIV-1(ウイルスRNA定量)"   // HIV 方法問わず 血漿 copies/mL
  * #5F500145302299901  "HIV-1(ウイルスRNA定量)"   // HIV その他 血漿 copies/mL

// HIV-1(ウイルスRNA定量判定)
* #HIV-1-RESULT "HIV-1(ウイルスRNA定量判定)"
  * #5F500145302287511  "HIV-1(ウイルスRNA定量判定)"   // HIV リアルタイムRT-PCR法 血漿 
  * #5F500145302299811  "HIV-1(ウイルスRNA定量判定)"   // HIV 方法問わず 血漿 
  * #5F500145302299911  "HIV-1(ウイルスRNA定量判定)"   // HIV その他 血漿 

// HIV-1+2抗体・p24抗原(コントロール値)
* #HIV-1P2-AB-P24-COIV  "HIV-1+2抗体・p24抗原(コントロール値)"
  * #5F560155002302321  "HIV-1+2抗体・p24抗原(コントロール値)"   // HIV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F560155002399821  "HIV-1+2抗体・p24抗原(コントロール値)"   // HIV 方法問わず 血清 COI
  * #5F560155002399921  "HIV-1+2抗体・p24抗原(コントロール値)"   // HIV その他 血清 COI

// HIV-1+2抗体・p24抗原(コントロール比)
* #HIV-1P2-AB-P24-COI "HIV-1+2抗体・p24抗原(コントロール比)"
  * #5F560155002305231  "HIV-1+2抗体・p24抗原(コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F560155002305331  "HIV-1+2抗体・p24抗原(コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 COI
  * #5F560155002399831  "HIV-1+2抗体・p24抗原(コントロール比)"   // HIV 方法問わず 血清 COI
  * #5F560155002399931  "HIV-1+2抗体・p24抗原(コントロール比)"   // HIV その他 血清 COI

// HIV-1+2抗体・p24抗原(陰性コントロール比)
* #HIV-1P2-AB-P24-NEG-COI "IV-1+2抗体・p24抗原(陰性コントロール比)"
  * #5F560155002302332  "HIV-1+2抗体・p24抗原(陰性コントロール比)"   // HIV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F560155002399832  "HIV-1+2抗体・p24抗原(陰性コントロール比)"   // HIV 方法問わず 血清 COI
  * #5F560155002399932  "HIV-1+2抗体・p24抗原(陰性コントロール比)"   // HIV その他 血清 COI

// HIV-1+2抗体・p24抗原(吸光度)
* #HIV-1P2-AB-OD   "HIV-1+2抗体・p24抗原(吸光度)"
  * #5F560155002302304  "HIV-1+2抗体・p24抗原(吸光度)"   // HIV エンザイムイムノアッセイ(EIA) 血清 吸光度
  * #5F560155002399804  "HIV-1+2抗体・p24抗原(吸光度)"   // HIV 方法問わず 血清 吸光度
  * #5F560155002399904  "HIV-1+2抗体・p24抗原(吸光度)"   // HIV その他 血清 吸光度

// HIV-1+2抗体・p24抗原(定性、HIV p24抗原)
* #HIV-1P2-P24-AB-RESULT    "HIV-1+2抗体・p24抗原(定性、HIV p24抗原)"
  * #5F560155002319052  "HIV-1+2抗体・p24抗原(定性、HIV p24抗原)"   // HIV イムノクロマトグラフィ法 血清 
//----* #5F560155002399852  "HIV-1+2抗体・p24抗原(定性、HIV p24抗原)"   // HIV 方法問わず 血清 
//----* #5F560155002399952  "HIV-1+2抗体・p24抗原(定性、HIV p24抗原)"   // HIV その他 血清 

// HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)
* #HIV-1P2-AB-P24-QLRESULT  "HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)"
  * #5F560155002319053  "HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)"   // HIV イムノクロマトグラフィ法 血清 
//* #5F560155002399853  "HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)"   // HIV 方法問わず 血清 
//* #5F560155002399953  "HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)"   // HIV その他 血清 

// HIV-1+2抗体・p24抗原(定量、HIV p24抗原)
* #HIV-1P2-P24-AB-QUANT "HIV-1+2抗体・p24抗原(定量、HIV p24抗原)"
  * #5F560155002305352  "HIV-1+2抗体・p24抗原(定量、HIV p24抗原)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F560155002399852  "HIV-1+2抗体・p24抗原(定量、HIV p24抗原)"   // HIV 方法問わず 血清 COI
  * #5F560155002399952  "HIV-1+2抗体・p24抗原(定量、HIV p24抗原)"   // HIV その他 血清 COI

// HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)
* #HIV-1P2-AB-QUANT "HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)"
  * #5F560155002305353  "HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)"   // HIV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 COI
  * #5F560155002399853  "HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)"   // HIV 方法問わず 血清 COI
  * #5F560155002399953  "HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)"   // HIV その他 血清 COI

// HIV-1+2抗体・p24抗原(判定)
* #HIV-1P2-AB-P24-RESULT    "HIV-1+2抗体・p24抗原(判定)"
  * #5F560155002302311  "HIV-1+2抗体・p24抗原(判定)"   // HIV エンザイムイムノアッセイ(EIA) 血清 
  * #5F560155002305111  "HIV-1+2抗体・p24抗原(判定)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F560155002305211  "HIV-1+2抗体・p24抗原(判定)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F560155002305311  "HIV-1+2抗体・p24抗原(判定)"   // HIV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5F560155002305351  "HIV-1+2抗体・p24抗原(判定)"   // HIV 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5F560155002399851  "HIV-1+2抗体・p24抗原(判定)"   // HIV 方法問わず 血清 
  * #5F560155002399951  "HIV-1+2抗体・p24抗原(判定)"   // HIV その他 血清 

// HIV-1+2抗体・p24抗原(陽性コントロール比)
* #HIV-1P2-AB-P24-POS-COI   "HIV-1+2抗体・p24抗原(陽性コントロール比)"
  * #5F560155002302333  "HIV-1+2抗体・p24抗原(陽性コントロール比)"   // HIV エンザイムイムノアッセイ(EIA) 血清 COI
  * #5F560155002305133  "HIV-1+2抗体・p24抗原(陽性コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5F560155002305233  "HIV-1+2抗体・p24抗原(陽性コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F560155002399833  "HIV-1+2抗体・p24抗原(陽性コントロール比)"   // HIV 方法問わず 血清 COI
  * #5F560155002399933  "HIV-1+2抗体・p24抗原(陽性コントロール比)"   // HIV その他 血清 COI

// HIV-1+2抗体(コントロール比)
* #HIV-1P2-AB-COI   "HIV-1+2抗体(コントロール比)"
  * #5F560143002305131  "HIV-1+2抗体(コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5F560143002305231  "HIV-1+2抗体(コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F560143002306331  "HIV-1+2抗体(コントロール比)"   // HIV 免疫比朧法(ネフェロメトリー) 血清 COI
  * #5F560143002399831  "HIV-1+2抗体(コントロール比)"   // HIV 方法問わず 血清 COI
  * #5F560143002399931  "HIV-1+2抗体(コントロール比)"   // HIV その他 血清 COI

// HIV-1+2抗体(希釈倍率)
* #HIV-1P2-AB-DIL   "HIV-1+2抗体(希釈倍率)"
  * #5F560143002311705  "HIV-1+2抗体(希釈倍率)"   // HIV 粒子凝集反応 血清 倍
  * #5F560143002399805  "HIV-1+2抗体(希釈倍率)"   // HIV 方法問わず 血清 倍
  * #5F560143002399905  "HIV-1+2抗体(希釈倍率)"   // HIV その他 血清 倍

// HIV-1+2抗体(判定)
* #HIV-1P2-AB-RESULT    "HIV-1+2抗体(判定)"
  * #5F560143002305111  "HIV-1+2抗体(判定)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5F560143002305211  "HIV-1+2抗体(判定)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5F560143002306311  "HIV-1+2抗体(判定)"   // HIV 免疫比朧法(ネフェロメトリー) 血清 
  * #5F560143002311711  "HIV-1+2抗体(判定)"   // HIV 粒子凝集反応 血清 
  * #5F560143002319011  "HIV-1+2抗体(判定)"   // HIV イムノクロマトグラフィ法 血清 
  * #5F560143002399811  "HIV-1+2抗体(判定)"   // HIV 方法問わず 血清 
  * #5F560143002399911  "HIV-1+2抗体(判定)"   // HIV その他 血清 

// HIV-1+2抗体(陽性コントロール比)
* #HIV-1P2-AB-POS-COI   "HIV-1+2抗体(陽性コントロール比)"
  * #5F560143002305233  "HIV-1+2抗体(陽性コントロール比)"   // HIV 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5F560143002399833  "HIV-1+2抗体(陽性コントロール比)"   // HIV 方法問わず 血清 COI
  * #5F560143002399933  "HIV-1+2抗体(陽性コントロール比)"   // HIV その他 血清 COI

// HIV-1抗体(希釈倍率)
* #HIV-1-AB-DIL "HIV-1抗体(希釈倍率)"
  * #5F500143002311705  "HIV-1抗体(希釈倍率)"   // HIV 粒子凝集反応 血清 倍
  * #5F500143002399805  "HIV-1抗体(希釈倍率)"   // HIV 方法問わず 血清 倍
  * #5F500143002399905  "HIV-1抗体(希釈倍率)"   // HIV その他 血清 倍

// HIV-1抗体(判定)
* #HIV-1-AB-RESULT  "HIV-1抗体(判定)"
  * #5F500143002311711  "HIV-1抗体(判定)"   // HIV 粒子凝集反応 血清 
  * #5F500143002399811  "HIV-1抗体(判定)"   // HIV 方法問わず 血清 
  * #5F500143002399911  "HIV-1抗体(判定)"   // HIV その他 血清 

// HIV-2抗体(希釈倍率)
* #HIV-2-AB-DIL "HIV-2抗体(希釈倍率)"
  * #5F550143002311705  "HIV-2抗体(希釈倍率)"   // HIV 粒子凝集反応 血清 倍
  * #5F550143002399805  "HIV-2抗体(希釈倍率)"   // HIV 方法問わず 血清 倍
  * #5F550143002399905  "HIV-2抗体(希釈倍率)"   // HIV その他 血清 倍

// HIV-2抗体(判定)
* #HIV-2-AB-RESULT  "HIV-2抗体(判定)"
  * #5F550143002311711  "HIV-2抗体(判定)"   // HIV 粒子凝集反応 血清 

// 梅毒STS(定性)
* #STS-QLRESULT "梅毒STS(定性)"
  * #5E074135102311711  "梅毒STS(定性)"   // 梅毒STS 粒子凝集反応 血清 
  * #5E074135102399811  "梅毒STS(定性)"   // 梅毒STS 方法問わず 血清 
  * #5E074135102399911  "梅毒STS(定性)"   // 梅毒STS その他 血清 

// 梅毒STS(定量)
* #STS-QUANT    "梅毒STS(定量)"
  * #5E074135202306201  "梅毒STS(定量)"   // 梅毒STS ラテックス凝集比濁法 血清 U
  * #5E074135202306301  "梅毒STS(定量)"   // 梅毒STS 免疫比朧法(ネフェロメトリー) 血清 U
  * #5E074135202399801  "梅毒STS(定量)"   // 梅毒STS 方法問わず 血清 U
  * #5E074135202399901  "梅毒STS(定量)"   // 梅毒STS その他 血清 U

// 梅毒STS(判定)
* #STS-RESULT   "梅毒STS(判定)"
  * #5E074135202306211  "梅毒STS(判定)"   // 梅毒STS ラテックス凝集比濁法 血清 
  * #5E074135202306311  "梅毒STS(判定)"   // 梅毒STS 免疫比朧法(ネフェロメトリー) 血清 
  * #5E074135202399811  "梅毒STS(判定)"   // 梅毒STS 方法問わず 血清 
  * #5E074135202399911  "梅毒STS(判定)"   // 梅毒STS その他 血清 

// 梅毒STS(半定量)
* #STS-HQUANT   "梅毒STS(半定量)" 
  * #5E074135302311705  "梅毒STS(半定量)"   // 梅毒STS 粒子凝集反応 血清 倍
  * #5E074135302399805  "梅毒STS(半定量)"   // 梅毒STS 方法問わず 血清 倍
  * #5E074135302399905  "梅毒STS(半定量)"   // 梅毒STS その他 血清 倍

// 梅毒TP抗体(定性)
* #TP-RESULT    "梅毒TP抗体(定性)"
  * #5E075135101819011  "梅毒TP抗体(定性)"   // 梅毒TP抗体 イムノクロマトグラフィ法 全血 
  * #5E075135101899811  "梅毒TP抗体(定性)"   // 梅毒TP抗体 方法問わず（全血） 全血 
  * #5E075135101899911  "梅毒TP抗体(定性)"   // 梅毒TP抗体 その他（全血） 全血 
  * #5E075135102310311  "梅毒TP抗体(定性)"   // 梅毒TP抗体 受身赤血球凝集反応(PHA法) 血清 
  * #5E075135102311711  "梅毒TP抗体(定性)"   // 梅毒TP抗体 粒子凝集反応 血清 
  * #5E075135102319011  "梅毒TP抗体(定性)"   // 梅毒TP抗体 イムノクロマトグラフィ法 血清 
  * #5E075135102399811  "梅毒TP抗体(定性)"   // 梅毒TP抗体 方法問わず（血清） 血清 
  * #5E075135102399911  "梅毒TP抗体(定性)"   // 梅毒TP抗体 その他（血清） 血清 

// 梅毒TP抗体(定量、コントロール比)
* #TP-QUANT-COI "梅毒TP抗体(定量、コントロール比)"
  * #5E075135202305331  "梅毒TP抗体(定量、コントロール比)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 COI
  * #5E075135202399831  "梅毒TP抗体(定量、コントロール比)"   // 梅毒TP抗体 方法問わず 血清 COI
  * #5E075135202399931  "梅毒TP抗体(定量、コントロール比)"   // 梅毒TP抗体 その他 血清 COI

// 梅毒TP抗体(定量、陰性コントロール比)
* #TP-NEG-COI   "梅毒TP抗体(定量、陰性コントロール比)"
  * #5E075135202302332  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 エンザイムイムノアッセイ(EIA) 血清 COI
  * #5E075135202304132  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 蛍光イムノアッセイ(FIA) 血清 COI
  * #5E075135202305132  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5E075135202305232  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5E075135202306232  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 ラテックス凝集比濁法 血清 COI
  * #5E075135202399832  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 方法問わず 血清 COI
  * #5E075135202399932  "梅毒TP抗体(定量、陰性コントロール比)"   // 梅毒TP抗体 その他 血清 COI

// 梅毒TP抗体(定量、判定)
* #TP-QUANT-RESULT  "梅毒TP抗体(定量、判定)"
  * #5E075135202302311  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 エンザイムイムノアッセイ(EIA) 血清 
  * #5E075135202304111  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 蛍光イムノアッセイ(FIA) 血清 
  * #5E075135202305111  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 
  * #5E075135202305211  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 
  * #5E075135202305311  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＥＣＬＩＡ) 血清 
  * #5E075135202306211  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 ラテックス凝集比濁法 血清 
  * #5E075135202306311  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 免疫比朧法(ネフェロメトリー) 血清 
  * #5E075135202399811  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 方法問わず 血清 
  * #5E075135202399911  "梅毒TP抗体(定量、判定)"   // 梅毒TP抗体 その他 血清 

// 梅毒TP抗体(定量、陽性コントロール比)
* #TP-POS-COI   "梅毒TP抗体(定量、陽性コントロール比)" 
  * #5E075135202305133  "梅毒TP抗体(定量、陽性コントロール比)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＣＬＩＡ) 血清 COI
  * #5E075135202305233  "梅毒TP抗体(定量、陽性コントロール比)"   // 梅毒TP抗体 化学・生物発光イムノアッセイ(ＣＬＥＩＡ) 血清 COI
  * #5E075135202399833  "梅毒TP抗体(定量、陽性コントロール比)"   // 梅毒TP抗体 方法問わず 血清 COI
  * #5E075135202399933  "梅毒TP抗体(定量、陽性コントロール比)"   // 梅毒TP抗体 その他 血清 COI

// 梅毒TP抗体(定量)
* #TP-QUANT "梅毒TP抗体(定量)"
  * #5E075135202306201  "梅毒TP抗体(定量)"   // 梅毒TP抗体 ラテックス凝集比濁法 血清 U
  * #5E075135202306301  "梅毒TP抗体(定量)"   // 梅毒TP抗体 免疫比朧法(ネフェロメトリー) 血清 U
  * #5E075135202399801  "梅毒TP抗体(定量)"   // 梅毒TP抗体 方法問わず 血清 U
  * #5E075135202399901  "梅毒TP抗体(定量)"   // 梅毒TP抗体 その他 血清 U

// 梅毒TP抗体(半定量)
* #TP-HQUANT    "梅毒TP抗体(半定量)"
  * #5E075135302310305  "梅毒TP抗体(半定量)"   // 梅毒TP抗体 受身赤血球凝集反応(PHA法) 血清 倍
  * #5E075135302311705  "梅毒TP抗体(半定量)"   // 梅毒TP抗体 粒子凝集反応 血清 倍
  * #5E075135302399805  "梅毒TP抗体(半定量)"   // 梅毒TP抗体 方法問わず 血清 倍
  * #5E075135302399905  "梅毒TP抗体(半定量)"   // 梅毒TP抗体 その他 血清 倍

// 梅毒反応
* #STS  "梅毒反応"
  * #5E071000002399811  "梅毒反応"   // 梅毒反応 方法問わず 血清 
  * #5E071000002399911  "梅毒反応"   // 梅毒反応 その他 血清 