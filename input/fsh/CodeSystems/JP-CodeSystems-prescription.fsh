
// 医療文書区分コード
// コードリスト作成途中　健診結果報告書コード　未定
CodeSystem:  JP_codeSystem_documentTypeCode
Id:   jp-codeSystem-documentTypeCode
Title: "JP codeSystem documentTypeCode"
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #JPGCHKUP01 "健診結果報告書"
* #JPMCHKUP01 "自治体検診結果報告書"
* #18842-5 "退院時サマリー"
* #57133-1 "診療情報提供書"
* #57833-6 "処方箋"

// 処方箋区分コード
CodeSystem:  JP_codeSystem_prescription_category
Id:   jp-codeSystem-prescription-category
Description: "処方箋区分コード　（01:一般処方箋、02:麻薬処方箋、03:分割一般処方）"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/prescription-category"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/prescription-category"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
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
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
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
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #MedicalDoctorLicense "医師"
* #NarcoticsPractitioner "麻薬施用者"


