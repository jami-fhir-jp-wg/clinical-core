# 傷病名情報

## 背景および想定シナリオ
このプロファイルは、診療情報提供書や退院時サマリーなどの2文書や、電子カルテ情報共有サービスに登録される６情報をはじめ、各種の診療サマリーなどに傷病名情報を記述するためのCoditionリソースのプロファイルを規定することを想定している。


## スコープ

### 対象
電子カルテシステムで登録された病名、診断書、診療情報提供書、退院時サマリーなどの診療要約記録などに記述される診断病名、検査等のための疑い病名として記録される傷病名情報、診療録中に医師により記録されるプロブレムリストのひとつひとつなどを対象とする。

ある治療や処置後の臨床情報や患者の健康状態なども対象になる。


## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Condition"
  - meta.lastUpdated : 最終更新日時
  - identifier : インスタンス識別ID
  - clinicalStatus : 臨床的状態(傷病の状態)のコード化情報。コード化必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。abatementDateTime要素に日付が設定されている場合にはその時点での状態を設定し、同要素がない場合にはactiveを設定する。
  - verificationStatus : 入力された臨床的状態に対する検証状況。コード化必須。疑い病名の場合には、unconfirmedを設定し、それ以外の場合には通常confirmedを設定する。
  - category : 臨床的状態に割り当てられたカテゴリー。設定する場合には、problem-list-item （プロブレムリスト）| encounter-diagnosis （診察時点での診断名）のいずれかを設定する。電子カルテ情報共有サービスでは'encounter-diagnosis'を設定すること。
  - code : 傷病名のコードと名称。code.texはコード化の有無にかかわらず病名入力文字列を必ずそのまま設定する。コード化は必須。
  - subject : 対象となる患者のFHIRリソースへの参照。電子カルテ情報共有サービスでは、 contained (JP_Patient)リソースへのリテラル参照を設定する。

### 条件により必須
  - meta.tag : 電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に必須。
  - meta.tag : 電子カルテ情報共有サービスで未説明フラグ（病名の未告知など）を設定する場合に必須。
  - contained (JP_Patient) : 電子カルテ情報共有サービスでは、JP_Patientリソースのcontainは必須。
  - onsetDatetime : 電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名開始日をdateTime型で記述することが必須。
  - abatementDateTime : 電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名終了日や転帰日がある場合には、dateTime型で記述することが必須。
### 推奨要素
  - contained (JP_Encounter) : 傷病名登録時の入院外来区分情報
  - contained (JP_Practitioner) : 傷病名登録者の情報
  - encounter : 傷病名登録時の入院外来区分情報
  - onsetDatetime : この傷病名情報が同定された時期。電子カルテシステムの病名開始日をdateTime型で記述するのが一般的な方法である。
  - abatementDateTime : この傷病名情報による患者状態が終了したと同定された時期。電子カルテシステムの病名終了日をdateTime型で記述するのが一般的な方法である。
  - recordedDate : この状態が最初に記録された日時。
  - recorder : 傷病名登録者の情報。

## 要素の説明とプロファイル
  - 多重度欄の背景色：濃い黄色＝必須要素、薄い黄色＝条件により必須要素、薄い緑＝推奨要素、無色＝本要素を記述する場合の説明を参考までに記載しているが多重度は0..1または0..*であるため出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい（多重度が0..1または0..*の）要素は、出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表で要素名のあとに[ ]表記があるものは、値が１個であっても、JSONデータのリスト型の値で記述しなければならない。
  - 要素[*] ：　この要素は繰り返し可能であり、値の記述はリストとなる。
  - 要素[+] ：　（繰り返し可能な要素において）新たなひとつの要素の子要素値として記述される。
  - 要素[=] ：　（繰り返し可能な要素において）すぐ上の要素と同じ要素の子要素値として記述される。


## [表 Condition](Condition.html)
<details>
<summary>▶️表を展開表示または非表示</summary>
<div id="ConditionTable_25764" class="StructureDefinition-JP-Condition-eCS-intro-profile-table" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1028 style='border-collapse:
 collapse;table-layout:fixed;width:771pt'>
 <col width=97 style='mso-width-source:userset;mso-width-alt:2669;width:73pt'>
 <col width=73 span=3 style='mso-width-source:userset;mso-width-alt:2011;
 width:55pt'>
 <col width=35 style='mso-width-source:userset;mso-width-alt:950;width:26pt'>
 <col width=87 style='mso-width-source:userset;mso-width-alt:2377;width:65pt'>
 <col width=359 style='mso-width-source:userset;mso-width-alt:9837;width:269pt'>
 <col width=36 style='mso-width-source:userset;mso-width-alt:987;width:27pt'>
 <col width=195 style='mso-width-source:userset;mso-width-alt:5339;width:146pt'>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl66 width=97 style='height:75.0pt;width:73pt'>要素Lv1</td>
  <td class=xl67 width=73 style='width:55pt'>要素Lv2</td>
  <td class=xl67 width=73 style='width:55pt'>要素Lv3</td>
  <td class=xl67 width=73 style='width:55pt'>要素Lv4</td>
  <td class=xl68 width=35 style='width:26pt'>多重度</td>
  <td class=xl67 width=87 style='width:65pt'>型</td>
  <td class=xl67 width=359 style='width:269pt'>説明</td>
  <td class=xl67 width=36 style='width:27pt'><ruby>固定値<span style='display:
  none'><rt class=font5>コテイチ</rt></span></ruby> <br>
    <ruby>／<span style='display:none'><rt class=font5>レイジ</rt></span></ruby> <ruby>例<span
  style='display:none'><rt class=font5>ジ</rt></span></ruby> 示</td>
  <td class=xl69 width=195 style='width:146pt'><ruby>固定値<span style='display:
  none'><rt class=font5>コテイチ</rt></span></ruby> または<ruby>例示<span
  style='display:none'><rt class=font5>レイジ</rt></span></ruby></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>resourceType</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>　</td>
  <td class=xl73 width=359 style='width:269pt'>Conditionリソースであることを示す</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;Condition&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>Meta</td>
  <td class=xl71 width=359 style='width:269pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=340 style='height:255.0pt'>
  <td height=340 class=xl70 width=97 style='height:255.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>lastUpdated</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>instant</td>
  <td class=xl71 width=359 style='width:269pt'>最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz<br>
   
  この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。<ruby>本要素<span
  style='display:none'><rt>ホンヨウソ </rt></span></ruby>に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl70 width=97 style='height:60.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>profile[+]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl97 width=35 style='width:26pt'>0..*</td>
  <td class=xl71 width=87 style='width:65pt'>canonical(StructureDefinition)</td>
  <td class=xl71 width=359 style='width:269pt'>準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>tag[*]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl97 width=35 style='width:26pt'>0..*</td>
  <td class=xl71 width=87 style='width:65pt'>Coding</td>
  <td class=xl71 width=359 style='width:269pt'><ruby>本リソースのタグ情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby></td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=97 style='height:45.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>tag[+]</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl97 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl76 width=359 style='width:269pt'>電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>tag[=]</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl97 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>長期保存情報フラグ</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;LTS&quot;</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl70 width=97 style='height:75.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>tag[+]</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl97 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl76 width=359 style='width:269pt'>電子カルテ情報共有サービスで未告知情報または未説明フラグを設定する場合に使用（本リソース種別で使用することが許可されているか、あるいは設定した情報が利用されるかどうかについては、電子カルテ情報共有サービスの運用仕様によって確認することが必要）</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>meta</td>
  <td class=xl71 width=73 style='width:55pt'>tag[=]</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl97 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>未告知情報または未説明フラグ</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;UNINFORMED&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>contained[*]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl77 width=35 style='width:26pt'>0..*</td>
  <td class=xl71 width=87 style='width:65pt'>　</td>
  <td class=xl71 width=359 style='width:269pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl70 width=97 style='height:75.0pt;width:73pt'>contained[+]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl77 width=35 style='width:26pt'>0..1*</td>
  <td class=xl71 width=87 style='width:65pt'>Resource(JP_Patient |
  JP_Patient_eCS_Contained )</td>
  <td class=xl71 width=359 style='width:269pt'>patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースにおける必要最小限の要素だけが含まれればよい。<br>
    <font class="font7">電子カルテ情報共有サービスでは、JP_Patientリソースのcontainedは必須。</font></td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>contained[+]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl75 width=35 style='width:26pt'>0..1*</td>
  <td class=xl71 width=87 style='width:65pt'>Resource(JP_Encounter |
  JP_Encounter_eCS_Contained)</td>
  <td class=xl71 width=359 style='width:269pt'>encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>contained[+]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl75 width=35 style='width:26pt'>0..1*</td>
  <td class=xl71 width=87 style='width:65pt'>Resource(JP_Practitioner |
  JP_Practitioner_eCS_Contained )</td>
  <td class=xl71 width=359 style='width:269pt'>recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>identifier[*]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..*</td>
  <td class=xl71 width=87 style='width:65pt'>Identifier</td>
  <td class=xl71 width=359 style='width:269pt'>この傷病名情報を作成した施設内で、この傷病名情報を他の傷病名情報と一意に区別できるID。このID情報をキーとして本傷病名情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=84 style='height:63.0pt'>
  <td height=84 class=xl70 width=97 style='height:63.0pt;width:73pt'>identifier[+]</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl71 width=359 style='width:269pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl80 width=195 style='width:146pt'><a
  href=$JP_ResourceInstanceIdentifier>http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></a></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>identifier[=]</td>
  <td class=xl71 width=73 style='width:55pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>傷病名情報IDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;1311234567-2020-00123456&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl70 width=97 style='height:60.0pt;width:73pt'>clinicalStatus</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl77 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl71 width=359 style='width:269pt'>臨床的状態。病名最終日（abatementDateTime)での状態（転帰）。コードでの記述は必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはな<ruby>らな<span
  style='display:none'><rt>ヨウソ &#0;l&#2;&#4;&#2;&#8;</rt></span></ruby>い。それ以外では、必須。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>clinicalStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..*</td>
  <td class=xl71 width=87 style='width:65pt'>Coding</td>
  <td class=xl71 width=359 style='width:269pt'>臨床的状態のステータスのコード化情報</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=97 style='height:45.0pt;width:73pt'>clinicalStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>ur</td>
  <td class=xl71 width=359 style='width:269pt'>コードで記述が必須で、少なくともひとつのsystem値は固定値。</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl70 width=97 style='height:75.0pt;width:73pt'>clinicalStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>コード表　http://terminology.hl7.org/CodeSystem/condition-clinical　から　active（存続）,
  remission(軽快、寛解), inactive（治癒以外での病名の終了）, resolved (治癒) 、unknown（<ruby>不明<span
  style='display:none'><rt>フメイ </rt></span></ruby>）のいずれかを選ぶ。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;active&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>clinicalStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl71 width=73 style='width:55pt'>display</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>Active|Remission|Resolved|Unknownのいずれかの文字列。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>”Active&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>clinicalStatus</td>
  <td class=xl71 width=73 style='width:55pt'>text</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>コードだけでは記述できない情報がある場合にコードと併用してもよい。値が使用されない可能性はある。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl70 width=97 style='height:60.0pt;width:73pt'>verificationStatus</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1<ruby><font class="font5"><rt
  class=font5></rt></font></ruby></td>
  <td class=xl71 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl71 width=359 style='width:269pt'>入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コード化記述が必須。clinicalStatusとの制約条件を参照のこと。<font
  class="font7">疑い病名フラグとしても使用される。</font></td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>verificationStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..*</td>
  <td class=xl71 width=87 style='width:65pt'>Coding</td>
  <td class=xl78>臨床的状態に対する検証状況のコード化情報</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=97 style='height:45.0pt;width:73pt'>verificationStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl71 width=359 style='width:269pt'>コードで記述が必須で、少なくともひとつのsystem値は固定値。</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://terminology.hl7.org/CodeSystem/allergyintolerance-verification&quot;</td>
 </tr>
 <tr height=160 style='height:120.0pt'>
  <td height=160 class=xl70 width=97 style='height:120.0pt;width:73pt'>verificationStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>unconfirmed|confirmed|refuted|entered-in-error(未確認|確認済み|否定された|入力エラー)のいずれか（ValueSethttp://hl7.org/fhir/ValueSet/allergyintolerance-verificationより選択することが必須）。<br>
    疑い病名フラグがない病名には、confirmed を<ruby>必<span style='display:none'><rt>カナラズ </rt></span></ruby>ず設定する。<br>
    疑い病名フラグのある病名には、unconfirmed を必ず設定する。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;Unconfirmed&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>verificationStatus</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl71 width=73 style='width:55pt'>display</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>Unconfirmed|Confirmed|Refuted|EnteredinErrorのいずれかの文字列。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>”Unconfirmed&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=97 style='height:45.0pt;width:73pt'>verificationStatus</td>
  <td class=xl71 width=73 style='width:55pt'>text</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>コードだけでは記述できない情報がある場合や、コード化できない場合には本要素だけで記述してもよい。コードと併用してもよい</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl70 width=97 style='height:75.0pt;width:73pt'>category</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'><ruby>臨床<span style='display:
  none'><rt>リンショウ </rt></span></ruby><ruby>的<span style='display:none'><rt>テキ </rt></span></ruby>状態に割り当てられたカテゴリー。設定する<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>には、problem-list-item
  （プロブレムリスト）| encounter-diagnosis （<ruby>診察<span style='display:none'><rt>シンサツ </rt></span></ruby><ruby>時点<span
  style='display:none'><rt>ジテン </rt></span></ruby>での<ruby>診断名<span
  style='display:none'><rt>シンダンメイ </rt></span></ruby>）のいずれ<ruby>かを<span
  style='display:none'><rt>セッテイ </rt></span></ruby>設定する。<ruby><font
  class="font7">電</font><span style='display:none'><rt>ホン </rt></span></ruby><ruby><font
  class="font7">子カ</font><span style='display:none'><rt>ヨウソ </rt></span></ruby><font
  class="font7">ルテ情</font><ruby><font class="font7">報共</font><span
  style='display:none'><rt>バアイ </rt></span></ruby><font class="font7">有サービスでは、'encounter-diagnosis'を</font><ruby><font
  class="font7">設定</font><span style='display:none'><rt>セッテイ </rt></span></ruby><font
  class="font7">すること。</font></td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;encounter-diagnosi&quot;</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>severity</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>潜在的な臨床的危険性、致命度。記述する場合は、コード表：&quot;http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionSeverity_CS&quot;からMI：軽度、MO：中度、SE：重度、UK：不明のいずれかを<ruby>設定<span
  style='display:none'><rt>セッテイ </rt></span></ruby>する。<br>
    </td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;high&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl71 width=359 style='width:269pt'>	傷病名のコードと名称。code.texはコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>の<ruby>有無<span
  style='display:none'><rt>ウム </rt></span></ruby>にかかわらず<ruby>病名<span
  style='display:none'><rt>ビョウメイ </rt></span></ruby><ruby>入力<span
  style='display:none'><rt>ニュウリョク </rt></span></ruby><ruby>文字列<span
  style='display:none'><rt>モジレツ </rt></span></ruby>を<ruby>必<span
  style='display:none'><rt>カナラズ </rt></span></ruby>ずそのまま<ruby>設定<span
  style='display:none'><rt>セッテイ </rt></span></ruby>する。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=220 style='height:165.0pt'>
  <td height=220 class=xl70 width=97 style='height:165.0pt;width:73pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>coding[*]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>0..*</td>
  <td class=xl71 width=87 style='width:65pt'>Coding</td>
  <td class=xl71 width=359 style='width:269pt'>MEDIS
  病名交換コード、病名管理番号、ICD10分類コード、レセプト電算処理用傷病名コード、またはレセプト電算処理用傷病名コードの未コード化コード(7桁all
  9)のいずれかまたは複数の組み合わせで表現することを<ruby>推奨<span style='display:none'><rt>スイショウ </rt></span></ruby>する。<br>
    <font class="font7">電子カルテ情報共有サービスでは、コード</font><ruby><font class="font7">化</font><span
  style='display:none'><rt>カ </rt></span></ruby><font class="font7">は</font><ruby><font
  class="font7">必須</font><span style='display:none'><rt>ヒッス </rt></span></ruby><font
  class="font7">で、病名管理番号またはレセプト電算処理用傷病名コードのいずれかを必ず使用し、それ以外にICD10分類コードを</font><ruby><font
  class="font7">追加</font><span style='display:none'><rt>ツイカ </rt></span></ruby><font
  class="font7">することを</font><ruby><font class="font7">推奨</font><span
  style='display:none'><rt>スイショウ </rt></span></ruby><font class="font7">する。なお、</font><ruby><font
  class="font7">病名</font><span style='display:none'><rt>ビョウメイ </rt></span></ruby><font
  class="font7">のコード</font><ruby><font class="font7">化</font><span
  style='display:none'><rt>カ </rt></span></ruby><font class="font7">ができない</font><ruby><font
  class="font7">場合</font><span style='display:none'><rt>バアイ </rt></span></ruby><font
  class="font7">には、レセプト電算処理用傷病名コードとして、未コード化コード(7桁all 9）を</font><ruby><font
  class="font7">使用</font><span style='display:none'><rt>&#0;k&#2;&#6;</rt></span></ruby><font
  class="font7">する。</font></td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=180 style='height:135.0pt'>
  <td height=180 class=xl70 width=97 style='height:135.0pt;width:73pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>coding[+]</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl71 width=359 style='width:269pt'><ruby>M<span style='display:
  none'><rt>ttp://&#0;&#0;&#1;=~&#1;@ö&#2;Dö&#1;Hü&#1;Mþ&#2;QĄ&#2;&#0;&#0;&#0;&#0;&#14;耀&#14;&quot;牛乳・乳製品（詳細不明）&quot;&#1;&#12;&#28;5&#0;&#0;&#0;&#0;&#0;&#0;&#0;&#0;&#8;</rt></span></ruby>EDIS
  病名交換コード：urn:oid:1.2.392.200119.4.101.6<br>
    病名管理番号：urn:oid:1.2.392.200119.4.101.2<br>
    ICD10分類コード：urn:oid:2.16.840.1.113883.6.3.1（<ruby>仮<span style='display:
  none'><rt>&#0;&#8;&quot;十二指腸潰瘍&quot;&#1;&#0;ĉ&#0;&#8;耀&#8;&quot;十二</rt></span></ruby>）<br>
   
  レセプト電算処理用傷病名コード：http://jpfhir.jp/fhir/clins/CodeSystem/claimSystem_syobyomei_CS（仮）<br>
    <br>
    </td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>urn:oid:1.2.392.200119.4.101.2</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>コード</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;20064049&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]</td>
  <td class=xl71 width=73 style='width:55pt'>display</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>コードに対応する表示名</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;十二指腸潰瘍&quot;</td>
 </tr>
 <tr height=180 style='height:135.0pt'>
  <td height=180 class=xl70 width=97 style='height:135.0pt;width:73pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>text</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>MEDIS
  病名交換コード：urn:oid:1.2.392.200119.4.101.6<br>
    病名管理番号：urn:oid:1.2.392.200119.4.101.2<br>
    ICD10分類コード：urn:oid:2.16.840.1.113883.6.3.1（仮）<br>
   
  レセプト電算処理用傷病名コード：http://jpfhi.jp/fhir/CodeSystem/claimSystem_syobyomei_CS（仮）<br>
    <br>
    </td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;十二指腸潰瘍・<ruby>H1<span
  style='display:none'><rt>カツドウ </rt></span></ruby><ruby>期<span
  style='display:none'><rt>キ </rt></span></ruby>&quot;</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>bodySite</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..*</td>
  <td class=xl71 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl71 width=359 style='width:269pt'>該当する状態が現れている解剖学的な場所を示す。<br>
   
  system値はMEDIS標準病名マスター修飾語交換用コードを使用する場合の例示。&quot;1244&quot;は、MEDIS標準病名マスター修飾語交換用コードで&quot;腹部&quot;のコード。&quot;腹部&quot;はそのテキスト記述の例。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>.coding[+].system =
  .coding[=].&quot;urn:oid:1.2.392.200119.4.201.5&quot;<br>
    .coding[=].code = &quot;1244&quot;<br>
    .coding[=].display =&quot;腹部&quot;<br>
    .text&quot;腹部&quot;</td>
 </tr>
 <tr height=140 style='height:105.0pt'>
  <td height=140 class=xl70 width=97 style='height:105.0pt;width:73pt'>subject</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>Reference(JP_Patient|
  JP_Patient_eCS_Contained)</td>
  <td class=xl71 width=359 style='width:269pt'><ruby>対象<span style='display:
  none'><rt>タイショウ </rt></span></ruby>となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）、保険個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述（次次行の例）を示す。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>例 1<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>　</td>
  <td class=xl71 width=87 style='width:65pt'>　</td>
  <td class=xl82 width=359 style='width:269pt'>電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合は、JP_Patientタイプのリソース（Patient.idの値が&quot;#patient203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのcontainedリソースのid値(Patient.id)を記述する例２となる。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#patient203987&quot;<br>
    }</td>
 </tr>
 <tr height=280 style='height:210.0pt'>
  <td height=280 class=xl70 width=97 style='height:210.0pt;width:73pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>　</td>
  <td class=xl71 width=87 style='width:65pt'>　</td>
  <td class=xl71 width=359 style='width:269pt'>保険個人識別子(例では、保険者等番号＝12345、被保険者証等の記号＝あいう、被保険者証等の番号＝１８７、枝番＝05の患者)を記述した外部にある患者リソースを参照する場合の例。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>例 ３<br>
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
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>encounter</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl75 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Reference (JP_Encounter |
  JP_Encounter_eCS_Contained)</td>
  <td class=xl71 width=359 style='width:269pt'>この傷病名情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。Bundleリソースなどで本リソースから参照可能なEncouertリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>例 1 <br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }</td>
 </tr>
 <tr height=220 style='height:165.0pt'>
  <td height=220 class=xl70 width=97 style='height:165.0pt;width:73pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>　</td>
  <td class=xl71 width=87 style='width:65pt'>　</td>
  <td class=xl71 width=359 style='width:269pt'>電子カルテシステムで入院時、外来受診時のいずれにおいて本情報が登録されたか記録さている場合にはその入院・外来区分をEncounter.class要素に設定し、そのEncounterリソースをContainedリソースとして本リソースに埋め込んで、それを参照すること。<br>
    <font class="font7">電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、JP_Encounterタイプのリソース（Encounter.idの値が&quot;#encounter203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述されることが必須であるため、そのcontainedリソースのid値(Encounter.id)を記述する例2となる。</font></td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#encounter203987&quot;<br>
    }</td>
 </tr>
 <tr height=340 style='height:255.0pt'>
  <td height=340 class=xl70 width=97 style='height:255.0pt;width:73pt'>(onset)</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>（dateTime、Age、Period、Range、string）のいずれかの型をとる。</td>
  <td class=xl71 width=359 style='width:269pt'>この傷病名情報が同定された時期。患者にこの<ruby>傷病<span
  style='display:none'><rt>ショウビョウ </rt></span></ruby>が出現した時期、あるいはなんらかのエビデンスによりこの<ruby>傷病<span
  style='display:none'><rt>ショウビョウ </rt></span></ruby>が患者にあると確認できた時期を記述する。<ruby><font
  class="font9">電子</font><span style='display:none'><rt>デンシ </rt></span></ruby><font
  class="font9">カルテシステムの</font><ruby><font class="font9">病名</font><span
  style='display:none'><rt>ビョウメイ </rt></span></ruby><ruby><font class="font9">開始日</font><span
  style='display:none'><rt>カイシビ </rt></span></ruby><font class="font9">をdateTime</font><ruby><font
  class="font9">型</font><span style='display:none'><rt>ガタ </rt></span></ruby><font
  class="font9">で</font><ruby><font class="font9">記述</font><span
  style='display:none'><rt>キジュツ </rt></span></ruby><font class="font9">するのが</font><ruby><font
  class="font9">一般的</font><span style='display:none'><rt>イッパンテキ </rt></span></ruby><font
  class="font9">な</font><ruby><font class="font9">方法</font><span
  style='display:none'><rt>ホウホウ </rt></span></ruby><font class="font9">である。電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名開始日をdateTime型で記述する。</font><br>
   
  記録を登録した日時は、別途recordedDateに記述する。記述方法として、1時点の日時、患者の年齢（曖昧な年齢時期の記述も可能）、開始時期と終了時期による期間、年齢の区間、（なんらかの出来事を引用して記述するような）文字列で時期を記述、の5通りのいずれかの要素（onsetDateTime、onseAge、onsetPeriod、onsetRange、onsetString）からひとつの記述方法を選択して、それにより記述する。複数を選択はできない。onset要素は記述しないで、直接onsetDateTime要素などonsetXXXXの要素により記述する。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl70 width=97 style='height:60.0pt;width:73pt'>onsetDateTime</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>dateTime</td>
  <td class=xl71 width=359 style='width:269pt'>一時点の記述方式：<br>
   
  日付または日時。年や年月だけでもよい。例：2018,1973-06,1905-08-23,2015-02-07T13:28:17+09:00。<br>
    時刻に24:00の使用はできない。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;2018&quot;<br>
    &quot;1973-06&quot;<br>
    &quot;1989-08-23&quot;<br>
    &quot;2015-02-07T13:28:17+09:00&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetAge</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Age</td>
  <td class=xl71 width=359 style='width:269pt'>年齢や年齢を基準にして記述する方式：<br>
    患者の申告による、状態が出現し始めた年齢。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>50歳 の例 、50歳 以上 の例 を以下 に示 す。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetAge</td>
  <td class=xl71 width=73 style='width:55pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>decimal</td>
  <td class=xl71 width=359 style='width:269pt'>年齢の値。月齢や週齢なども可能。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;50&quot;</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>onsetAge</td>
  <td class=xl71 width=73 style='width:55pt'>comparator</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>valueの値と等しい年齢を表現したい場合には、=は不要でこの要素は出現しない。<br>
    そうでない指定をしたい場合には、&lt;、&lt;=、&gt;=、&gt;のいずれか。<br>
    要素valueの値の解釈方法。例では、「50歳以上で」と記述したい場合には、&gt;=を記述する。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;&gt;=&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetAge</td>
  <td class=xl71 width=73 style='width:55pt'>unit</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>単位表現。文字列で単位文字列を記述する。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;歳&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetAge</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl71 width=359 style='width:269pt'>単位体系UCUMコード体系。固定値。</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetAge</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;a&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetPeriod</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Preiod</td>
  <td class=xl71 width=359 style='width:269pt'>期間。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetPeriod</td>
  <td class=xl71 width=73 style='width:55pt'>start</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>dateTime</td>
  <td class=xl71 width=359 style='width:269pt'>期間の開始日時</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetPeriod</td>
  <td class=xl71 width=73 style='width:55pt'>end</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>dateTime</td>
  <td class=xl71 width=359 style='width:269pt'>期間の終了日時</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Range</td>
  <td class=xl71 width=359 style='width:269pt'>曖昧な時期を最小値と最大値とで記述する。以下の記述例は50歳台。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>low</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl71 width=359 style='width:269pt'>下限値表現</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>low</td>
  <td class=xl71 width=73 style='width:55pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>decimal</td>
  <td class=xl71 width=359 style='width:269pt'>年齢の値。月齢や週齢なども可能</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;50&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>low</td>
  <td class=xl71 width=73 style='width:55pt'>unit</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>単位表現</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;歳&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>low</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl71 width=359 style='width:269pt'>単位体系UCUMコード体系。</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>low</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;a&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>high</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl71 width=359 style='width:269pt'>　</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>high</td>
  <td class=xl71 width=73 style='width:55pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>decimal</td>
  <td class=xl71 width=359 style='width:269pt'>年齢の値。月齢や週齢なども可能</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;59&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>high</td>
  <td class=xl71 width=73 style='width:55pt'>unit</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>単位表現</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;歳&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>high</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>uri</td>
  <td class=xl71 width=359 style='width:269pt'>単位体系UCUMコード体系。</td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=97 style='height:30.0pt;width:73pt'>onsetRange</td>
  <td class=xl71 width=73 style='width:55pt'>high</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>code</td>
  <td class=xl71 width=359 style='width:269pt'>単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;a&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>onsetString</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>string</td>
  <td class=xl71 width=359 style='width:269pt'>｀</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;70歳台&quot;</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl70 width=97 style='height:195.0pt;width:73pt'>（abatement）</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>（dateTime、Age、Period、Range、string）のいずれかの型をとる。</td>
  <td class=xl71 width=359 style='width:269pt'>この傷病名情報による<ruby>患者<span
  style='display:none'><rt>カンジャ </rt></span></ruby><ruby>状態<span
  style='display:none'><rt>ジョウタイ </rt></span></ruby>が<ruby>終了<span
  style='display:none'><rt>シュウリョウ </rt></span></ruby>したと<ruby>同定<span
  style='display:none'><rt>ドウテイ </rt></span></ruby>された時期。患者にこの<ruby>傷病<span
  style='display:none'><rt>ショウビョウ </rt></span></ruby>のある<ruby>状態<span
  style='display:none'><rt>ジョウタイ </rt></span></ruby>が<ruby>終了<span
  style='display:none'><rt>シュウリョウ </rt></span></ruby>した時期、あるいはなんらかのエビデンスによりこの<ruby>傷病<span
  style='display:none'><rt>ショウビョウ </rt></span></ruby>のある<ruby>状態<span
  style='display:none'><rt>ジョウタイ </rt></span></ruby>が<ruby>改善<span
  style='display:none'><rt>カイゼン </rt></span></ruby>もしくはある<ruby>状態<span
  style='display:none'><rt>ジョウタイ </rt></span></ruby>になったと確認できた時期を記述する。<ruby><font
  class="font9">電子</font><span style='display:none'><rt>デンシ </rt></span></ruby><font
  class="font9">カルテシステムの</font><ruby><font class="font9">病名</font><span
  style='display:none'><rt>ビョウメイ </rt></span></ruby><ruby><font class="font9">終了</font><span
  style='display:none'><rt>シュウリョウ </rt></span></ruby><ruby><font class="font9">日</font><span
  style='display:none'><rt>カイシビ </rt></span></ruby><font class="font9">をdateTime</font><ruby><font
  class="font9">型</font><span style='display:none'><rt>ガタ </rt></span></ruby><font
  class="font9">で</font><ruby><font class="font9">記述</font><span
  style='display:none'><rt>キジュツ </rt></span></ruby><font class="font9">するのが</font><ruby><font
  class="font9">一般的</font><span style='display:none'><rt>イッパンテキ </rt></span></ruby><font
  class="font9">な</font><ruby><font class="font9">方法</font><span
  style='display:none'><rt>ホウホウ </rt></span></ruby><font class="font9">である。電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名</font><ruby><font
  class="font9">終了</font><span style='display:none'><rt>シュウリョウ </rt></span></ruby><font
  class="font9">日をdateTime型で記述する。この</font><ruby><font class="font9">終了日</font><span
  style='display:none'><rt>シュウリョウヒ </rt></span></ruby><font class="font9">における</font><ruby><font
  class="font9">転帰</font><span style='display:none'><rt>テンキ </rt></span></ruby><ruby><font
  class="font9">情報</font><span style='display:none'><rt>ジョウホウ </rt></span></ruby><font
  class="font9">をclinicalStatus</font><ruby><font class="font9">要素</font><span
  style='display:none'><rt>ヨウソ </rt></span></ruby><font class="font9">に</font><ruby><font
  class="font9">記述</font><span style='display:none'><rt>キジュツ </rt></span></ruby><font
  class="font9">すること。</font><ruby><font class="font9">通常</font><span
  style='display:none'><rt>ツウジョウ </rt></span></ruby><font class="font9">は、この</font><ruby><font
  class="font9">日付</font><span style='display:none'><rt>ヒヅケ </rt></span></ruby><font
  class="font9">がある</font><ruby><font class="font9">場合</font><span
  style='display:none'><rt>バアイ </rt></span></ruby><font class="font9">のclinicalStatus</font><ruby><font
  class="font9">要素</font><span style='display:none'><rt>ヨウソ </rt></span></ruby><font
  class="font9">は&quot;active&quot;</font><ruby><font class="font9">以外</font><span
  style='display:none'><rt>イガイ </rt></span></ruby><font class="font9">の</font><ruby><font
  class="font9">値</font><span style='display:none'><rt>アタイ </rt></span></ruby><font
  class="font9">となるが、</font><ruby><font class="font9">例外的</font><span
  style='display:none'><rt>レイガイテキ </rt></span></ruby><font class="font9">に&quot;active&quot;でもよい。</font><br>
    abatement要素は記述しないで、直接abatementDateTime要素などabatementXXXXの要素により記述する。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>abatementDateTime</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>dateTime</td>
  <td class=xl71 width=359 style='width:269pt'>一時点の記述方式：<br>
   
  日付または日時。年や年月だけでもよい。例：2018,1973-06,1905-08-23,2015-02-07T13:28:17+09:00。<br>
    時刻に24:00の使用はできない。<br>
    dateTime以外の方法で記述したい場合には、oncet要素の説明を参照のこと。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;1989-08-23&quot;<br>
    </td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl70 width=97 style='height:20.0pt;width:73pt'>recordedDate</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>dateTime</td>
  <td class=xl84 width=359 style='border-top:none;width:269pt'>この状態が記録された日時。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;1989-08-23&quot;</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=97 style='height:90.0pt;width:73pt'>recorder</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl75 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Reference(JP_Practitioner|
  JP_Practitioner_eCS_Contained)</td>
  <td class=xl71 width=359 style='width:269pt'>この状態を記録した人情報への参照。医療者のContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する。</td>
  <td class=xl71 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>{<br>
    <span style='mso-spacerun:yes'>   </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#practitioner20394&quot;<br>
    }</td>
 </tr>
 <tr height=240 style='height:180.0pt'>
  <td height=240 class=xl85 width=97 style='height:180.0pt;width:73pt'>asserter</td>
  <td class=xl86 width=73 style='width:55pt'>　</td>
  <td class=xl86 width=73 style='width:55pt'>　</td>
  <td class=xl86 width=73 style='width:55pt'>　</td>
  <td class=xl87 width=35 style='width:26pt'>0..1</td>
  <td class=xl86 width=87 style='width:65pt'>Reference(JP_Patient|
  JP_Patient_eCS_Contained| JP_Practitioner| JP_Practitioner_eCS_Contained
  |RelatedPerson|)</td>
  <td class=xl86 width=359 style='width:269pt'>この状態があると確認（主張）した人情報への参照。医療者、患者本人の場合にはそれぞれのContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する。</td>
  <td class=xl86 width=36 style='width:27pt'>例示</td>
  <td class=xl88 width=195 style='width:146pt'>{<br>
    <span style='mso-spacerun:yes'>   </span>&quot;display&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;本人 の母 &quot;<br>
    }</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl92 align=left width=97 style='height:20.0pt;width:73pt'>stage</td>
  <td class=xl89 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-left:none;width:26pt'>0..*</td>
  <td class=xl89 width=87 style='border-left:none;width:65pt'>　</td>
  <td class=xl90 align=left width=359 style='border-left:none;width:269pt'>この状態の臨床的ステージやグレード表現。</td>
  <td class=xl90 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl91 width=195 style='border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td rowspan=3 height=94 class=xl92 width=97 style='height:70.0pt;border-top:
  none;width:73pt'>　</td>
  <td rowspan=3 class=xl89 align=left width=73 style='border-top:none;
  width:55pt'>summary</td>
  <td rowspan=3 class=xl89 width=73 style='border-top:none;width:55pt'>　</td>
  <td rowspan=3 class=xl89 width=73 style='border-top:none;width:55pt'>　</td>
  <td rowspan=3 class=xl89 align=left width=35 style='border-top:none;
  width:26pt'>0..1</td>
  <td rowspan=3 class=xl89 align=left width=87 style='border-top:none;
  width:65pt'>CodeableConcept</td>
  <td rowspan=3 class=xl89 align=left width=359 style='border-top:none;
  width:269pt'>system<font class="font6">値は</font><font class="font10">MEDIS</font><font
  class="font6">標準病名マスター修飾語交換用コードを使用する場合の例示。</font><font class="font10">&quot;1244&quot;</font><font
  class="font6">は、</font><font class="font10">MEDIS</font><font class="font6">標準病名マスター修飾語交換用コードで</font><font
  class="font10">&quot;</font><font class="font6">第１期</font><font class="font10">&quot;</font><font
  class="font6">のコード。</font><font class="font10">&quot;</font><font
  class="font6">第１期</font><font class="font10">&quot;</font><font class="font6">はそのテキスト記述の例。</font></td>
  <td rowspan=3 class=xl98 align=left width=36 style='border-bottom:.5pt solid black;
  border-top:none;width:27pt'>例示</td>
  <td class=xl91 align=left width=195 style='border-top:none;border-left:none;
  width:146pt'>&quot;urn:oid:<font class="font11">1.2.392.200119.4.201.5</font><font
  class="font10">&quot;</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl91 align=left width=195 style='height:20.0pt;
  border-top:none;border-left:none;width:146pt'>&quot;32GR&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl91 align=left width=195 style='height:20.0pt;
  border-top:none;border-left:none;width:146pt'>&quot;<font class="font6">第１期</font><font
  class="font10">&quot;</font></td>
 </tr>
 <tr height=112 style='height:84.0pt'>
  <td height=112 class=xl92 width=97 style='height:84.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl89 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>assessment</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..*</td>
  <td class=xl89 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Reference(ClinicalImpression | DiagnosticReport | Observation)</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>ステージ情報の根拠となる診断レポートや検査結果、または臨床評価情報への参照する。</td>
  <td class=xl90 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'>例示</td>
  <td class=xl91 align=left width=195 style='border-top:none;border-left:none;
  width:146pt'>&quot;urn:...&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl92 width=97 style='height:45.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl89 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>type</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl89 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>ステージ分類の種類。病理学的分類、臨床分類、<font class="font10">TNM</font><font
  class="font6">肺癌分類、など。当面コーディングをせず、text記述だけ必要に応じて行う。</font></td>
  <td class=xl90 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl92 align=left width=97 style='height:30.0pt;border-top:
  none;width:73pt'>evidence</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..*</td>
  <td class=xl89 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>状態を確認または反駁した証拠など、状態の検証ステータスの基礎となる裏付けとなる証拠<font class="font10">/</font><font
  class="font6">兆候。</font></td>
  <td class=xl90 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=93 style='height:70.0pt'>
  <td height=93 class=xl92 width=97 style='height:70.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl89 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..*</td>
  <td class=xl89 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>状態を裏付ける症状や所見。system値はMEDIS標準病名マスター病名交換用コードを使用する場合の例示。&quot;BOEF&quot;は、MEDIS標準病名マスター病名交換用コードで&quot;持続腹痛&quot;のコード。&quot;持続腹痛&quot;はそのテキスト記述の例。</td>
  <td class=xl90 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 align=left width=195 style='border-top:none;border-left:none;
  width:146pt'>&quot;urn:oid:1.2.392.200119.4.101.6&quot;<br>
    &quot;B0EF&quot;<br>
    &quot;持続腹痛&quot;<br>
    &quot;長く続く腹部の痛み&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl92 align=left width=97 style='height:20.0pt;border-top:
  none;width:73pt'>note</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..*</td>
  <td class=xl89 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>患者状態に関する追加的な情報</td>
  <td class=xl90 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl92 width=97 style='height:20.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl89 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>author</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl89 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl89 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl89 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl92 width=97 style='height:28.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>authorString</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl89 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
  <td class=xl90 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 align=left width=195 style='border-top:none;border-left:none;
  width:146pt'>&quot;<font class="font6">病理検査担当者</font><font class="font10">&quot;</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl92 width=97 style='height:20.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl89 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>time</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl89 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl89 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>dateTime</td>
  <td class=xl90 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>この追加的な情報が作成された日時。</td>
  <td class=xl90 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl91 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl93 width=97 style='height:31.0pt;border-top:none;
  width:73pt'>　</td>
  <td class=xl94 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>text</td>
  <td class=xl94 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>1..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>markdown</td>
  <td class=xl95 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>追加的な情報の内容。<font class="font10">markdown</font><font class="font6">形式のテキストが使用できる。データとして</font><font
  class="font10">1M</font><font class="font6">バイト以内であること。</font></td>
  <td class=xl95 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl96 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>

</table>
</div>
</details>

<br>

## プロファイル
