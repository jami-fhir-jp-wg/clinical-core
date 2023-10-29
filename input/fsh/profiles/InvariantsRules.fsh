Invariant: valid-system-local-patientID
Description: "施設患者IDを記述する場合には、identifier.systemは、'urn:oid:1.2.392.100495.20.3.51.[1+施設番号10桁]'であり、かつその施設番号10桁はextension[eCS_InstitutionNumber].valueIdentifier.vaue値と一致しなければならない。"
Severity: #error
Expression: "(identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').count()=1 and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.')).system.substring(31,11) = '1' + extension('http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').valueIdentifier.value) or (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').empty())"


Invariant: valid-system-insurance-patientIdentifier
Description: "被保険者識別子情報(identifier.system=\"http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID\")は１つだけ必須。"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID').count()=1)"

Invariant: valid-value-insurance-patientIdentifier
Description: "identifier.value 被保険者識別子情報の形式は、\"保険者等番号:被保険者記号:被保険者番号:被保険者証等枝番\"で、それぞれ半角英数字8桁固定、半角または全角文字列(空白を含まない)、半角または全角文字列(同)、半角数字2桁固定(1文字目は0)であり、それぞれ存在しない場合には、空文字列とする。"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID').count()=1 and identifier.where(system = 'http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID').value.matches('^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:0[0-9]$')) "
// '^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:0[0-9]$''
// '^[0-9]{8}:[^:]*:[^:]*:[0-9]{2}$'

Invariant: valid-value-institutionNumber
Description: "医療機関番号　extension[eCS_InstitutionNumber].valueIdentifier.value値は、２桁都道府県番号、１桁医療機関区分(1|2|3)、７桁保険医療機関番号の連結１０桁とする。"
Severity: #error
Expression: "extension('http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').valueIdentifier.value.matches('[0-4][0-9][1-3][0-9]{7}')"

Invariant: valid-value-institutionNumberExtension
Description: "施設番号　valueIdentifier.value値は、２桁都道府県番号、１桁医療機関区分(1|2|3)、７桁保険医療機関番号の連結１０桁とする。"
Severity: #error
Expression: "valueIdentifier.value.matches('[0-4][0-9][1-3][0-9]{7}')"

Invariant: waring-medication-allergy
Description: "注意喚起：薬剤禁忌情報として本リソース種別を使用するのであれば、category要素は\"medication\"で、criticality要素は\"high\"を設定しなければならない。このままでよければ修正不要。"
Severity: #warning
Expression: "(category='medication' and criticality='high') or category.exists().not() or category!='medication'"

Invariant: valid-value-bundleIdenfifier
Description: "Bundle.identifier.value は、医療機関番号10桁^被保険者個人識別子^128文字以内の半角文字列（英大文字、数字、ハイフン記号のみ可）であること。'^[0-4][0-9][1-3][0-9]{7}[\\^][0-9]{8}:[^:^\\s^　]*:[^:^\\s^　]*:[0-9]{2}[\\^][A-Z0-9\\-]{1,128}$'"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/clins/bundle-identifier').count()=1 and identifier.where(system = 'http://jpfhir.jp/fhir/clins/bundle-identifier').value.matches('^[0-4][0-9][1-3][0-9]{7}[\\\\^][0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:[0-9]{2}[\\\\^][A-Z0-9\\\\-]{1,128}$'))"
// 医療機関番号１０桁：[0-4][0-9][1-3][0-9]{7}
// 保険者番号８桁：[0-9]{8}
// 被保険者記号：[^:^\\\\s^　]* 
// 被保険者番号：[^:^\\\\s^　]*
// 被保険者枝番：0[0-9]
// 被保険者識別子: ^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:0[0-9]$
// 医療機関内Bundle識別子：[A-Z0-9\\\\-]{1,128}


