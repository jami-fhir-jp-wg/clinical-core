Profile:        JP_FamilyMemberHistory_eCS
Parent:			JP_FamilyMemberHistory
Id:             JP-FamilyMemberHistory-eCS
Description:    "診療情報・サマリー汎用 FamilyMemberHistory"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_FamilyMemberHistory_eCS"
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 1.. MS
  * insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。")


* status 1..1 MS
* status = #partial
* dataAbsentReason 0..1 MS      //この家族の情報がとれない理由コード
* dataAbsentReason ^short = "家族の情報がとれない理由コード"
* dataAbsentReason ^definition = "家族の情報がとれない理由コード"
* dataAbsentReason from http://hl7.org/fhir/ValueSet/history-absent-reason

* patient 1..1 MS
* patient ^short = "対象となる患者リソースへの参照。"
* patient ^definition = "対象となる患者リソースへの参照。"
* patient only Reference(JP_Patient)

* date 0..1 MS
* date ^short = "家族歴情報が取得された、または更新された日時。"
* date ^definition = "家族歴情報が取得された、または更新された日時。"
* date only dateTime

* name 0..1 MS
* name ^short = "この家族の名前。通称や患者からの呼び名でもよい"
* name ^definition = "この家族の名前。通称や患者からの呼び名でもよい"

* relationship 1..1 MS
* relationship ^short = "患者に対するこの家族の関係"
* relationship ^definition = "患者に対するこの家族の関係"
* relationship.coding 1..1 MS
* relationship.coding.system 1..1 MS
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode" (exactly)
* relationship.coding.code 1..1 MS
* relationship.coding.display 0..1 MS

* sex 0..1 MS
* sex.coding 1..1 MS
* sex.coding.system 1..1 MS
* sex.coding.system = "http://hl7.org/fhir/administrative-gender" (exactly)
* sex.coding.display 0..1 MS   // male | female | other | unknown

* age[x] 0..1 MS
* age[x] ^short = "この家族の年齢。"
* age[x] ^definition = "この家族の年齢。"

* estimatedAge  0..1 MS
* estimatedAge ^short = "上記年齢は（計算やアルゴリズムによる）推定値によるものであれば true、それ以外は false。"

* deceased[x]  0..1 MS
* deceased[x] ^short = "この家族が死亡しているかどうか。"
* deceased[x] ^definition = "家族が死亡している場合に、その真偽、年齢、時期などのいずれかひとつの要素で記述する。"

* note 0..* MS
* note ^short = "この家族に関する一般的な情報のテキスト記述。"
* note ^definition = "この家族に関する一般的な情報のテキスト記述。"

* condition 0..* MS
* condition ^short = "家族が持っていた重要な健康状態（家族歴に記述すべき疾病等。複数記述できる。"
* condition ^definition = "家族が持っていた重要な健康状態（家族歴に記述すべき疾病等）。複数記述できる。"
* condition.code 1..1 MS
* condition.code ^short = "疾病コード情報またはテキスト情報"
* condition.code ^definition = "疾病コード情報またはテキスト情報"
* condition.code.coding 0..1 MS
* condition.code.text 0..1 MS
* condition.code.text ^short = "疾病のテキスト情報（コードにより十分表現できない場合などに使用）"
* condition.code.text ^definition = "疾病のテキスト情報（コードにより十分表現できない場合などに使用）"

* condition.onsetAge 0..1 MS
* condition.onsetAge ^short = "その家族における疾病の（発症）年齢。"
* condition.onsetAge ^definition = "その家族における疾病の（発症）年齢。"











