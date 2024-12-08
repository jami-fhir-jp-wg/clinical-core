/*
実装必要な未実装チェック
1）　CLINSでは、MedicationRequest.dosageInstruction.timing.code.coding は、処方箋用法コードによりコード化することが必須。
2）　その他、CLINSでは必須という要素のチェックを別ファイルに定義して、それをすべて行うこと。
*/

// R1112- 患者氏名に漢字、カナのどちらかが存在している　未使用
Invariant: either-KanjiName-KanaName-exist
Description: "R1112- 患者氏名に漢字、カナのどちらかが存在している。"
Severity: #error
Expression: "name.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation' and value.ofType(code)='IDE').exists() or name.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation' and value.ofType(code)='SYL').exists()"

// R1113- 患者氏名テキストに全角空白が含まれるのはエラーとする。（半角空白はOK）
Invariant: kanjiName-kanaName-donot-contain-ZenkakuKuuhaku
Description: "R1113- 患者氏名に漢字、カナにおいては姓と名を区切らないか、または半角空白で区切る。全角空白は含まれてはならない。"
Severity: #error
Expression: "name.where(extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation').exists()).where(text.contains('　')).exists().not()"

// R1010-  患者IDチェック

Invariant: valid-system-local-patientID
Description: "R1010:施設患者IDを記述する場合には、identifier.systemは、'urn:oid:1.2.392.100495.20.3.51.[1+施設番号10桁]'でなければならない。"
Severity: #error
Expression: "(identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').count()=1 and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.')).system.substring(31,1) = '1' and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.')).system.substring(32).matches('^[0-4][0-9][1-3][0-9]{7}$')) or (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').empty())"


Invariant: valid-system-local-patientID-with-institutionNumber　//未使用
Description: "R1011:施設患者IDを記述する場合には、identifier.systemは、'urn:oid:1.2.392.100495.20.3.51.[1+施設番号10桁]'であり、かつその施設番号10桁はextension[eCS_InstitutionNumber].valueIdentifier.value値と一致しなければならない。"
Severity: #error
Expression: "(identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').count()=1 and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.')).system.substring(31,11) = '1' + extension('http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').value.ofType(Identifier).value) or (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').empty())"

Invariant: valid-system-insurance-patientIdentifier
Description: "R1012:被保険者識別子情報(identifier.system=\"http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID\")は１つだけ必須。"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID').count()=1)"

Invariant: valid-value-insurance-patientIdentifier
Description: "R1013:identifier.value 被保険者識別子情報の形式は、\"保険者等番号:被保険者記号:被保険者番号:被保険者証等枝番\"で、それぞれ半角英数字8桁固定、半角または全角文字列(空白を含まない)、半角または全角文字列(同)、空文字列または半角数字2桁固定(00-99)であり、それぞれ存在しない場合には、空文字列とする。"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID').count()=1 and identifier.where(system = 'http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID').value.matches('^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:(.{0}|[0-9][0-9])$'))"
// '^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:0[0-9]$''
// '^[0-9]{8}:[^:]*:[^:]*:[0-9]{2}$'

// R1021-  施設IDチェック
Invariant: valid-value-institutionNumber
Description: "R1021:医療機関番号　extension[eCS_InstitutionNumber].valueIdentifier.value値は、２桁都道府県番号、１桁医療機関区分(1|2|3)、７桁保険医療機関番号の連結１０桁とする。"
Severity: #error
Expression: "extension('http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').value.ofType(Identifier).value.matches('[0-4][0-9][1-3][0-9]{7}')"

Invariant: valid-value-institutionNumberExtension
Description: "施設番号　valueIdentifier.value値は、２桁都道府県番号、１桁医療機関区分(1|2|3)、７桁保険医療機関番号の連結１０桁とする。"
Severity: #error
Expression: "value.ofType(Identifier).value.matches('[0-4][0-9][1-3][0-9]{7}')"


Invariant: valid-system-local-doctorID //未使用
Description: "R1090:施設医師IDを記述する場合には、identifier.systemは、'urn:oid:1.2.392.100495.20.3.41.[1+施設番号10桁]'でなければならない。"
Severity: #error
Expression: "(identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.41.').count()=1 and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.41.')).system.substring(31,1) = '1' and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.41.')).system.substring(32).matches('^[0-4][0-9][1-3][0-9]{7}$')) or (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.41.').empty())"

// R2011-  アレルギー・薬剤アレルギー等関係チェック
Invariant: warning-medication-allergy　//未使用
Description: "注意喚起：R2011:薬剤アレルギー等情報として本リソース種別を使用するのであれば、category要素は\"medication\"で、criticality要素は\"high\"を設定しなければならない。このままcriticality要素が\"high\"以外で差し支えなければ修正不要。"
Severity: #warning
Expression: "(category.where($this='medication').exists() and criticality='high') or (category.where($this='medication').exists()).not()"


// R2012  薬剤アレルギー等で「YJまたは一般名医薬品コード」を使用すること（電子カルテ情報交換サービスの場合）
Invariant: valid-contraIndication-code　//未使用
Description: "R2012:薬剤アレルギー等情報としてcategory要素は\"medication\"で、criticality要素は\"high\"の場合には、code要素はYJまたは一般名医薬品コードでなければならない。それ以外の（薬剤アレルギー等でない）場合にはJFAGYコードを使用すること。"
Severity: #error
Expression: "(category.where($this='medication').exists() and criticality='high' and (code.coding.where(system = 'http://capstandard.jp/iyaku.info/CodeSystem/YJ-code').count()=1 or code.coding.where(system = 'urn:oid:1.2.392.100495.20.1.81').count()=1)) or (category.where($this='medication').count()=0 or criticality!='high')"

// R2013  アレルギーではJFAGYを使用すること（電子カルテ情報交換サービスの場合）
Invariant: valid-allergy-code　//未使用
Description: "R2013:薬剤アレルギー等でないアレルギーの場合にはJFAGYコードを使用すること。"
Severity: #error
Expression: "(category.where($this='medication').count()=1 and criticality='high') or ((category.where($this='medication').count()=0 or criticality!='high') and (code.coding.where(system = 'http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS').count()=1 or  code.coding.where(system = 'http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS').count()=1 or code.coding.where(system = 'http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS').count()=1))"

// 
Invariant: validUsage-MedicationUsage-codesystem
Description: "R5020:厚労省用法コード（電子処方箋）かまたはダミー用法コードのどちらか一方だけが必ず使われている。"
Severity: #error
Expression: "timing.code.coding.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_MedicationUsage_Uncoded_CS').where(code='0X0XXXXXXXXX0000').exists() xor timing.code.coding.where(system='http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription').exists()"

Invariant: invalidUsage-MedicationUsage-codesystem
Description: "R5021:厚労省用法コード（電子処方箋）とダミー用法コードの両方が同時に使用されていることはない。"
Severity: #error
Expression: "(timing.code.coding.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_MedicationUsage_Uncoded_CS').where(code='0X0XXXXXXXXX0000').exists() and timing.code.coding.where(system='http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription').exists()).not()"


Invariant: mhlw-check　//未使用
Description: "厚労省用法コード（電子処方箋）がつかわれている"
Severity: #error
Expression: "timing.code.coding.where(system='http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription').exists()"

Invariant: mhlw-not-check　//未使用
Description: "厚労省用法コード（電子処方箋）がつかわれていない"
Severity: #error
Expression: "timing.code.coding.where(system='http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription').exists().not()"

Invariant: dummy-check　//未使用
Description: "ダミー用用コードがつかわれている"
Severity: #error
Expression: "timing.code.coding.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_MedicationUsage_Uncoded_CS').where(code='0X0XXXXXXXXX0000').exists()"

Invariant: dummy-not-check  //未使用
Description: "ダミー用用コードがつかわれていない"
Severity: #error
Expression: "timing.code.coding.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_MedicationUsage_Uncoded_CS').where(code='0X0XXXXXXXXX0000').exists().not()"



// 医療機関番号１０桁：[0-4][0-9][1-3][0-9]{7}
// 保険者番号８桁：[0-9]{8}
// 被保険者記号：[^:^\\\\s^　]* 
// 被保険者番号：[^:^\\\\s^　]*
// 被保険者枝番：0[0-9]
// 被保険者識別子: ^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:0[0-9]$
// 医療機関内Bundle識別子：[A-Z0-9\\\\-]{1,128}

// R0211-   Bundle CLINSのチェック
Invariant: first-bundle-entry-is-Patient
Description: "R0211:最初のentryはPatientでなければならない。"
Severity: #error
Expression: "entry.first().resource.is(Patient)"

// バージョン指定部分を除くURLを一致チェック
Invariant: patients-profile-is-JP-Patient-eCS
Description: "R0212:最初のentryであるPatientは、JP_Patient_eCSプロファイルに準拠していなければならない。"
Severity: #error
Expression: "entry.first().resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Patient_eCS'))).exists() or entry.first().resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Patient_eCS').exists()"

Invariant: bundle-profile-is-JP-Bundle-CLINS
Description: "R0213:BundleはJP-Bundle-CLINSプロファイルに準拠していなければならない。"
Severity: #error
//Expression: "meta.profile.where($this.substring(0,63) ='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS').exists()"
// バージョン記述記号の'|'の位置までの部分文字列、またはmeta.profile全体が指定したURLであるかを調べる。
Expression: "meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS'))).exists()  or meta.profile.where($this='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS').exists()"


// Bundleルール meta.tag には system = 'http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS'
// が存在し、
// meta.tag.where(system = 'http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').extsis() 
// その.code は 'AllergyIntolerance', 'Observation', 'Condition'のいずれかであること
// meta.tag.where(system = 'http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code in ('AllergyIntolerance', 'Observation', 'Condition')
Invariant: bundle-meta-tag-resourceType-exists
Description: "R02141:Bundle.meta.tagに、収納するresourceTypeを記述しなければならない。"
Severity: #error
Expression: "meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').exists()"

Invariant: bundle-meta-tag-resourceType-valid
Description: "R02142:Bundle.meta.tagに記述されたresourceTypeは、'AllergyIntolerance', 'Observation', 'Condition'のいずれかであること。"
Severity: #error
Expression: "meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').where(code='AllergyIntolerance').count()=1 or meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').where(code='Observation').count()=1 or meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').where(code='Condition').count()=1"

/*Invariant: bundle-mustHasOneMoreValidResourceType
Description: "R02143:Bundle.meta.tagに記述されたresourceTypeで指定されたAllergyIntolerance, Condition, Observationのリソースが１つ以上含まれていなければならない。"
Severity: #error
(entry.resource.where(resourceType='Observation').exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Observation') or (entry.resource.where(resourceType='Condition').exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Condition') or (entry.resource.where(resourceType='AllergyIntolerance').exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='AllergyIntolerance')
*/

// Bundle のidentifier. [\\\\^]
// Bundle.identifier.system : system値として、”http://jpfhir.jp/fhir/clins/bundle-identifier” を設定する。\r\n
// Bundle.identifier.value : 実装ガイド本文 5情報送信仕様--Bundleリソースを識別するIdentifier要素-- に記載の[Bundle-ID]の仕様とする。"
Invariant: valid-system-bundleIdenfifier
Description: "R02151:Bundle.identifier.sysyemは、http://jpfhir.jp/fhir/clins/bundle-identifier"
Severity: #error
Expression: "identifier.where(system='http://jpfhir.jp/fhir/clins/bundle-identifier').exists()"

// R02152- BundleIDチェック
Invariant: valid-value-bundleIdenfifier
Description: "R2152:Bundle.identifier.value は、医療機関番号10桁^西暦４件^36文字以内の半角文字列（英字、数字、ハイフン記号のみ可）であること。'^[0-4][0-9][1-3][0-9]{7}[\\^]20[2-3][0-9][\\^][A-Za-z0-9\\-]{1,36}$'"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/clins/bundle-identifier').count()=1 and identifier.where(system = 'http://jpfhir.jp/fhir/clins/bundle-identifier').value.matches('^[0-4][0-9][1-3][0-9]{7}[\\\\^]20[2-3][0-9][\\\\^][A-Za-z0-9\\\\-]{1,36}$'))"



// R3010 医薬品コードの妥当性チェック（標準コードなしもOK）

Invariant: warning-anyOf-YJ-or-KikakubetsuYakuzaiSeibun-medicationCode
Description: "R3010:medicationCodeableConcept は、電子カルテ共有サービスで使用する場合には、YJコード、規格別薬剤成分コードのいずれかを必須とする。その上でそれ以外のコード体系が存在してもよい。電子カルテ共有サービスで使用するのでなければこの警告は無視できる。"
Severity: #warning
Expression: "(medication.ofType(CodeableConcept).coding.where(system = 'http://capstandard.jp/iyaku.info/CodeSystem/YJ-code').count()=1) or (medication.ofType(CodeableConcept).coding.where(system = 'http://capstandard.jp/CodeSystem/KikakubetsuYakuzaiSeibun').count()=1)"

// R3011 医薬品コードの妥当性チェックYJか規格別薬剤成分コードのいずれかが必須（標準コードなしはX）
Invariant: needs-anyOf-YJ-or-KikakubetsuYakuzaiSeibun-medicationCode
Description: "R3011:medicationCodeableConcept は、電子カルテ共有サービスで使用する場合には、YJコード、規格別薬剤成分コードのいずれかを必須とする。その上でそれ以外のコード体系が存在してもよい。"
Severity: #error
Expression: "((medication.ofType(CodeableConcept).coding.where(system = 'http://capstandard.jp/iyaku.info/CodeSystem/YJ-code').count()=1) or (medication.ofType(CodeableConcept).coding.where(system = 'http://capstandard.jp/CodeSystem/KikakubetsuYakuzaiSeibun').count()=1)) and ((medication.ofType(CodeableConcept).coding.where(system = 'http://jpfhir.jp/fhir/eCS/CodeSystem/MedicationCodeNocoded_CS').count()=0))"

// R4011 薬剤アレルギーとその他アレルギー等の情報とを区別するため、電子カルテ情報サービスでは、薬剤アレルギー等情報として本リソース種別を使用する場合には、必ず本要素は"medication"として存在しなければならず、criticality要素は"high"を設定しなければならない。これ以外の場合には、本リソースの情報はやその他のアレルギー情報として取り扱われる。
// Invariant: needs-anyOfStandardCode-medication

// R6021 Observation CLINS ではローカルコードの記述は必須である。
Invariant: needs-localCode-observation-laboresult
Description: "R6021:observation.code.codingには、ローカルコード記述が必須である。（system=\"http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS\")"
Severity: #error
Expression: "entry.select(resource as Observation).all(code.coding.where(system ='http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS').exists())"

// R6081: hasMember要素は、電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では使用できない
Invariant: observation-has-no-hasMember
Description: "R6081: hasMember要素は、電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では使用できない"
Severity: #error
Expression: "entry.select(resource as Observation).all(hasMember.exists().not())"

// R6031 Observation CLINS ではLTS長期保存フラグが指定感染症でのみ記述可能である。
Invariant: check-LTS-MemberOf-infectionLabo
Description: "R6031 Observation CLINS ではLTS長期保存フラグが指定感染症でのみ記述可能である。"
Severity: #error
Expression: "entry.select(resource as Observation).all((meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication').exists().not()) or  ((meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication' and code='LTS').exists()) and (code.coding.where((memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_InfectionLabo_VS')) or (memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC11/JP_CLINS_ObsLabResult_InfectionLabo_VS'))).exists())))"


// R9011  Bundleに含まれるリソースには、医療機関識別IDが必須である。
Invariant: all-entries-needs-extension-of-institutionNumber
Description: "R9011:Bundleに含まれるPatient以外のリソースには、医療機関識別IDが必須である。"
Severity: #error
Expression: "entry.tail().resource.all(extension.where(url='http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').exists())"

// R901101 リソースには、医療機関識別IDが必須である。
Invariant: resource-needs-extension-of-institutionNumber
Description: "R901101:リソースには、医療機関識別IDが必須である。"
Severity: #error
Expression: "extension.where(url='http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').exists()"


// R9012  Bundleに含まれるリソースには、医療機関識別IDが記述され10桁数字であることが必須である。
Invariant: all-entries-needs-valid-institutionNumber
Description: "R9012:Bundleに含まれるPatient以外のリソースには、医療機関識別IDが記述され10桁数字であることが必須である。"
Severity: #error
Expression: "entry.tail().resource.all(extension.where(url='http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').value.ofType(Identifier).value.matches('^[0-4][0-9][1-3][0-9]{7}$'))"

// R9013O Bundleに含まれるObservationリソースには、Contained JP_Encounterリソースが必須である。
Invariant: observation-needs-contained-of-Encounter
Description: "R9013O:Bundleに含まれるすべてのObservationのリソースには、Contained JP_Encounterリソースが必須である。"
Severity: #error
Expression: "entry.select(resource as Observation).all(contained.meta.where((profile='http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter') or (profile='http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Encounter_eCS')).exists())"
                
// R9013C  Bundleに含まれるConditionリソースには、Contained JP_Encounterリソースが必須である。
Invariant: condition-needs-contained-of-Encounter
Description: "R9013C:Bundleに含まれるすべてのConditionのリソースには、Contained JP_Encounterリソースが必須である。"
Severity: #error
Expression: "entry.select(resource as Condition).all(contained.meta.where(profile.exists() and ((profile.exists() implies profile='http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter') or (profile.exists() implies profile='http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Encounter_eCS'))).exists())"


// R9014C  Bundleに含まれるConditionリソースには、診療科拡張が必須である。
Invariant: condition-needs-extension-of-Department
Description: "R9014C:Bundleに含まれるすべてのConditionリソースには、診療科拡張が必須である。"
Severity: #error
Expression: "entry.select(resource as Condition).all(extension.where(url='http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_Department').exists())"

// R9014O  Bundleに含まれるObservationリソースには、診療科拡張が必須である。
Invariant: observation-needs-extension-of-Department
Description: "R9014O:Bundleに含まれるすべてのObservationリソースには、診療科拡張が必須である。"
Severity: #error
Expression: "entry.select(resource as Observation).all(extension.where(url='http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_Department').exists())"

// R9015C  Bundleに含まれるConditionリソースでは、onsetDateTime要素が必須である。
Invariant: condition-needs-onsetDateTime
Description: "R9013C:Bundleに含まれるすべてのConditionのリソースでは、onsetDateTime要素が必須である。"
Severity: #error
Expression: "entry.select(resource as Condition).all(onset.ofType(dateTime).exists())"

// R9016C  Bundleに含まれるConditionリソースには、encounter要素が必須である。
Invariant: condition-needs-encounter
Description: "R9016C:Bundleに含まれるすべてのConditionのリソースには、encounter要素が必須である。"
Severity: #error
Expression: "entry.select(resource as Condition).all(encounter.exists())"

// R9016O  Bundleに含まれるObservationリソースには、encounter要素が必須である。
Invariant: observation-needs-encounter
Description: "R9016O:Bundleに含まれるすべてのObservationのリソースには、encounter要素が必須である。"
Severity: #error
Expression: "entry.select(resource as Observation).all(encounter.exists())"

// R9017O  Bundleに含まれるObservationリソースには、performer要素が必須である。
Invariant: observation-needs-performer
Description: "R9017O:Bundleに含まれるすべてのObservationのリソースには、performer要素が必須である。"
Severity: #error
Expression: "entry.select(resource as Observation).all(performer.exists())"

// R9018C  Bundleに含まれるCoditionリソースには、abatementDateTime要素が必須である。
Invariant: condition-needs-abatementDateTime
Description: "R9018C:Bundleに含まれるすべてのConditionのリソースには、abatementDateTime要素が必須である。"
Severity: #error
Expression: "entry.select(resource as Condition).all(abatement.ofType(dateTime).exists())"

// R9019O Bundleに含まれるObservationリソースには、Contained JP_Practitionerが必須である。
Invariant: observation-needs-contained-of-Practitioner
Description: "R9019O:Bundleに含まれるすべてのObservationのリソースには、Contained JP_Practitionerリソースが必須である。"
Severity: #error
Expression: "entry.select(resource as Observation).all(contained.meta.where((profile='http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner') or (profile='http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS')).exists())"

// R9020O  Bundleに含まれるObservationリソースには、医療機関番号拡張が必須である。
Invariant: observation-needs-extension-of-InstitutionNumber
Description: "R9020O:Bundleに含まれるすべてのObservationリソースには、医療機関番号拡張が必須である。"
Severity: #error
Expression: "entry.select(resource as Observation).all(extension.where(url='http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').exists())"


// R70010 このリソースには、電子カルテ情報共有サービスのmeta.tagとしては長期保存フラグLTSだけが許可される。
Invariant: meta-tag-code-LTS-restriction
Description: "このリソースには、電子カルテ情報共有サービスのmeta.tagとしては長期保存フラグLTSだけが許可される。"
Severity: #error
Expression: "meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication' and code!='LTS').exists().not()"

// INFO このリソースでは、CLINS送信の場合にperformerが必要である。
Invariant: needs-performer-on-CLINS
Description: "注意喚起：このリソースでは、CLINS送信の場合にはperformerが必要であるが存在しません。CLINS送信でなければ問題ありません。"
Severity: #warning
Expression: "performer.exists()"

