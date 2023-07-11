<style type="text/css">

</style>


# 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療情報コアサマリー用にアレルギー情報や不耐性情報、薬剤禁忌情報を記述するためのものである。
# スコープ
## 対象
### 以下のような医学的、もしくは健康上の情報。</h2>
 - アレルギー情報：食品、薬剤、金属、環境、そのほかあらゆる接触または非接触に生体が受ける物質や刺激によって、通常の多くの人には見られない好ましくない生体反応が観察されたという情報。あるいは観察されるかもしれないというリスクが存在するという情報。いずれもその生体内での機序の種類を問わない。
 ただし、薬剤禁忌情報に該当する情報を除く。
 - 不耐(性)情報：本来ならば代謝することが可能な物質に対する代謝能力が弱い、または代謝過程に異常があるなどの理由で、その物質に対して通常では見られない生体反応が観察されたという情報。あるいは観察されるかもしれないというリスクが存在するという情報。いずれもその生体内での機序の種類を問わない。例）乳糖不耐症）
 ただし、アレルギー情報と区別がつけられないことも多い。
 - 薬剤禁忌情報：薬剤使用に際して通常では見られない好ましくない生体反応が観察されたという情報があるために、その薬剤を使用しないように注意すべきとする情報。また、本人の状態や条件が、その薬剤の適用条件に合わないために使用すべきでないという場合を含む。例）妊婦にとっての、催奇形性の可能性があるために妊婦への投与を控えるようにされている薬剤。
### 対象としないこと
以下のような明らかに本人の嗜好や習慣に起因すると考えられる情報。
 - 辛いものが嫌いで食べたくない。
 - タバコは吸わない。
 - 思想や感情上の理由で金のピアスはつけない。
ただし、カレーを含む食品を食べると腹痛が起こりやすいので嫌い、といった場合には、不耐情報またはアレルギー情報と区別できないので、対象として記述することはありうる。
# プロファイル定義
 <a id="tbl-1">**AllergyIntoleranceリソース　アレルギー・不耐情報／薬剤禁忌情報**</a>

<table>
<tr><td>要素<br>Lv1</td><td>要素<br>Lv2</td><td>要素<br>Lv3</td><td>要素<br>Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>resourceType</td><td></td><td></td><td></td><td>1..1</td><td>string</td><td>"AllergyIntolerance"</td><td>AllergyIntoleranceリソースであることを示す</td></tr>

<tr><td>resourceType</td><td>要素2</td><td>要素3</td><td>要素4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

</table>http://terminology.hl7.org/CodeSystem/v2-0203

|要素<br>Lv1|要素<br>Lv2|要素<br>Lv3 |要素<br>Lv4 |多重度|型|値|説明||
|---|---|---|---|---|---|---|---|---|---|
<tr class="lightblue">|resourceType||||1..1|string|"AllergyIntolerance" |**AllergyIntolerance**リソースであることを示す ||</tr>
|meta| |||0..1|Meta| | ||</tr>
||lastUpdated|||1..1|instant| |最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz (例. 2015-02-07T13:28:17.239+09:00)|
||profile|||0..*|canonical(StructureDefinition)|"http://jpfhir.jp/fhir<br>/eClinicalSummary<br>/StructureDefinition<br>/JP_AllergyIntolerance_eClinicalSummary"|準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。値は固定。|
|text| |||0..1|Narrative | |本リソースをテキストで表現したものを入れてもよい。入れる場合には、以降のリソースからシステムにより自動生成されたものに限ること。 |
||status |||1..1|code|"generated"|固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 |
||div|||1..1|xhtml |&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;xxx&lt;/div&gt;|値は例示。 |
<tr bgcolor="lightGreen">|contained| |||1..1\*|Resource|Resource(JP_Patient_eCS_Contained)|診療情報コアサマリーにおける患者情報をコンパクトに格納したPatientリソースを埋め込む||</tr>
<tr bgcolor="lightYellow">|contained| |||0..1\*|Resource|Resource(JP_Encounter_OW_eCS_Contained)|診療情報コアサマリーにおける入院外来情報をコンパクトに格納したEncounterリソースを埋め込む||</tr>
<tr bgcolor="lightYellow">|contained| |||0..1\*|Resource|Resource(JP_Practitioner_eCS_Contained)|診療情報コアサマリーにおける登録医療者情報をコンパクトに格納したPractitionerリソースを埋め込む||</tr>
|<tr bgcolor="lightGreen">|identifier| |||1..1|Identifier| |このアレルギー情報に付番された、削除や更新でキーとして指定される目的のID。type.value要素が"ACSN","PLAC","FILL" のいずれかであるidentifierがひとつだけ必須。 ||
||type |||1..1||"http://jpfhir.jp/fhir<br>/core/IdSystem/resourceInstance-identifier" | |
|||system||1..1||"http://terminology.hl7.org/CodeSystem/v2-0203" | |
|||value||1..1||"ACSN","PLAC","FILL" のいずれか|"ACSN":特定の1つのリソースを常に確実に指示可能なID<br>"PLAC":オーダ依頼時の番号。一括処理時に指定可能な複数のリソースを指定するID<br>"FILL":報告番号、実施番号。一括処理時に指定可能な複数のリソースを指定するID |
||system |||1..1||"http://jpfhir.jp/fhir<br>/core/IdSystem/resourceInstance-identifier" | |
||value|||1..1||"1311234567-2020-00123456" |アレルギー情報IDの文字列。値は例示。 |
|<tr bgcolor="lightYellow">|identifier| |||0..\*|Identifier| |このアレルギー情報に付番されたID ||
||type |||1..1||"http://jpfhir.jp/fhir<br>/core/IdSystem/resourceInstance-identifier" | |
||system |||1..1||"http://jpfhir.jp/fhir<br>/core/IdSystem/resourceInstance-identifier" | |
||value|||1..1||"1311234567-2020-00123456" |アレルギー情報IDの文字列。値は例示。 |
|clinicalStatus| |||0..1|CodeableConcept |"http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"<br>"active"|臨床的状態のステータス。コードで記述する場合にはsyetem値は固定値。clinicalStatus.text のみで記述することもできる。。active \| inactive \| resolved現存、非現存、解消 |
|verificationStatus| |||0..1|CodeableConcept |"http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"<br>"confirmed" |入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コードで記述する場合にはsystem値は固定値。verificationStatus.text のみで記述することもできる。。unconfirmed \| confirmed \| refuted \| entered-in-error未確認、確認ずみ、否定、エラー |
|type| |||0..1|code| "allergy" |副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）。記述する場合は、コード表："http://hl7.org/fhir/allergy-intolerance-type"allergy \| intoleranceアレルギー反応、不耐性反応|
|category| |||0..1\*|code|"food" |特定された原因物質のカテゴリ。記述を可能な限り推奨する。コード表："http://hl7.org/fhir/allergy-intolerance-category"food \| medication \| environment \| biologic食物、医薬品、環境、生物学的 |
|cliticality | |||0..\* |code|"high" |潜在的な臨床的危険性、致命度。記述する場合は、コード表："http://hl7.org/fhir/allergy-intolerance-criticality"low \| high \| unable-to-assess低、高、評価不能 |
|code| |||1..1|CodeableConcept |http://jpfhir.jp/fhir<br>/core/CodeSystem/JP_JfagyFoodAllergen_CS  "J7F7311990"<br>"牛乳・乳製品（詳細不明）"|アレルギー・不耐反応の対象物の情報。jp-coreで定めるallergy-substanceコード表のコードを推奨する。コード化できない場合には、code.text のみで記述する。code.textは必須である。<br>使用するコード表（推奨）：<br>http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS 　（食物アレルギー）http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS　（医薬品アレルギー）http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS　（その他のアレルギー）<br>のいずれかを使用できる。|
|patient | |||1..1|Reference(Patient)|"urn: ....." |対象となる患者リソースへの参照。 |
|encounter | |||0..1|Reference (Encounter) |"urn: ....." |このアレルギ情報が確認され記録された受診情報（入院詳細情報または外来受診情報）への参照.Encounterリソースのインスタンスを参照することでよい。 |
|(onset) | ||||（dateTime、Age、Period、Range、string）のいずれかの型をとる。| |このアレルギー・不耐性状態が同定された時期。5通りのいずれかの要素（onsetDateTime、onseAge、onsetPeriod、onsetRange、onsetString）ひとつを選択して、それにより記述する。複数を選択はできない。onset要素は記述しないで、直接onsetDateTime要素のレベルを記述する。|
||onsetDateTime|||0..1|dateTime| |日付または日時。年や年月だけでもよい。例：2018, 1973-06, 1905-08-23, 2015-02-07T13:28:17+09:00。時刻に24:00 の使用はできない。 |
||onseAge|||0..1|Age | |年齢。患者の申告による、状態が出現し始めた年齢。 |
|| |value |||decimal |"50" |年齢の値。 |
|| |comparator|||code|"&gt;="|要素valueの値の解釈方法。<br>等しい場合には、= は不要。そうでない指定をしたい場合には、&lt; 、 &lt;=、 &gt;= 、 &gt;　のいずれか。<br>例では、「50歳以上で」と記述したい場合には、&gt;= を記述する。 |
|| |unit|||string|"歳" |単位表現 |
|| |system|||uri |"http://unitsofmeasure.org"|単位体系 UCUMコード体系。固定値。|
|| |code|||code|"a"|単位体系における単位コード。コードと意味min：minutesh：hoursd：dayswk：weeksmo：monthsa：years |
||onsetPeriod|||0..1|Preiod| |期間。 |
|| |start ||0..1|DateTime| |期間の開始日時 |
|| |end ||0..1|DateTime| |期間の終了日時 |
||onsetRange |||0..1|Range | |曖昧な時期を最小値と最大値とで記述する。以下の記述例は50歳台。 |
|| |low ||0..1|| | |
|| ||value ||decimal |"50" |年齢の値。 |
|| ||unit||string|"歳" |単位表現 |
|| ||system||uri |"http://unitsofmeasure.org"|単位体系 UCUMコード体系。固定値。|
|| ||code||code|"a"|単位体系における単位コード。コードと意味a：years |
|| |high||0..1|| | |
|| ||value ||decimal |"59" |年齢の値。 |
|| ||unit||string|"歳" |単位表現 |
|| ||system||uri |"http://unitsofmeasure.org"|単位体系 UCUMコード体系。固定値。|
|| ||code||code|"a"|単位体系における単位コード。コードと意味a：years |
||onsetString|||0..1|string|"50歳台" |文字列表現 |
|recordedDate| |||0..1|dateTime| |この状態が最初に記録された日時。 |
|recorder| |||0..1|Reference(Practitioner \| PractitionerRole \| Patient \| RelatedPerson)| |この状態を記録した人情報への参照。 |
|asserter| |||0..1|Reference(Practitioner \| PractitionerRole \| Patient \| RelatedPerson)| |この状態があると確認（主張）した人情報への参照。 |
|lastOccurrence| |||0..1|dateTime| |最後（直近）に知られている発生日時 |
|note| |||0..\* || |状態に関する追加的な情報で他の要素で記述できないような情報。 |
||author ||||| | |
|| |authorString||0..1|string|"看護担当者" |記載者氏名などの文字列。必ずしも氏名でなくてもよい。 |
||time |||0..1|dateTime| |この追加的な情報が作成された日時。 |
||text |||1..1|markdown| |追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。 |
|reaction| |||0..\* |BackboneElement | |対象物質に暴露したことに関連した有害反応の情報 |
||substance|||0..1|CodeableConcept |http://jpfhir.jp/fhir<br>/core/CodeSystem/JP_JfagyFoodAllergen_CS<br> "J7F7311154"<br>"モッツァレラチーズ" |有害反応イベントの原因であると考えられる特定の物質（または医薬品）。jp-coreで定めるallergy-substanceコード表のコードの使用で表現できる場合にはその使用を推奨する。<br>注：特定の反応の物質は、リスクの原因として特定された物質とは異なる場合があるが、それと一貫性がある必要がある。例えば、「reaction.substance」の物質は、**AllergyIntolerance** .code要素と比べて、より具体的な物質（例えば、ブランド薬）または特定された物質を含む複合製品であり得る。 **AllergyIntolerance** .code要素の記述（アレルギー・不耐反応の対象物の情報要素）のみを処理して「reaction.substance」の情報を無視しても、臨床的に安全でなければならない。このリソースを受信して処理するシステムが、もし「reaction.substance」と**AllergyIntolerance** .code要素の記述物質との意味的な包含関係を処理できないのであれば、システムはこの「reaction.substance」要素を無視しなければならない。|
||manifestation|||1..\* |CodeableConcept |"urn:oid:1.2.392.200119.4.101.6"<br>"B0EF"<br>"持続腹痛"<br>"長く続く腹部の痛み" |アレルギー反応に関連する症状や所見。system値はMEDIS標準病名マスター病名交換用コードを使用する場合の例示。"BOEF"は、MEDIS標準病名マスター病名交換用コードで"持続腹痛"のコード。"持続腹痛"はそのテキスト記述の例。 |
||description|||0..1|string|"チーズを食べて1時間後から激しい腹痛と下痢がながく続いた。"|イベントの全体的な記述。 |
||onset|||0..1|dateTime|"2010-01-02" |関連する症状や所見が見られた日時。 |
||severity |||0..1|code|"severe" |反応の激しさ程度。コード表：http://hl7.org/fhir/reaction-event-severitymild \| moderate \| severe軽度、中等度、強度|
||exposureRoute|||0..1|CodeableConcept |"urn:oid:1.2.392.200250.2.2.20.40"<br>"10"<br>"内服経口"<br>"経口摂取" |物質の摂取経路の情報。JAMI標準用法の投与経路コード表（JAMI 用法コード表基本用法2桁コードに相当）を使用する。 |
||note |||0..\* || |他のフィールドで記述できないイベントに関するテキスト記述 |
|| |author||0..1|| |記載者の情報 |
|| ||authorString|0..1|string|"患者の母親" |記載者氏名などの文字列。必ずしも氏名でなくてもよい。 |
|| |time||0..1|dateTime| |この追加的な情報が作成された日時。 |
|| |text||1..1|markdown| |追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。 |
<link rel="stylesheet" href="sample.css">
<br>
{% include markdown-link-references.md %}