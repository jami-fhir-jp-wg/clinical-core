

// 診療情報提供書セクション区分コード
ValueSet: JP_codeSystem_eReferral_document_section
Id: jp-codeSystem-eReferral-document-section
Description: "診療情報提供書セクション区分　ValueSet"
* ^url = "http://jpfhir.jp/fhir/eReferral/ValueSet/document-section"
* ^title = "診療情報提供書セクション区分コード　ValueSet"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section

// 退院時サマリーセクション区分コード
ValueSet: JP_codeSystem_eDischargeSummary_document_section
Id: jp-codeSystem-eDischargeSummary-document-section
Description: "退院時サマリーセクション区分　ValueSet"
* ^url = "http://jpfhir.jp/fhir/eDischargeSummary/ValueSet/document-section"
* ^title = "退院時サマリーセクション区分コード　ValueSet"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system http://jpfhir.jp/fhir/eDischargeSummary/CodeSystem/document-section


// FHIR文書の文書区分（医療文書全般）
ValueSet: JP_valueSet_documentTypeCode
Id: jp-valueSet-documentTypeCode
Title: "FHIR文書の文書区分（医療文書）"
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes



ValueSet: JP_ehrshrs_indication_VS
Id: jp-ehrshrs-indication-vs
Title: "長期保存／未告知診療情報のためのフラグコード　valueSet"
Description: "長期保存／未告知診療情報のためのフラグコード　valueSet"
* ^url = $JP_ehrshrs_indication_VS
* ^title = "長期保存／未告知診療情報のためのフラグコード　valueSet"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system JP_ehrshrs_indication_CS

ValueSet:  JP_CLINS_BundleResourceType_VS
Id:   jp-clins-bundleresourcetype-vs
Title: "６情報Bundle６情報リソースタイプ　valueSet"
Description: "６情報Bundle６情報リソースタイプ　valueSet"
* ^url = $JP_CLINS_BundleResourceType_VS
* ^title = "６情報Bundle６情報リソースタイプ　valueSet"
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
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_carePlanCategory_CS

