
// EncounterActコード
/*
ValueSet:  HL7V3_ActEncounterCode
Id:   v3-ActEncounterCode
Description: "EncounterActコード"
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $v3-ActCode( http://terminology.hl7.org/ValueSet/v3-ActEncounterCode)
*/


ValueSet:  JAMI_valueSet_ePreDispenseInstruction
Id:   jami-valueSet-ePreDispenseInstruction
Title: "JAMI valueSet ePreDispenseInstruction"
Description: "調剤指示コード（備考欄）"
* ^experimental = false
* ^url = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreDispenseInstruction"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system urn:oid:1.2.392.200250.2.2.30.10


ValueSet:  JAMI_valueSet_ePreOrderUsageCode_16digits
Id:   jami-valueSet-ePreOrderUsageCode-16digits
Title: "JAMI valueSet ePreOrderUsageCode 16digits"
Description: "JAMI16桁用法コード"
* ^experimental = false
* ^url = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreOrderUsageCode"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_MedicationUsageJAMI_CS


ValueSet:  JP_valueSet_drugCode_yj
Id:   jp-valueSet-drugCode-yj
Title: "JP valueSet drugCode yj"
Description: "医薬品コード（YJコード）"
* ^experimental = false
* ^url = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-yj"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system  urn:oid:1.2.392.100495.20.1.73

ValueSet:  JP_valueSet_drugCode_hot9
Id:   jp-valueSet-drugCode-hot9
Title: "JP valueSet drugCode hot9"
Description: "MEDIS 医薬品コードHOTコード（9桁）"
* ^experimental = false
* ^url = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-hot9"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system   urn:oid:1.2.392.200119.4.403.1

/*
ValueSet:  JP_valueSet_drugCode_gs1_14
Id:   jp-valueSet-drugCode-gs1-14
Title: "JP valueSet drugCode gs1 14"
Description: "医薬品コードGTIN 14桁"
* ^experimental = false
* ^url = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-gs1-14"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system   urn:oid:2.51.1.1
*/

ValueSet:  MHLW_valueSet_drugCode_generalNameCode
Id:   mhlw-valueSet-drugCode-generalNameCode
Title: "MHLW valueSet drugCode generalNameCode"
Description: "厚労省一般処方名マスター(厚労省保険局コード)"
* ^experimental = false
* ^url = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-drugCode-generalNameCode"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-02-25"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system  urn:oid:1.2.392.100495.20.1.81

