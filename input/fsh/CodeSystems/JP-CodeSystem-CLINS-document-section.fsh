
// 電子カルテ情報共有サービス文書共通セクション区分コード
CodeSystem: JP_codeSystem_CLINS_document_section
Id: jp-codeSystem-clins-document-section
Description: "電子カルテ情報共有サービス文書共通セクション区分コード"
* ^url = "http://jpfhir.jp/fhir/clins/CodeSystem/document-section"
* ^title = "電子カルテ情報共有サービス文書共通セクション区分コード"
* ^version = "1.3.0"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^hierarchyMeaning = #is-a

* #COMMON
  * #200  "CDA参照セクション" //  cdaSection
  * #210  "添付情報セクション"    //  attachmentSection
  * #230  "PDFセクション" // pdfSection
  * #300  "構造情報セクション"    //  compositionSection
  * #360  "現病歴セクション"  //  presentIllnessSection
  * #370  "既往歴セクション"  //  pastIllnessSection
  * #410  "事前指示セクション"    //  advanceDirectiveSection
  * #510  "アレルギー・不耐性反応セクション"  //  allergiesIIntoleranceSection
  * #530  "予防接種歴セクション"  //  immunizationSection
  * #550  "家族歴セクション"     //   familiyHistorySection
  * #640  "社会歴・生活習慣セクション"    //  socialHistorySection
  * #810  "医療機器セクション"    //  medicalDeviceSection
  * #830  "臨床研究参加セクション"    //  researchParticipationSection

* #DIS
  * #312  "入院理由セクション"    // reasonForAdmissionSection
  * #322  "入院時詳細セクション"  // detailsOnAdmissionSection
  * #324  "退院時詳細セクション"  // diagnosesOnDischargeSection
  * #333  "入院中経過セクション"  // hospitalCourseSection
  * #342  "入院時診断セクション"  // diagnosesOnAdmissionSection
  * #344  "退院時診断セクション"  // diagnosesOnDischargeSection
  * #352  "主訴セクション"    //  chiefComplaintsSection
  * #424  "退院時方針指示セクション"  // instructionOnDischargeSection
  * #432  "入院時服薬セクション"  // medicationsOnAdmissionSection
  * #444  "退院時投薬指示セクション"  // medicationOnDischargeSection
  * #612  "入院時身体所見セクション"  // physicalStatusOnAdmissionSection
  * #614  "退院時身体所見セクション"  // physicalStatusOnDischargeSection
  * #623  "入院中検査結果セクション"  //  hospitalStudySection
  * #713  "入院中治療セクション"  // hospitalProcedureSection

* #REF
  * #220  "備考・連絡情報セクション"  //  remarksCommunicatonSection
  * #330  "臨床経過セクション"    // clinicalCourseSection
  * #340  "傷病名・主訴セクション"    //  problemSection
  * #420  "診療方針指示セクション"    //  clinicalInstructionSection
  * #430  "投薬指示セクション"    //  medicationSection
  * #520  "感染症情報セクション"  //  infectionInformationSection
  * #610  "身体所見セクション"    //  physicalStatusSection
  * #620  "検査結果セクション"    //  studySection
  * #720  "処置セクション"    //  procedureSection
  * #730  "手術セクション"    //  surgicalProcedureSection
  * #740  "輸血歴セクション"  //  bloodInfustionHistorySection
  * #910  "紹介先情報セクション"  //  referralToSection
  * #920  "紹介元情報セクション"  //  referralFromSection
  * #950  "紹介目的セクション"    //  referralPurposeSection
* #PCS
  * #422  "計画サマリーセクション"

// * #362  "現病歴セクション"  // presentIllnessSection
// * #372  "既往歴セクション"  // pastIllnessSection 入院時既往歴
// * #552  "家族歴セクション"  //  familiyHistorySection 入院時情報・退院時サマリー
//* #642  "社会歴・生活習慣セクション"    // socialHistorySection 入院時情報・退院時サマリー

