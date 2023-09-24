
# アレルギー情報・薬剤禁忌情報

## 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療情報コアサマリー用にアレルギー情報や不耐性情報、薬剤禁忌情報を記述するためのものである。


## スコープ
### 対象
以下のような医学的、もしくは健康上の情報。
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
ただし、「カレーを含む食品を食べると腹痛が起こりやすいので嫌い」、といった場合には、不耐情報またはアレルギー情報なのか嗜好に過ぎないのか区別できないので、対象として記述することはありうる。


## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "AllergyIntolerance"
  - meta.lastUpdated : 最終更新日時
  - identifier : インスタンス識別ID
  - clinicalStatus : 臨床的状態のステータスのコード化情報。コード化必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。
  - verificationStatus : 入力された臨床的状態に対する検証状況。コード化必須。
  - code : アレルギー・不耐反応の対象物の情報
  - patient : このアレルギー不耐症を有する患者のFHIRリソースへの参照。電子カルテ情報共有サービスでは、 contained (JP_Patient)リソースへのリテラル参照を設定する。

### 条件により必須
  - meta.tag : 電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に必須。
  - meta.tag : 電子カルテ情報共有サービスで未説明フラグ（病名の未告知など）を設定する場合に必須。
  - contained (JP_Patient) : 電子カルテ情報共有サービスでは、JP_Patientリソースのcontainは必須。
  - category : 電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、必ず本要素は"medication"として存在しなければならず、criticality要素は"high"を設定しなければならない。
  - criticality :  同上

### 推奨要素
  - contained (JP_Encounter) : アレルギー登録時の入院外来区分情報
  - contained (JP_Practitioner) : アレルギー登録者の情報
  - category : 特定された原因物質のカテゴリ
  - encounter : アレルギー登録時の入院外来区分情報。
  - recordedDate : この状態が最初に記録された日時
  - recorder : アレルギー登録者の情報。
  - asserter : この状態があると確認（主張）した人情報への参照。

## 要素の説明とプロファイル
  - 多重度欄の背景色：濃い黄色＝必須要素、薄い黄色＝条件により必須要素、薄い緑＝推奨要素、無色＝本要素を記述する場合の説明を参考までに記載しているが多重度は0..1または0..*であるため出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい（多重度が0..1または0..*の）要素は、出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表で要素名のあとに[ ]表記があるものは、値が１個であっても、JSONデータのリスト型の値で記述しなければならない。
  - 要素[*] ：　この要素は繰り返し可能であり、値の記述はリストとなる。
  - 要素[+] ：　（繰り返し可能な要素において）新たなひとつの要素の子要素値として記述される。
  - 要素[=] ：　（繰り返し可能な要素において）すぐ上の要素と同じ要素の子要素値として記述される。

### [表 AllergyIntolerance](AllergyIntolerance.html)


<div id="AllergyIntoleranceTable_9842" class="StructureDefinition-JP-AllergyIntolerance-eCS-intro-profile-table" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1013 style='border-collapse:
 collapse;table-layout:fixed;width:760pt'>
 <col width=73 span=4 style='mso-width-source:userset;mso-width-alt:2011;
 width:55pt'>
 <col width=36 style='mso-width-source:userset;mso-width-alt:987;width:27pt'>
 <col width=87 style='mso-width-source:userset;mso-width-alt:2377;width:65pt'>
 <col width=359 style='mso-width-source:userset;mso-width-alt:9837;width:269pt'>
 <col width=44 style='mso-width-source:userset;mso-width-alt:1206;width:33pt'>
 <col width=195 style='mso-width-source:userset;mso-width-alt:5339;width:146pt'>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl65 width=73 style='height:60.0pt;width:55pt'>要素Lv1</td>
  <td class=xl66 width=73 style='width:55pt'>要素Lv2</td>
  <td class=xl66 width=73 style='width:55pt'>要素Lv3</td>
  <td class=xl66 width=73 style='width:55pt'>要素Lv4</td>
  <td class=xl67 width=36 style='width:27pt'>多重度</td>
  <td class=xl66 width=87 style='width:65pt'>型</td>
  <td class=xl66 width=359 style='width:269pt'>説明</td>
  <td class=xl66 width=44 style='width:33pt'><ruby>固定値<span style='display:
  none'><rt class=font5>コテイチ</rt></span></ruby> <br>
    <ruby>／<span style='display:none'><rt class=font5>レイジ</rt></span></ruby> <ruby>例<span
  style='display:none'><rt class=font5>ジ</rt></span></ruby> 示</td>
  <td class=xl68 width=195 style='width:146pt'><ruby>固定値<span style='display:
  none'><rt class=font5>コテイチ</rt></span></ruby> または<ruby>例示<span
  style='display:none'><rt class=font5>レイジ</rt></span></ruby></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>resourceType</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>　</td>
  <td class=xl72 width=359 style='width:269pt'>AllergyIntoleranceリソースであることを示す</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;AllergyIntolerance&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>Meta</td>
  <td class=xl70 width=359 style='width:269pt'>　</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>lastUpdated</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>instant</td>
  <td class=xl70 width=359 style='width:269pt'>最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl69 width=73 style='height:60.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>profile[+}</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>canonical(StructureDefinition)</td>
  <td class=xl70 width=359 style='width:269pt'>準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>tag[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl70 width=359 style='width:269pt'>本リソースのメタデータ</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>tag[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl75 width=359 style='width:269pt'>電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>tag[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>長期保存情報フラグ</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;LTS&quot;</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl69 width=73 style='height:75.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>tag[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl75 width=359 style='width:269pt'>電子カルテ情報共有サービスで未告知情報または未説明フラグを設定する場合に使用（本リソース種別で使用することが許可されているか、あるいは設定した情報が利用されるかどうかについては、電子カルテ情報共有サービスの運用仕様によって確認することが必要）</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>meta</td>
  <td class=xl70 width=73 style='width:55pt'>tag[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>未告知情報または未説明フラグ</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;UNINFORMED&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>contained[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>　</td>
  <td class=xl70 width=359 style='width:269pt'>　</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl69 width=73 style='height:75.0pt;width:55pt'>contained[+]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=36 style='width:27pt'>0..1*</td>
  <td class=xl70 width=87 style='width:65pt'>Resource(JP_Patient |
  JP_Patient_eCS_Contained )</td>
  <td class=xl70 width=359 style='width:269pt'>patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースの必須要素だけが含まれればよい。<br>
    電子カルテ情報共有サービスでは、JP_Patientリソースのcontainは必須。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>contained[+]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1*</td>
  <td class=xl70 width=87 style='width:65pt'>Resource(JP_Encounter |
  JP_Encounter_eCS_Contained)</td>
  <td class=xl70 width=359 style='width:269pt'>encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースの必須要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>contained[+]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1*</td>
  <td class=xl70 width=87 style='width:65pt'>Resource(JP_Practitioner |
  JP_Practitioner_eCS_Contained )</td>
  <td class=xl70 width=359 style='width:269pt'>recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースの必須要素だけが含まれればよい。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>identifier[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..*</td>
  <td class=xl70 width=87 style='width:65pt'>Identifier</td>
  <td class=xl70 width=359 style='width:269pt'>このアレルギー情報を作成した施設内で、このアレルギー情報を他のアレルギー情報と一意に区別できるID。このID情報をキーとして本アレルギー情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=84 style='height:63.0pt'>
  <td height=84 class=xl69 width=73 style='height:63.0pt;width:55pt'>identifier[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl70 width=359 style='width:269pt'>　</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl84 width=195 style='width:146pt'><a
  href="http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier">http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></a></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>identifier[=]</td>
  <td class=xl70 width=73 style='width:55pt'>value</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>アレルギー情報IDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;1311234567-2020-00123456&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>clinicalStatus</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl70 width=359 style='width:269pt'>臨床的状態のステータス。コードで記述は必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。それ以外では必須。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>clinicalStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl70 width=359 style='width:269pt'>臨床的状態のステータスのコード化情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>clinicalStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>ur</td>
  <td class=xl70 width=359 style='width:269pt'>コードで記述が必須で、少なくともひとつのsystem値は固定値。</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical&quot;</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl69 width=73 style='height:75.0pt;width:55pt'>clinicalStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>active|inactive|resolved(アクティブ|非アクティブ|解決済み)のいずれか（ValueSethttp://hl7.org/fhir/ValueSet/allergyintolerance-clinicalより選択することが必須）。「解決済み」は「非アクティブ」に含まれる。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;active&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>clinicalStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>dispkay</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>Active|Inactive|Resolvedのいずれかの文字列。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>”Active&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>clinicalStatus</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>コードだけでは記述できない情報がある場合にコードと併用してもよい。値が使用されない可能性はある。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>verificationStatus</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl85 width=36 style='width:27pt'>0..1<ruby><font class="font5"><rt
  class=font5></rt></font></ruby></td>
  <td class=xl70 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl70 width=359 style='width:269pt'>入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コード化記述が必須。clinicalStatusとの制約条件を参照のこと。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>verificationStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl85 width=36 style='width:27pt'>1..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl77>臨床的状態に対する検証状況のコード化情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>verificationStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl85 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl70 width=359 style='width:269pt'>コードで記述が必須で、少なくともひとつのsystem値は固定値。</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http://terminology.hl7.org/CodeSystem/allergyintolerance-verification&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl69 width=73 style='height:60.0pt;width:55pt'>verificationStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl85 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>unconfirmed|confirmed|refuted|entered-in-error(未確認|確認済み|否定された|入力エラー)のいずれか（ValueSethttp://hl7.org/fhir/ValueSet/allergyintolerance-verificationより選択することが必須）。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;Unconfirmed&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>verificationStatus</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>dispkay</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl85 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>Unconfirmed|Confirmed|Refuted|EnteredinErrorのいずれかの文字列。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>”Unconfirmed&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>verificationStatus</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>コードだけでは記述できない情報がある場合や、コード化できない場合には本要素だけで記述してもよい。コードと併用してもよい</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=140 style='height:105.0pt'>
  <td height=140 class=xl69 width=73 style='height:105.0pt;width:55pt'>type</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）。記述する場合は、コード表：&quot;http://hl7.org/fhir/allergy-intolerance-type&quot;から、allergy|intolerance（アレルギー反応、不耐性反応）のいずれか。メカニズムの種類を正確に決めることは難しいので、この情報はあくまで情報登録側の判断に依存する。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'><span
  style='mso-spacerun:yes'> </span>&quot;allergy&quot;</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl69 width=73 style='height:195.0pt;width:55pt'>category</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>特定された原因物質のカテゴリ。記述を可能な限り推奨する。コード表：&quot;http://hl7.org/fhir/allergy-intolerance-category&quot;からfood|medication|environment|biologic（食物、医薬品、環境、バイオロジー物質）のいずれかを選択する。電子カルテシステムで、これらのカテゴリーが区別されて登録されている場合には可能な限りコードを設定すること。<br>
    電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、必ず本要素は&quot;medication&quot;として存在しなければならず、criticality要素は&quot;high&quot;を設定しなければならない。これ以外の場合には、本リソースの情報はや薬剤禁忌以外のアレルギー情報として取り扱われる。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;food&quot;</td>
 </tr>
 <tr height=140 style='height:105.0pt'>
  <td height=140 class=xl69 width=73 style='height:105.0pt;width:55pt'>criticality</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>潜在的な臨床的危険性、致命度。記述する場合は、コード表：&quot;http://hl7.org/fhir/allergy-intolerance-criticality&quot;からlow|high|unable-to-assessのいずれかを選択する。（低、高、評価不能）。<br>
    電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、category要素の記述を参照すること。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;high&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl70 width=359 style='width:269pt'>アレルギー・不耐反応の対象物の情報。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl69 width=73 style='height:75.0pt;width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl70 width=359 style='width:269pt'>JP-Coreで定めるallergy-substanceコード表のコードを使用を推奨する。コード化できない場合には、code.textのみで記述する。コード化の有無にかかわらず、電子カルテシステム等で登録され表示されている文字列をcode.textに必ず設定すること。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=220 style='height:165.0pt'>
  <td height=220 class=xl69 width=73 style='height:165.0pt;width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl70 width=359 style='width:269pt'>使用するコード表（推奨）：ValueSethttp://jpfhir.jp/fhir/core/ValueSet/JP_AllergyIntolerance_VS<br>
   
  CodeSystemは、category要素に対応して、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS<br>
    http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS<br>
   
  http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CSの3つのいずれかから選択することが推奨されている。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS<span
  style='mso-spacerun:yes'> </span></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>コード</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;J7F7311990&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>dispkay</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>コードに対応する表示名</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;牛乳・乳製品（詳細不明）&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>コード化の有無にかかわらず、電子カルテシステム等で登録され表示されている文字列をcode.textに必ず設定すること。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;牛乳 &quot;</td>
 </tr>
 <tr height=140 style='height:105.0pt'>
  <td height=140 class=xl69 width=73 style='height:105.0pt;width:55pt'>patient</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>Reference(JP_Patient|
  JP_Patient_eCS_Contained)</td>
  <td class=xl70 width=359 style='width:269pt'>このアレルギー不耐症を有する患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）、保険個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述（次次行の例）を示す。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>例 1<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl70 width=87 style='width:65pt'>　</td>
  <td class=xl70 width=359 style='width:269pt'>電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合は、JP_Patientタイプのリソース（Patient.idの値が&quot;#patient203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのcontainedリソースのid値(Patient.id)を記述する例２となる。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#patient203987&quot;<br>
    }</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl69 width=73 style='height:195.0pt;width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl70 width=87 style='width:65pt'>　</td>
  <td class=xl70 width=359 style='width:269pt'>電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合に、保険個人識別子(例では、保険者等番号＝12345、被保険者証等の記号＝あいう、被保険者証等の番号＝１８７、枝番＝05の患者)を記述した外部にある患者リソースを参照する場合の例。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>例 ３<br>
    {<br>
    <span style='mso-spacerun:yes'>    </span>&quot;type&quot;:
  &quot;Patient&quot;,<span style='mso-spacerun:yes'>  </span><br>
    <span style='mso-spacerun:yes'>     </span>&quot;identifier&quot;:{<br>
    <span style='mso-spacerun:yes'>         </span>&quot;system&quot;:
  &quot;http:/jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_member/00012345&quot;,<br>
    <span style='mso-spacerun:yes'>          </span>&quot;value&quot;:
  &quot;00012345:あいう:１８７:05&quot;<br>
    <span style='mso-spacerun:yes'>       </span>}<br>
    }<br>
    </td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>encounter</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>Reference (JP_Encounter |
  JP_Encounter_eCS_Contained)</td>
  <td class=xl70 width=359 style='width:269pt'>このアレルギ情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。Bundleリソースなどで本リソースから参照可能なEncouertリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>例 1 <br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }</td>
 </tr>
 <tr height=220 style='height:165.0pt'>
  <td height=220 class=xl69 width=73 style='height:165.0pt;width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl70 width=87 style='width:65pt'>　</td>
  <td class=xl70 width=359 style='width:269pt'>電子カルテシステムで入院時、外来受診時のいずれにおいて本情報が登録されたか記録さている場合にはその入院・外来区分をEncounter.class要素に設定し、そのEncounterリソースをContainedリソースとして本リソースに埋め込んで、それを参照すること。<br>
   
  電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合に、JP_Encounterタイプのリソース（Encounter.idの値が&quot;#encounter203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述されている場合に、そのcontainedリソースのid値(Encounter.id)を記述する例。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#encounter203987&quot;<br>
    }</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl69 width=73 style='height:195.0pt;width:55pt'>(onset)</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>（dateTime、Age、Period、Range、string）のいずれかの型をとる。</td>
  <td class=xl70 width=359 style='width:269pt'>このアレルギー・不耐性状態が同定された時期。患者に反応が出現した時期、あるいはなんらかのエビデンスによりこの反応が患者にあると確認できた時期を記述する。記録を登録した日時は、別途recordedDateに記述する。記述方法として、1時点の日時、患者の年齢（曖昧な年齢時期の記述も可能）、開始時期と終了時期による期間、年齢の区間、（なんらかの出来事を引用して記述するような）文字列で時期を記述、の5通りのいずれかの要素（onsetDateTime、onseAge、onsetPeriod、onsetRange、onsetString）からひとつの記述方法を選択して、それにより記述する。複数を選択はできない。onset要素は記述しないで、直接onsetDateTime要素などonsetXXXXの要素により記述する。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl69 width=73 style='height:60.0pt;width:55pt'>onsetDateTime</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>一時点の記述方式：<br>
   
  日付または日時。年や年月だけでもよい。例：2018,1973-06,1905-08-23,2015-02-07T13:28:17+09:00。<br>
    時刻に24:00の使用はできない。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>2018<br>
    1973-06<br>
    1905-08-23<br>
    2015-02-07T13:28:17+09:00</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetAge</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>Age</td>
  <td class=xl70 width=359 style='width:269pt'>年齢や年齢を基準にして記述する方式：<br>
    患者の申告による、状態が出現し始めた年齢。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>50歳 の例 、50歳 以上 の例 を以下 に示 す。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>onsetAge</td>
  <td class=xl70 width=73 style='width:55pt'>value</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>decimal</td>
  <td class=xl70 width=359 style='width:269pt'>年齢の値。月齢や週齢なども可能。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;50&quot;</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>onsetAge</td>
  <td class=xl70 width=73 style='width:55pt'>comparator</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>valueの値と等しい年齢を表現したい場合には、=は不要でこの要素は出現しない。<br>
    そうでない指定をしたい場合には、&lt;、&lt;=、&gt;=、&gt;のいずれか。<br>
    要素valueの値の解釈方法。例では、「50歳以上で」と記述したい場合には、&gt;=を記述する。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;&gt;=&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>onsetAge</td>
  <td class=xl70 width=73 style='width:55pt'>unit</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>単位表現。文字列で単位文字列を記述する。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;歳&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetAge</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl70 width=359 style='width:269pt'>単位体系UCUMコード体系。固定値。</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetAge</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;a&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetPeriod</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>Preiod</td>
  <td class=xl70 width=359 style='width:269pt'>期間。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetPeriod</td>
  <td class=xl70 width=73 style='width:55pt'>start</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>期間の開始日時</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetPeriod</td>
  <td class=xl70 width=73 style='width:55pt'>end</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>期間の終了日時</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>Range</td>
  <td class=xl70 width=359 style='width:269pt'>曖昧な時期を最小値と最大値とで記述する。以下の記述例は50歳台。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>low</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl70 width=359 style='width:269pt'>下限値表現</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>low</td>
  <td class=xl70 width=73 style='width:55pt'>value</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>decimal</td>
  <td class=xl70 width=359 style='width:269pt'>年齢の値。月齢や週齢なども可能</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;50&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>low</td>
  <td class=xl70 width=73 style='width:55pt'>unit</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>単位表現</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;歳&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>low</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl70 width=359 style='width:269pt'>単位体系UCUMコード体系。</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>low</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;a&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>high</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl70 width=359 style='width:269pt'>　</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>high</td>
  <td class=xl70 width=73 style='width:55pt'>value</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>decimal</td>
  <td class=xl70 width=359 style='width:269pt'>年齢の値。月齢や週齢なども可能</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;59&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>high</td>
  <td class=xl70 width=73 style='width:55pt'>unit</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>単位表現</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;歳&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>high</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>uri</td>
  <td class=xl70 width=359 style='width:269pt'>単位体系UCUMコード体系。</td>
  <td class=xl70 width=44 style='width:33pt'>固定値</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetRange</td>
  <td class=xl70 width=73 style='width:55pt'>high</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;a&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>onsetString</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>｀</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;70歳台&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>recordedDate</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>この状態が最初に記録された日時</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl69 width=73 style='height:90.0pt;width:55pt'>recorder</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>Reference(JP_Practitioner|
  JP_Practitioner_eCS_Contained)</td>
  <td class=xl70 width=359 style='width:269pt'>この状態を記録した人情報への参照。医療者のContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>{<br>
    <span style='mso-spacerun:yes'>   </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#practitioner20394&quot;<br>
    }</td>
 </tr>
 <tr height=240 style='height:180.0pt'>
  <td height=240 class=xl69 width=73 style='height:180.0pt;width:55pt'>asserter</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl74 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>Reference(JP_Patient|
  JP_Patient_eCS_Contained| JP_Practitioner| JP_Practitioner_eCS_Contained
  |RelatedPerson|)</td>
  <td class=xl70 width=359 style='width:269pt'>この状態があると確認（主張）した人情報への参照。医療者、患者本人の場合にはそれぞれのContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>{<br>
    <span style='mso-spacerun:yes'>   </span>&quot;display&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;本人 の母 &quot;<br>
    }</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>lastOccurrence</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>最後（直近）に知られている発生日時</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>note[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Annotation</td>
  <td class=xl70 width=359 style='width:269pt'>状態に関する追加的な情報で他の要素で記述できないような情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>note[+]</td>
  <td class=xl70 width=73 style='width:55pt'>authorString</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;看護担当者&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl69 width=73 style='height:20.0pt;width:55pt'>note[=]</td>
  <td class=xl70 width=73 style='width:55pt'>time</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>この追加的な情報が作成された日時</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>note[=]</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>1..1</td>
  <td class=xl70 width=87 style='width:65pt'>markdown</td>
  <td class=xl70 width=359 style='width:269pt'>追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>BackboneElement</td>
  <td class=xl70 width=359 style='width:269pt'>対象物質に暴露したことに関連して派生した有害反応の履歴事実に関する情報。複数記述できる。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=300 style='height:225.0pt'>
  <td height=300 class=xl69 width=73 style='height:225.0pt;width:55pt'>reaction[+]</td>
  <td class=xl70 width=73 style='width:55pt'>substance</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl70 width=359 style='width:269pt'>有害反応の原因と考えられる物質（または医薬品）。<br>
    <br>
   
  注：特定の有害反応を誘発する物質は、原因として特定された物質と異なっていてもよいが、整合がとれていなければならない。たとえば、より具体的な物質（ブランド薬など）や、特定された物質を含む複合製品の場合がある。AllergyIntolerance.codeのみを処理し、AllergyIntolerance.reaction.substanceを無視しても、臨床的に安全でなければならない。受信システムがAllergyIntolerance.reaction.substanceがAllergyIntolerance.codeのセマンティックスコープ内に（前者が後者の意味的な下位概念にあること）を確認できない場合、受信システムはAllergyIntolerance.reaction.substanceを無視する必要がある。</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>substance</td>
  <td class=xl70 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl70 width=359 style='width:269pt'>有害反応の原因物質のコード化情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl69 width=73 style='height:195.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>substance</td>
  <td class=xl70 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>ur</td>
  <td class=xl70 width=359 style='width:269pt'>jpfhir.jpでのアレルゲンコード表のコードを使用できる。<br>
   
  使用するコード表（例）：ValueSethttp://jpfhir.jp/fhir/core/ValueSet/JP_AllergyIntolerance_VS<br>
   
  CodeSystemは、category要素に対応して、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS<br>
    http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS<br>
   
  http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CSの3つのいずれかから選択することができる。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS<span
  style='mso-spacerun:yes'> </span></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>substance</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>コード</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;J7F7311154&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>substance</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>display</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>コードに対応する表示名</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;モッツァレラチーズ&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>substance</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>有害反応の原因物質の文字列による記述</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;モッツァレラチーズ&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>manifestation[*]<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>1..*</td>
  <td class=xl70 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl70 width=359 style='width:269pt'>アレルギー反応に関連する症状や所見</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>manifestation[+]</td>
  <td class=xl70 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl70 width=359 style='width:269pt'>アレルギー反応に関連する症状や所見のコード化情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>manifestation<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl70 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>ur</td>
  <td class=xl79 width=359 style='width:269pt'>system値はMEDIS標準病名マスター病名交換用コードを使用する場合の例示。&quot;BOEF&quot;は、MEDIS標準病名マスター病名交換用コードで&quot;持続腹痛&quot;のコード</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.200119.4.101.6&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>manifestation [=]</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl79 width=359 style='width:269pt'>&quot;持続腹痛&quot;はその表示名の例</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;B0EF&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>manifestation[=]</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>display</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl79 width=359 style='width:269pt'>　</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;持続腹痛&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>manifestation[=]</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl79 width=359 style='width:269pt'>アレルギー反応に関連する症状や所見症状のテキスト表現</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;長く続く腹部の痛み&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl69 width=73 style='height:45.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>description</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>イベントの全体的な記述</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;チーズを食べて1時間後から激しい腹痛と下痢がながく続いた。&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>onset</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>関連する症状や所見が見られた日時</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;2010-01-02&quot;</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl69 width=73 style='height:75.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>severity</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl70 width=359 style='width:269pt'>反応の激しさ程度。mild|moderate|severe(ofeventasawhole)（軽度|中度|重度）ValueSethttp://hl7.org/fhir/ValueSet/reaction-event-severityから選択する。(コード表：http://hl7.org/fhir/reaction-event-severity)</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;severe&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>exposureRoute</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl70 width=359 style='width:269pt'>物質の摂取経路の情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>exposureRoute</td>
  <td class=xl70 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Coding</td>
  <td class=xl70 width=359 style='width:269pt'>物質の摂取経路のコード化情報</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>exposureRoute</td>
  <td class=xl70 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl70 width=73 style='width:55pt'>system</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>ur</td>
  <td class=xl70 width=359 style='width:269pt'>JAMI標準用法の投与経路コード表（JAMI用法コード表基本用法2桁コードに相当）を使用する。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.200250.2.2.20.40&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>exposureRoute</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>code</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>code</td>
  <td class=xl79 width=359 style='width:269pt'>摂取経路コード</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;10&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>exposureRoute</td>
  <td class=xl70 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl70 width=73 style='width:55pt'>display</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl79 width=359 style='width:269pt'>摂取経路コードに対応する表示名</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;内服経口&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>exposureRoute</td>
  <td class=xl70 width=73 style='width:55pt'>text</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl79 width=359 style='width:269pt'>接種経路の文字列表現</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;経口摂取&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>note[*]</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..*</td>
  <td class=xl70 width=87 style='width:65pt'>Annotation</td>
  <td class=xl70 width=359 style='width:269pt'>他のフィールドで記述できないイベントに関するテキスト記述</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>note[+]</td>
  <td class=xl70 width=73 style='width:55pt'>authorString</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>string</td>
  <td class=xl70 width=359 style='width:269pt'>記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
  <td class=xl70 width=44 style='width:33pt'>例示</td>
  <td class=xl73 width=195 style='width:146pt'>&quot;患者の母親&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl69 width=73 style='height:30.0pt;width:55pt'>reaction[=]</td>
  <td class=xl70 width=73 style='width:55pt'>note[=]</td>
  <td class=xl70 width=73 style='width:55pt'>time</td>
  <td class=xl70 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>0..1</td>
  <td class=xl70 width=87 style='width:65pt'>dateTime</td>
  <td class=xl70 width=359 style='width:269pt'>この追加的な情報が作成された日時</td>
  <td class=xl70 width=44 style='width:33pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl80 width=73 style='height:31.0pt;width:55pt'>reaction[=]</td>
  <td class=xl81 width=73 style='width:55pt'>note[=]</td>
  <td class=xl81 width=73 style='width:55pt'>text</td>
  <td class=xl81 width=73 style='width:55pt'>　</td>
  <td class=xl82 width=36 style='width:27pt'>1..1</td>
  <td class=xl81 width=87 style='width:65pt'>markdown</td>
  <td class=xl81 width=359 style='width:269pt'>追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。</td>
  <td class=xl81 width=44 style='width:33pt'>　</td>
  <td class=xl83 width=195 style='width:146pt'>　</td>
 </tr>

</table>

</div>

<br>

## プロファイル

