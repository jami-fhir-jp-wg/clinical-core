

// 診療情報提供書セクション区分コード
ValueSet: JP_valueSet_eReferral_document_section
Id: jp-valueSet-eReferral-document-section
Description: "診療情報提供書セクション区分　ValueSet"
* ^url = "http://jpfhir.jp/fhir/eReferral/ValueSet/document-section"
* ^title = "診療情報提供書セクション区分コード　ValueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
//* include codes from system http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section
* include codes from system http://jpfhir.jp/fhir/clins/CodeSystem/document-section where concept descendant-of #REF
* include codes from system http://jpfhir.jp/fhir/clins/CodeSystem/document-section where concept descendant-of #COMMON

// 退院時サマリーセクション区分コード
ValueSet: JP_valueSet_eDischargeSummary_document_section
Id: jp-valueSet-eDischargeSummary-document-section
Description: "退院時サマリーセクション区分　ValueSet"
* ^url = "http://jpfhir.jp/fhir/eDischargeSummary/ValueSet/document-section"
* ^title = "退院時サマリーセクション区分コード　ValueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
//* include codes from system http://jpfhir.jp/fhir/eDischargeSummary/CodeSystem/document-section
* include codes from system http://jpfhir.jp/fhir/clins/CodeSystem/document-section where concept descendant-of #REF
* include codes from system http://jpfhir.jp/fhir/clins/CodeSystem/document-section where concept descendant-of #COMMON

// 患者療養計画サマリー　セクション区分コード
ValueSet: JP_valueSet_ePCS_document_section
Id: jp-valueSet-ePCS-document-section
Description: "患者療養計画サマリー　セクション区分　ValueSet"
* ^url = "http://jpfhir.jp/fhir/ePCS/ValueSet/document-section"
* ^title = "患者療養計画サマリー　セクション区分コード　ValueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
//* include codes from system http://jpfhir.jp/fhir/eDischargeSummary/CodeSystem/document-section
* include codes from system http://jpfhir.jp/fhir/clins/CodeSystem/document-section where concept descendant-of #PCS

// FHIR文書の文書区分（医療文書全般）
ValueSet: JP_valueSet_documentTypeCode
Id: jp-valueSet-documentTypeCode
Title: "FHIR文書の文書区分（医療文書）"
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes


// FHIR文書の文書サブ区分（医療文書全般）
ValueSet: JP_valueSet_documentSubTypeCode
Id: jp-valueSet-documentSubTypeCode
Title: "FHIR文書の文書サブ区分（医療文書）"
Description: "FHIR文書の文書サブ区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/ValueSet/doc-subtypecodes"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-07-10"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system http://jpfhir.jp/fhir/Common/CodeSystem/doc-subtypecodes


ValueSet: JP_ehrshrs_indication_VS
Id: jp-ehrshrs-indication-vs
Title: "長期保存／未告知診療情報のためのフラグコード　valueSet"
Description: "長期保存／未告知診療情報のためのフラグコード　valueSet"
* ^url = $JP_ehrshrs_indication_VS
* ^title = "長期保存／未告知診療情報のためのフラグコード　valueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system JP_ehrshrs_indication_CS

ValueSet:  JP_CLINS_BundleResourceType_VS
Id:   jp-clins-bundleresourcetype-vs
Title: "５情報Bundle５情報リソースタイプ　valueSet"
Description: "５情報Bundle５情報リソースタイプ　valueSet"
* ^url = $JP_CLINS_BundleResourceType_VS
* ^title = "５情報Bundle５情報リソースタイプ　valueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_BundleResourceType_CS

ValueSet: JP_eCS_MedicationCode_Nocoded_VS
Id: jp-ecs-medicationcode-nocoded-vs
Title: "医薬品コードで標準コードが割り当てられない場合に使用する未コード化コード  ValueSet"
Description: "医薬品コードで標準コードが割り当てられない場合に使用する未コード化コードだけのValueSet"
* ^url = $JP_eCS_MedicationCodeNocoded_VS
* ^title = "医薬品未標準化コード項目　valueSet"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_eCS_MedicationCodeNocoded_CS


ValueSet: JP_admit_Source_VS
Id: jp-admit-Source-Source-vs
Title: "入院経路を表すコード (出典：厚労省DPC導入影響評価調査)  ValueSet"
Description: "入院経路を表すコード (出典：厚労省DPC導入影響評価調査)  ValueSet"
* ^url = $JP_admit_Source_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^date = "2024-01-28"
* include codes from system  $JP_admit_Source_CS

ValueSet: JP_dischargeDisposition_VS
Id: jp-dischargeDisposition-vs
Title: "退院時転帰コード情報　(出典：厚労省DPC導入影響評価調査) ValueSet"
Description: "退院時転帰コード情報　(出典：厚労省DPC導入影響評価調査) ValueSet"
* ^url = $JP_dischargeDisposition_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^date = "2024-02-10"
* include codes from system  $JP_dischargeDisposition_CS


//
// プランのタイプ
// "hospital-plan"(入院中のプラン)、または"discharge-plan"(退院時のプラン)のいずれか固定値。
//

ValueSet:  JP_valueSet_carePlanCategory
Id:   JP-valueSet-carePlanCategory
Title: "CarePlan カテゴリー"
Description: "CarePlan カテゴリー　hospital-plan または discharge-plan"
* ^url = $JP_carePlanCategory_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_carePlanCategory_CS


// 厚労省電子処方箋用法コードマスターValueSet
ValueSet:  JP_valueSet_MedicationUsageMHLW_Prscription
Id:   JP-valueSet-MedicationUsageMHLW-Prscription
Title: "厚労省電子処方箋用法コードマスターValueSet"
Description: "厚労省電子処方箋用法コードマスターValueSet"
* ^url = $JAMI_MedicationUsage_ePrescription_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-09-07"
* ^publisher = "厚生労働省"
* ^copyright = "　"
* include codes from system $JAMI_MedicationUsage_ePrescription_CS

// 暫定
// MEDIS標準病名マスター病名管理番号ValueSet
// $JP_Disease_MEDIS_ManagementID_VS = http://medis.or.jp/ValueSet/master-disease-keyNumber 
ValueSet:  JP_valueSet_Disease_MEDIS_ManagementID
Id:   JP-valueSet-Disease-MEDIS-ManagementID
Title: "MEDIS標準病名マスター病名管理番号ValueSet"
Description: "MEDIS標準病名マスター病名管理番号ValueSet"
* ^url = $JP_Disease_MEDIS_ManagementID_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-09-07"
* ^publisher = "（財）医療情報システム開発センター"
* ^copyright = "（財）医療情報システム開発センター"
* include codes from system $JP_Disease_MEDIS_ManagementID_CS
