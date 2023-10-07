// ==================================================
//   Profile 定義 FHIR臨床コア情報 Clinical-coreセット
//   処方オーダの１処方薬情報 リソースタイプ:MedicationRequest
//   親プロファイル:JP_MedicationRequest
// ==================================================
Profile: JP_MedicationRequest_eCS
Parent: JP_MedicationRequest
Id: JP-MedicationRequest-eCS
Title:  "Core6 : JP_MedicationRequest_eCS"
Description: "診療主要6情報サマリー用　MedicationRequestリソース（処方オーダの１処方薬情報）プロファイル"
* ^url = $JP_MedicationRequest_eCS
* ^status = #active
* ^date = "2023-10-04"
* . ^short = "診療主要情報における処方オーダの１処方薬情報の格納に使用する"
* . ^definition = "診療主要情報・厚労省6情報などにおける処方オーダの１処方薬情報の格納に使用する"
* . ^comment = ""

* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 0..1 MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary")
* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "$this"
* meta.tag  ^slicing.rules = #open
* meta.tag contains lts 0..1 MS
  and uninformed 0..1 MS

* meta.tag[lts] = $JP_ehrshrs_indication_CS#LTS
  * insert relative_short_definition("電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("長期保存情報フラグ　固定値 LTSを設定する。")

// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains patient 1..1
    and encounter 0..1
    and organization 0..1
    and author 0..1
    and order 0..1

* contained[patient] only  JP_Patient
  * insert relative_short_definition("診療主要情報における患者情報をコンパクトに格納したPatientリソース")
  * ^comment = "patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースの必須要素だけが含まれればよい。電子カルテ情報共有サービスでは、JP_Patientリソースのcontainedは必須。"

* contained[encounter] only  JP_Encounter
  * insert relative_short_definition("診療主要情報における入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースの必須要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[organization] only  JP_Organization
  * insert relative_short_definition("診療主要情報における診療科情報をコンパクトに格納したOrganizationリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Organizationリソースの必須要素だけが含まれればよい。"

* contained[author] only  JP_Practitioner
  * insert relative_short_definition("診療主要情報における記録医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースの必須要素だけが含まれればよい。"

* contained[order] only  JP_ServiceRequest
  * insert relative_short_definition("診療主要情報における記録医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースの必須要素だけが含まれればよい。"


* identifier  MS
  * insert relative_short_definition("この１処方薬情報を作成した施設内で、この１処方薬情報を他の処方薬情報と一意に区別できるID。このID情報をキーとして１処方薬情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。")
  * ^comment = "１処方薬情報を他の１処方薬情報と一意に区別できるIDを発番できない場合には、省略可能であるが、その場合にはbasedOnで指し示す処方オーダ情報の中に、この処方を作成した施設内で元のオーダを一意に識別できるIDを格納することが望ましい。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains resourceInstance-identifier 1..1 MS
* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].system ^comment = "この１処方薬情報を作成した施設内で、この１処方薬情報を他の処方薬情報と一意に区別できるIDを発番できる場合にのみ、このsystem値（"http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"）を使用すること。"
* identifier[resourceInstance-identifier].value 1..1 MS
  * insert relative_short_definition("１処方薬情報を識別するIDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。例）\"1311234567-2021-00123456\"")

* status = #completed
* intent = #order

* medication[x] ^short = "医薬品コードと医薬品名称。ひとつの 必須のtext 要素と、複数の coding 要素を記述できる。"
* medication[x] ^definition = "本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず text 要素に格納した上で、coding要素を繰り返すことでHOT9やYJコードなど複数のコード体系で医薬品コードを並記することが可能。coding要素を繰り返すことでHOT9 やYJコードなど複数のコード体系で医薬品コード並記することが可能。\r\n本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。\r\n日本では同じ用法の複数の薬剤をひとつの処方区分とすることがある。複数の薬剤を表記するMedication Resourceのインスタンスを参照する。"
* medication[x] MS
* medication[x].coding ^slicing.discriminator.type = #value
* medication[x].coding ^slicing.discriminator.path = "system"
* medication[x].coding ^slicing.rules = #open
* medication[x].coding contains
    codingHOT7 0..1 MS and
    codingHOT9 0..1 MS and
    codingYJ 0..1 MS and
    codingGS1 0..1 MS and
    codingGeneralName 0..1 MS
* medication[x].coding[codingHOT7].system 1.. MS
* medication[x].coding[codingHOT7].system = "urn:oid:1.2.392.200119.4.403.2" (exactly)
  * insert relative_short_definition("HOT7コードの識別ID")
* medication[x].coding[codingHOT7].code 1.. MS
* medication[x].coding[codingHOT7].code from http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-hot7
  * insert relative_short_definition("HOT7医薬品コード\(HOT9の末尾２桁である販社コードが不明の場合に限る\)")
* medication[x].coding[codingHOT7].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].coding[codingHOT9].system 1.. MS
* medication[x].coding[codingHOT9].system = "urn:oid:1.2.392.200119.4.403.1" (exactly)
  * insert relative_short_definition("HOT9コードの識別ID")
* medication[x].coding[codingHOT9].code 1.. MS
* medication[x].coding[codingHOT9].code from http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-hot9
  * insert relative_short_definition("HOT9医薬品コード")
* medication[x].coding[codingHOT9].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].coding[codingYJ].system 1.. MS
* medication[x].coding[codingYJ].system = "urn:oid:1.2.392.100495.20.1.73" (exactly)
  * insert relative_short_definition("YJコードを識別するsystem値")
* medication[x].coding[codingYJ].code 1.. MS
* medication[x].coding[codingYJ].code from http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-yj
* medication[x].coding[codingYJ].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].coding[codingGS1].system = "urn:oid:2.51.1.1" (exactly)
  * insert relative_short_definition("GS1標準の識別コードを示すsystem値")
* medication[x].coding[codingGS1].system MS
* medication[x].coding[codingGS1].code ^definition = "GS1標準の識別コード。医薬品コードおよび医療材料等コードとして、調剤包装単位（最少包装単位、個別包装単位）14桁のフォーマットで使用する。"
* medication[x].coding[codingGS1].code MS
* medication[x].coding[codingGS1].code  from http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-gs1-14
* medication[x].coding[codingGS1].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].coding[codingGeneralName].system = "urn:oid:1.2.392.100495.20.1.81" (exactly)
  * insert relative_short_definition("厚生労働省保険局が定める一般処方名マスターコードを識別するcsystem値")
* medication[x].coding[codingGeneralName].system MS
* medication[x].coding[codingGeneralName].code ^definition = "厚生労働省保険局が定める一般処方名マスターコード"
* medication[x].coding[codingGeneralName].code MS
* medication[x].coding[codingGeneralName].code from http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-drugCode-generalNameCode
* medication[x].coding[codingGeneralName].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].text 1..1 MS
  * insert relative_short_definition("医薬品名称。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず設定する。")


* subject 1..1   MS   // MS 追加
* subject only Reference(JP_Patient)
* subject ^short = "処方対象となる患者のFHIRリソースへの参照。"
* subject ^definition = "対象となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（、保険個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述など。"
* subject ^comment = "電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合は、JP_Patientタイプのリソース（Patient.idの値が\"#patient203987\"と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのContainedリソースのid値(Patient.id)を{\"reference\" : \"#patient203987\" }のように記述する"

* encounter 0..1 MS
* encounter only  Reference(JP_Encounter)
* encounter ^short = "処方を発行した受診情報（入外区分など）"
* encounter ^definition = "処方を発行した受診情報（入外区分など）を表すEncounterリソース（Containedリソース）への参照"
* encounter ^comment = "Containedリソースに含まれるEncounterリソースをリソース内で参照する。"

* requester 0.. MS
* requester only Reference(JP_Practitioner)
* requester ^short = "処方者"
* requester ^definition = "処方者を表すPractitionerリソース（Containedリソース）への参照"
* requester ^comment = "Containedリソースに含まれるPractitioner（医療者）リソースをこのリソース内で参照する。"

* authoredOn 1..1 MS

* basedOn 0..1   MS
* basedOn ^short = "処方オーダ情報"
* basedOn only Reference(JP_ServiceRequest)
* basedOn ^definition = "処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照"
* basedOn ^comment = "元のオーダID情報や処方依頼に関する情報（処方者の所属や診療科など）が記述されるContainedリソースに含まれるServiceRequest（処方オーダー情報）リソースをこのリソース内で参照する。"

* note ..1 MS
* note ^comment = "単一の薬剤に対する調剤者に対する指示は、本要素ではなく、MedicationRequestリソースのdispenseRequest要素に対して本文書で定義した拡張「InstructionForDispense」（http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense）を使用する。\r\n患者に対する補足指示や注意や、不均等投与指示などは、 MedicationRequestリソースのdosageInstruction.additionalInstructionで記述する。\r\n本要素は、それらでは伝えられない薬剤単位の備考や指示を記述する。"

* note.text ^definition = "備考文字列。markdown 記法により記述できる。"
* note.text ^comment = "例）”4月1日から4日間服用。2週間休薬後、4月19日から4日間服用。患者に書面にて説明済み。”"
* note.text MS

* dosageInstruction 0..* MS
* dosageInstruction.extension ^slicing.discriminator.type = #value
* dosageInstruction.extension ^slicing.discriminator.path = "url"
* dosageInstruction.extension ^slicing.rules = #open
* dosageInstruction.extension MS

* dosageInstruction.extension[periodOfUse] 1..1 MS
* dosageInstruction.extension[periodOfUse].valuePeriod  1..1 MS
* dosageInstruction.extension[periodOfUse].valuePeriod ^definition = "MedicationRequestに投与期間の開始日を明示するための拡張。\r\n投与期間の終了日は記述しない。これは例えば隔日投与の場合に、終了日が服用しない日となり紛らわしいためである。"
* dosageInstruction.extension[periodOfUse].valuePeriod.start 1..1 MS

* dosageInstruction.extension[usageDuration] 0..1 MS
* dosageInstruction.extension[usageDuration] ^definition = "隔日投与などで実投与日数と処方期間が異なる場合に用いられる。\r\n実際に服用する日数を記述する。"

* dosageInstruction.text 1..1 MS
* dosageInstruction.text ^definition = "JP Coreでは必須。フリーテキストの用法指示。\r\ndosageInstructionが表す処方指示の文字列表現。\r\n例）\"内服・経口・１日３回朝昼夕食後　１回１錠　７日分\""

* dosageInstruction.additionalInstruction ^short = "患者に対する補足指示や注意"
* dosageInstruction.additionalInstruction ^definition = "補足的な処方指示。\r\n本仕様では、不均等投与を1日用法として記載する場合に、各回ごとのJAMI補足補足用法コードを記述するために使用する。\r\nまた、隔日投与、曜日指定投与の場合にも、JAMI補足補足用法コードを使用して記述する。"
* dosageInstruction.additionalInstruction 0..* MS
* dosageInstruction.additionalInstruction.coding 1..* MS
* dosageInstruction.additionalInstruction.coding.system 1..1 MS
* dosageInstruction.additionalInstruction.coding.system ^definition = "JAMI補足用法８桁コードを識別するURI。"
* dosageInstruction.additionalInstruction.coding.code 1..1 MS
* dosageInstruction.additionalInstruction.coding.code ^definition = "JAMI 補⾜⽤法コード８桁を指定する。"
* dosageInstruction.additionalInstruction.coding.display 0.. MS
* dosageInstruction.additionalInstruction.coding.display ^definition = "コードの表示名。\r\n例）\"不均等・１回目・４錠\""
* dosageInstruction.additionalInstruction.text 1..1 MS
* dosageInstruction.additionalInstruction.text ^definition = "dosageInstruction.additionalInstruction要素に、1 日の服用回数分だけ繰り返し、JAMI補足用法コードを使用し記述する仕様であるが、コード化できるかどうかにかかわらず常にテキストでも記述する。"

* dosageInstruction.timing　1..1 MS
* dosageInstruction.timing.event ^definition = "服用タイミングを具体的な日時で指定する。複数回の指定日で指示する場合には、本要素を繰り返す。"
* dosageInstruction.timing.event MS
* dosageInstruction.timing.repeat.boundsDuration.value MS
* dosageInstruction.timing.code 1.. MS
* dosageInstruction.timing.code from http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreOrderUsageCode
* dosageInstruction.timing.code ^short = "用法コード"
* dosageInstruction.timing.code ^definition = "服用タイミングなどを表す用法をJAMI標準用法コード16桁コードで記述する。"
* dosageInstruction.timing.code.coding 1..1 MS
* dosageInstruction.timing.code.coding ^definition = "JAMI １６桁用法コードでの記述を必須としており、そのコードに対応する用法文字列は、 display要素に記述されるため、text要素と併用すると不一致があった場合に混乱するためtext要素は記述しない。"
* dosageInstruction.timing.code.coding.system = "urn:oid:1.2.392.200250.2.2.20" (exactly)
* dosageInstruction.timing.code.coding.system MS
* dosageInstruction.timing.code.coding.code ^short = "JAMI標準用法コード"
* dosageInstruction.timing.code.coding.code MS
* dosageInstruction.timing.code.coding.code ^definition = "JAMI標準用法コード。\r\n例）\"1013044400000000\""
* dosageInstruction.timing.code.coding.display ^short = "JAMI標準用法コードの表示名。"
* dosageInstruction.timing.code.coding.display MS
* dosageInstruction.timing.code.coding.display ^definition = "JAMI標準用法コードの表示名。\r\n例）\"内服・経口・１日３回朝昼夕食後\""
* dosageInstruction.timing.code.text ^definition = "コード化されなかたテキストを記述する。コード化されたdisplay要素で情報が十分な場合には、本text要素は記述しない。"
* dosageInstruction.timing.code.text MS
* dosageInstruction.doseAndRate ^definition = "薬剤が投与される量。"
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.type ^definition = "力価区分。力価区分コード。\r\n本要素は、安全性のため省略せずに必須とする。\r\n用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。"
* dosageInstruction.doseAndRate.type MS
* dosageInstruction.doseAndRate.type.coding.system ^definition = "力価区分コードのコード体系を識別するURI。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　第１版別表４を準用。"
* dosageInstruction.doseAndRate.type.coding.system MS
* dosageInstruction.doseAndRate.type.coding.code ^definition = "力価区分コード（1：製剤量　2：原薬量）"
* dosageInstruction.doseAndRate.type.coding.code MS
* dosageInstruction.doseAndRate.type.coding.display ^definition = "力価区分コードの表示名（1：製剤量　2：原薬量）"
* dosageInstruction.doseAndRate.type.coding.display MS
* dosageInstruction.doseAndRate.dose[x] ^definition = "1回投与量。\r\n用量は、1回投与量の記録を基本とし、MedicationRequestリソースの dosageInstruction.doseAndRate.doseQuantity要素 にSimpleQuantity型で記述する。"
* dosageInstruction.doseAndRate.dose[x] MS
* dosageInstruction.doseAndRate.doseQuantity.system ^definition = "医薬品単位略号を識別するOID。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dosageInstruction.doseAndRate.doseQuantity.system MS
* dosageInstruction.doseAndRate.doseQuantity.code ^definition = "医薬品単位略号。\r\n例）"
* dosageInstruction.doseAndRate.doseQuantity.code MS
* dosageInstruction.doseAndRate.rateRatio ^definition = "単位時間内での薬剤量。JP Coreでは1 日投与量を表す。\r\n例）１日３錠　の場合、 rateRatio.numerator.value=3  、 rateRatio.numerator.unit=\"錠\" 、　、 rateRatio.numerator.system=\"urn:oid:1.2.392.100495.20.2.101\" 、rateRatio.numerator.code=\"TAB\""
* dosageInstruction.doseAndRate.rateRatio MS
* dosageInstruction.doseAndRate.rateRatio.numerator.value ^definition = "1 日投与量。"
* dosageInstruction.doseAndRate.rateRatio.numerator.value MS
* dosageInstruction.doseAndRate.rateRatio.numerator.system ^definition = "医薬品単位略号を識別するOID。固定値。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dosageInstruction.doseAndRate.rateRatio.numerator.system MS

* dispenseRequest 0..1 MS
* dispenseRequest ^definition = "調剤情報。\r\n薬剤オーダー(MedicationRequest, Medication Prescription, Medication Orderなどとしても表現される）や薬剤オーダーとの一部としての薬剤の払い出しあるいは提供。この情報はオーダーとしてかならず伝えられるというわけではないことに注意。薬剤部門で調剤・払い出しを完了するための施設（たとえば病院）やシステムでのサポートに関する設定をしてもよい。"
* dispenseRequest.extension ^slicing.discriminator.type = #value
* dispenseRequest.extension ^slicing.discriminator.path = "url"
* dispenseRequest.extension ^slicing.rules = #open
* dispenseRequest.extension[expectedRepeatCount] MS
* dispenseRequest.quantity.value ^definition = "調剤量。精度を含めた値が暗示される。\r\n例）１日３錠で７日分の場合、この要素には21 が設定される。"
* dispenseRequest.quantity.value MS
* dispenseRequest.quantity.system ^definition = "医薬品単位略号を識別するURL。urn:oid:1.2.392.200119.4.403.1で固定される。\r\n厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dispenseRequest.quantity.system ^comment = "医薬品単位略号はひとつのリソース記述のなかで１種類のコード体系に統一すること。"
* dispenseRequest.quantity.system MS
* dispenseRequest.quantity.code ^comment = "厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dispenseRequest.quantity.code ^requirements = "どのような形式であっても医薬品単位略号はひとつのリソース記述のなかで１種類のコード体系に統一すること。"
* dispenseRequest.quantity.code MS
* dispenseRequest.expectedSupplyDuration.value ^definition = "調剤日数。\r\n例）１日３錠で７日分の場合、この要素には 7が設定される。"
* dispenseRequest.expectedSupplyDuration.value MS
* dispenseRequest.performer 
  * ^comment = "当面、コア情報ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。" 

* substitution.allowedCodeableConcept 0..1 MS
* substitution.allowedCodeableConcept.coding.system ^definition = "後発品変更不可コードを識別するURI。固定値。\r\n厚生労働省電子処方箋CDA規格第１版　別表８ 後発品変更不可コード 　OID: 1.2.392.100495.20.2.41"
* substitution.allowedCodeableConcept.coding.system MS
* substitution.allowedCodeableConcept.coding.code ^definition = "後発品変更不可コード。\r\n不可の場合には1を設定する。\r\n厚生労働省電子処方箋CDA規格第１版　別表８ 後発品変更不可コード 　\r\n0 変更可　（省略可）\r\n1 後発品変更不可\r\n2 剤形変更不可\r\n3 含量規格変更不可"
* substitution.allowedCodeableConcept.coding.code MS
* substitution.aallowedCodeableConcept.coding.display ^definition = "後発品変更不可コード表示名。\r\n0 変更可\r\n1 後発品変更不可\r\n2 剤形変更不可\r\n3 含量規格変更不可"
* substitution.allowedCodeableConcept.coding.display MS
* substitution.reason ^definition = "オーダー情報では、後発品変更不可の理由。"
* substitution.reason MS
* substitution.reason.text ^definition = "理由を表す文字列。\r\n例）　\"患者からの強い要望により\""
* substitution.reason.text MS
