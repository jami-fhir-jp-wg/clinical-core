// 医療文書コード（Loinc系）
CodeSystem: Loinc_subset_forDocumentCode
Id: jp-codeSystem-eCS-document-code
Title: "Loincコードのサブセットコード"
Description: "Loincコードのサブセットコード"
* ^url = "http://loinc.org"
* ^title = "Loincコードのサブセットコード"
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = false
* ^date = "2023-04-01T00:00:00+09:00"
* ^version = "5.11"
* #18748-4 "Diagnostic imaging study"
* #11506-3 "Progress note"

// 医療文書区分コード
CodeSystem:  JP_codeSystem_documentTypeCode
Id:   jp-codeSystem-documentTypeCode
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^title = "FHIR文書の文書区分（医療文書全般）"
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = false
* ^date = "2023-04-01T00:00:00+09:00"
* ^version = "5.11"
* #JPGCHKUP01 "健診結果報告書"
//* #JPMCHKUP01 "自治体検診結果報告書"
* #18842-5 "退院時サマリー"
* #57133-1 "診療情報提供書"
* #57833-6 "処方箋"
* #56447-6 "計画書"

// 医療文書サブ区分コード
CodeSystem:  JP_codeSystem_documentSubTypeCode
Id:   jp-codeSystem-documentSubTypeCode
Description: "FHIR文書の文書サブ区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-subtypecodes"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/doc-subtypecodes"
* ^title = "FHIR文書の文書サブ区分（医療文書全般）"
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = false
* ^date = "2024-07-10T00:00:00+09:00"
* ^version = "1.0"
* #ADMISSION "入院時文書" "入院時の作成文書"
* #SECONDOP "セカンドオピニオン文書" "セカンドオピニオン目的の作成文書"
* #EXAMIN  "要精査依頼文書" "健診・検診後の精密検査依頼の文書"
* #CONSULT "他科コンサルト" "入院中の同一医療機関内の他科への依頼文書"
* #DISCHARGE "退院時文書" "退院時の作成文書"
* #INPATIENT "入院中文書" "退院時以外の入院中作成文書"
* #OUTPATIENT "外来文書" "外来診療中の作成文書"

// 処方箋区分コード
CodeSystem:  JP_codeSystem_prescription_category
Id:   jp-codeSystem-prescription-category
Title: "JP codeSystem prescription category"
Description: "処方箋区分コード　（01:一般処方箋、02:麻薬処方箋、03:分割一般処方）"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/prescription-category"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/prescription-category"
* ^version = "1.3.0-rc3"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^date = "2023-04-01T00:00:00+09:00"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"

* #01 "一般処方箋"
* #02 "麻薬処方箋"
* #03 "分割一般処方"

// 処方セクション区分コード
CodeSystem: JP_codeSystem_ePrescription_section
Id: jp-codeSystem-ePrescription-section
Title: "JP codeSystem ePrescription section"
Description: "処方セクション区分コード"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/prescription-section"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/prescription-category"
* ^version = "1.3.0-rc3"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^date = "2023-04-01T00:00:00+09:00"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"

* #01 "処方情報セクション"
* #11 "分割処方箋セクション"
* #12 "別紙セクション"


// 医療従事者資格種別
CodeSystem:  JP_codeSystem_practitioner_certificate_category
Id:   jp-codeSystem-practitioner-certificate-category
Title: "JP codeSystem practitioner certificate category"
Description: "医療従事者資格種別"
* ^url = "http://jpfhir.jp/fhir/core/CodeSystem/practitioner-certificate-category"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/practitioner-certificate-category"
* ^version = "1.3.0-rc3"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^date = "2023-04-01T00:00:00+09:00"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"

* #MedicalDoctorLicense "医師"
* #NarcoticsPractitioner "麻薬施用者"


