
# 処方情報

## 背景および想定シナリオ
このプロファイルは、診療情報提供書や退院時サマリーなどの2文書や、電子カルテ情報共有サービスに登録される６情報をはじめ、各種の診療サマリーなどに処方情報を記述するためのMedicationRequestリソースのプロファイルを規定することを想定している。

## スコープ

### 対象
電子カルテシステムで登録された病名、診断書、診療情報提供書、退院時サマリーなどの診療要約記録などに記述される、ひとつひとつの医薬品に関する処方情報を対象とする。


## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素　（MedicationRequestの直下の必須要素）
  - resourceType : リソースタイプ "MedicationRequest"
  - meta.lastUpdated : 最終更新日時
  - identifier[] : インスタンス識別ID
  - status : 調剤が完了しているかどうかは不明であるが、交付が完了した処方として、completedを設定することとする。
  - intent : 投薬指示の意図。"order" を固定で設定する。
  - medicationCodeableConcept : 医薬品のコードと名称。ひとつの必須の text 子要素と、複数の（可能なかぎり一組以上の） coding[] 子要素で記述する。text子要素はコード化の方法に関わらず、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず設定する。coding[]子要素で使用すべきコード表については詳細説明を参照のこと。
  - subject : 対象となる患者のFHIRリソースへの参照。電子カルテ情報共有サービスでは、 contained (JP_Patient)リソースへのリテラル参照を設定する。
  - authoredOn : 処方指示が最初に作成された日時。
  - dosageInstruction[] : 用法や投与量を含む処方指示。<a href="#DosageInstructionTable">表「dosageInstructionTable」</a>を参照。

### 必須要素　（MedicationRequest.DosageInstructionの直下の必須要素）
  - DosageInstruction[].extension[] : 投与開始日を明示するために使用する拡張「PeriodOfUse」
  - DosageInstruction[].text : dosageInstructionが表す処方指示の文字列表現。
  - DosageInstruction[].timing : 服用タイミング。timing.codeにコード化された用法、timing.txtに用法のテキストを記述。

### 条件により必須
  - meta.tag : 電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に必須。
  - contained (JP_Patient) : 電子カルテ情報共有サービスでは、JP_Patientリソースのcontainedは必須。

### 推奨要素
  - caetgory : 薬剤使用区分。OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）
JHSP0007コードから、BDP:持参薬処方　などの区分を設定する。

## 要素の説明とプロファイル
  - 多重度欄の背景色：濃い黄色＝必須要素、薄い黄色＝条件により必須要素、薄い緑＝推奨要素、無色＝本要素を記述する場合の説明を参考までに記載しているが多重度は0..1または0..*であるため出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい（多重度が0..1または0..*の）要素は、出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表で要素名のあとに[ ]表記があるものは、値が１個であっても、JSONデータのリスト型の値で記述しなければならない。
  - 要素[*] ：　この要素は繰り返し可能であり、値の記述はリストとなる。
  - 要素[+] ：　（繰り返し可能な要素において）新たなひとつの要素の子要素値として記述される。
  - 要素[=] ：　（繰り返し可能な要素において）すぐ上の要素と同じ要素の子要素値として記述される。


## 詳細説明
<script>

function details_open(onoff, idname, idCloseButton){
  var elem = document.getElementById(idname);
  elem.open = onoff;
  if (onoff == true){
    document.getElementById(idCloseButton).style.display = 'none';
  } else {
    document.getElementById(idCloseButton).style.display = 'inline';
  }
}
</script>


<h3>表「MedicationRequest」</h3>
<button id="mrc" type="button" onclick="details_open(true,'MedicationRequestDetails','mrc')">表「MedicationRequest」開く</button>
<details id="MedicationRequestDetails">
<button type="button" onclick="details_open(false,'MedicationRequestDetails', 'mrc')">閉じる</button>
<summary></summary>

<div id="MedicationRequestTable_4580" class="StructureDefinition-JP-MedicationRequest-eCS-intro-profile-table" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1062 style='border-collapse:
 collapse;table-layout:fixed;width:796pt'>
 <col class=xl125 width=76 style='mso-width-source:userset;mso-width-alt:2084;
 width:57pt'>
 <col class=xl125 width=83 style='mso-width-source:userset;mso-width-alt:2267;
 width:62pt'>
 <col class=xl125 width=73 style='mso-width-source:userset;mso-width-alt:2011;
 width:55pt'>
 <col class=xl125 width=57 span=2 style='mso-width-source:userset;mso-width-alt:
 1572;width:43pt'>
 <col class=xl123 width=39 style='mso-width-source:userset;mso-width-alt:1060;
 width:29pt'>
 <col class=xl123 width=87 style='mso-width-source:userset;mso-width-alt:2377;
 width:65pt'>
 <col class=xl123 width=359 style='mso-width-source:userset;mso-width-alt:9837;
 width:269pt'>
 <col class=xl123 width=36 style='mso-width-source:userset;mso-width-alt:987;
 width:27pt'>
 <col class=xl153 width=195 style='mso-width-source:userset;mso-width-alt:5339;
 width:146pt'>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl94 width=76 style='height:76.0pt;width:57pt'>要素<font
  class="font13">Lv1</font></td>
  <td class=xl95 width=83 style='width:62pt'>要素<font class="font13">Lv2</font></td>
  <td class=xl95 width=73 style='width:55pt'>要素<font class="font13">Lv3</font></td>
  <td class=xl95 width=57 style='width:43pt'>要素<font class="font13">Lv4</font></td>
  <td class=xl95 width=57 style='width:43pt'>要素<font class="font13">Lv5</font></td>
  <td class=xl96 width=39 style='width:29pt'>多重度</td>
  <td class=xl96 width=87 style='width:65pt'>型</td>
  <td class=xl96 width=359 style='width:269pt'>説明<ruby><font class="font5"><rt
  class=font5></rt></font></ruby></td>
  <td class=xl96 width=36 style='width:27pt'>固定値 <br>
    ／ 例 示</td>
  <td class=xl139 width=195 style='width:146pt'>値</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl97 width=76 style='height:31.0pt;width:57pt'>resourceType</td>
  <td class=xl98 width=83 style='width:62pt'>　</td>
  <td class=xl98 width=73 style='width:55pt'>　</td>
  <td class=xl98 width=57 style='width:43pt'>　</td>
  <td class=xl98 width=57 style='width:43pt'>　</td>
  <td class=xl99 width=39 style='width:29pt'>1..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl100 width=87 style='width:65pt'>　</td>
  <td class=xl100 width=359 style='width:269pt'>MedicationRequest<font
  class="font12">リソースであることを示す。</font></td>
  <td class=xl89 width=36 style='width:27pt'>固定値</td>
  <td class=xl140 width=195 style='width:146pt'>&quot;MedicationRequest&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl101 width=76 style='height:20.0pt;border-top:none;
  width:57pt'>meta</td>
  <td class=xl102 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl102 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl102 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl102 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl103 width=39 style='border-top:none;width:29pt'>1..1</td>
  <td class=xl104 width=87 style='border-top:none;width:65pt'>Meta</td>
  <td class=xl104 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl104 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl141 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=360 style='height:270.0pt'>
  <td height=360 class=xl79 width=76 style='height:270.0pt;width:57pt'>meta</td>
  <td class=xl80 width=83 style='width:62pt'>lastUpdated</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl77 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>instant</td>
  <td class=xl73 width=359 style='width:269pt'>最終更新日時。<font class="font10">YYYY-MM-DDThh:mm:ss.sss+zz:zz
  (</font><font class="font6">例</font><font class="font10">.
  2015-02-07T13:28:17.239+09:00)</font><font class="font6"><br>
   
  この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</font></td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl142 width=195 style='width:146pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
 </tr>
 <tr height=364 style='height:273.0pt'>
  <td height=364 class=xl79 width=76 style='height:273.0pt;width:57pt'>meta</td>
  <td class=xl80 width=83 style='width:62pt'>profile[+]</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=39 style='width:29pt'>0..*</td>
  <td class=xl73 width=87 style='width:65pt'>canonical(StructureDefinition)</td>
  <td class=xl78 width=359 style='width:269pt'>準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。</td>
  <td class=xl78 width=36 style='width:27pt'>固定値(<ruby>用途<span
  style='display:none'><rt>ヨウト </rt></span></ruby>に応じてどちらかを<ruby>選択<span
  style='display:none'><rt>センタク </rt></span></ruby>)</td>
  <td class=xl154 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_eClinicalSummary&quot;　<ruby><font
  class="font16">電子</font><span style='display:none'><rt>デンシ </rt></span></ruby><font
  class="font16">カルテ</font><ruby><font class="font16">情報</font><span
  style='display:none'><rt>ジョウホウ </rt></span></ruby><ruby><font class="font16">共有</font><span
  style='display:none'><rt>キョウユウ </rt></span></ruby><font class="font16">サービスにおいて</font><ruby><font
  class="font16">本</font><span style='display:none'><rt>ホン </rt></span></ruby><font
  class="font16">リソースデータを</font><ruby><font class="font16">検証</font><span
  style='display:none'><rt>ケンショウ </rt></span></ruby><font class="font16">したい</font><ruby><font
  class="font16">場合</font><span style='display:none'><rt>バアイ </rt></span></ruby><font
  class="font16">には、&quot;ht</font><ruby><font class="font16">tp</font><span
  style='display:none'><rt>シヨウ </rt></span></ruby><font class="font16">://jpfhir.jp/fhir/clins/StructureDefinition/JP_MedicationRequest_eClinicalSummary&quot;を使用する。</font></td>
 </tr>
 <tr class=xl124 height=27 style='height:20.0pt'>
  <td height=27 class=xl79 width=76 style='height:20.0pt;width:57pt'>meta</td>
  <td class=xl80 width=83 style='width:62pt'>tag[*]</td>
  <td class=xl80 width=73 style='width:55pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=39 style='width:29pt'>0..*</td>
  <td class=xl78 width=87 style='width:65pt'>Coding</td>
  <td class=xl78 width=359 style='width:269pt'><ruby>本リソースのタグ情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl142 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl124 height=60 style='height:45.0pt'>
  <td height=60 class=xl79 width=76 style='height:45.0pt;width:57pt'>meta</td>
  <td class=xl80 width=83 style='width:62pt'>tag[+]</td>
  <td class=xl80 width=73 style='width:55pt'>system</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=39 style='width:29pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl83 width=359 style='width:269pt'>電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用</td>
  <td class=xl78 width=36 style='width:27pt'>固定値</td>
  <td class=xl142 width=195 style='width:146pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr class=xl124 height=41 style='height:31.0pt'>
  <td height=41 class=xl105 width=76 style='height:31.0pt;width:57pt'>meta</td>
  <td class=xl106 width=83 style='width:62pt'>tag[=]</td>
  <td class=xl106 width=73 style='width:55pt'>code</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl107 width=39 style='width:29pt'>1..1</td>
  <td class=xl88 width=87 style='width:65pt'>code</td>
  <td class=xl88 width=359 style='width:269pt'>長期保存情報フラグ</td>
  <td class=xl88 width=36 style='width:27pt'>固定値</td>
  <td class=xl143 width=195 style='width:146pt'>&quot;LTS&quot;</td>
 </tr>
 <tr class=xl124 height=37 style='height:28.0pt'>
  <td height=37 class=xl108 width=76 style='height:28.0pt;border-top:none;
  width:57pt'>contained[*]</td>
  <td class=xl109 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl109 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl110 width=39 style='border-top:none;width:29pt'>0..*</td>
  <td class=xl111 width=87 style='border-top:none;width:65pt'>　</td>
  <td class=xl111 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl111 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl144 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr class=xl124 height=100 style='height:75.0pt'>
  <td height=100 class=xl79 width=76 style='height:75.0pt;width:57pt'>contained[+]</td>
  <td class=xl80 width=83 style='width:62pt'>　</td>
  <td class=xl80 width=73 style='width:55pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl84 width=39 style='width:29pt'>0..1*</td>
  <td class=xl78 width=87 style='width:65pt'>Resource(JP_Patient )</td>
  <td class=xl78 width=359 style='width:269pt'>patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースの必須要素だけが含まれればよい。<br>
    <font class="font7">電子カルテ情報共有サービスでは、JP_Patientリソースのcontainedは必須。</font></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl142 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl67 width=76 style='height:90.0pt;width:57pt'>contained[+]</td>
  <td class=xl68 width=83 style='width:62pt'>　</td>
  <td class=xl68 width=73 style='width:55pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl70 width=39 style='width:29pt'>0..1*</td>
  <td class=xl68 width=87 style='width:65pt'>Resource(JP_Encounter )</td>
  <td class=xl68 width=359 style='width:269pt'>encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースの必須要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl69 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl67 width=76 style='height:60.0pt;width:57pt'>contained[+]</td>
  <td class=xl68 width=83 style='width:62pt'>　</td>
  <td class=xl68 width=73 style='width:55pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=39 style='width:29pt'>0..1*</td>
  <td class=xl68 width=87 style='width:65pt'>Resource(JP_Practitioner<span
  style='mso-spacerun:yes'>  </span>)</td>
  <td class=xl68 width=359 style='width:269pt'>requester要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースの必須要素だけが含まれればよい。<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby><ruby>者<span
  style='display:none'><rt>シャ </rt></span></ruby>のIDや<ruby>氏名<span
  style='display:none'><rt>シメイ </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>などが<ruby>必要<span
  style='display:none'><rt>ヒツヨウ </rt></span></ruby>な<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>にこのリソースに<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl69 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl67 width=76 style='height:45.0pt;width:57pt'>contained[+]</td>
  <td class=xl68 width=83 style='width:62pt'>　</td>
  <td class=xl68 width=73 style='width:55pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=39 style='width:29pt'>0..1*</td>
  <td class=xl68 width=87 style='width:65pt'>Resource(JP_Practitioner<span
  style='mso-spacerun:yes'>  </span>)</td>
  <td class=xl68 width=359 style='width:269pt'>basedOn要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_Practitionerリソースの必須要素だけが含まれればよい。</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl69 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl124 height=233 style='mso-height-source:userset;height:175.0pt'>
  <td height=233 class=xl105 width=76 style='height:175.0pt;width:57pt'>identifier[*]</td>
  <td class=xl106 width=83 style='width:62pt'>　</td>
  <td class=xl106 width=73 style='width:55pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl112 width=39 style='width:29pt'>1..*</td>
  <td class=xl88 width=87 style='width:65pt'>Identifier</td>
  <td class=xl88 width=359 style='width:269pt'><br>
    このリソース<ruby>情報<span style='display:none'><rt>ジョウホウ </rt></span></ruby>、および<ruby>必要<span
  style='display:none'><rt>ヒツヨウ </rt></span></ruby>であれば<ruby>処方箋<span
  style='display:none'><rt>ショホウセン </rt></span></ruby>における<ruby>剤<span
  style='display:none'><rt>ザイ </rt></span></ruby>グループ<ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>、<ruby>剤<span
  style='display:none'><rt>ザイ </rt></span></ruby>グループ<ruby>内<span
  style='display:none'><rt>&#127514;️</rt></span></ruby>の<ruby>順序<span
  style='display:none'><rt>ジュンジョ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>などを<ruby>格納<span
  style='display:none'><rt>カクノウ ソウトウ </rt></span></ruby>する。</td>
  <td class=xl88 width=36 style='width:27pt'>　</td>
  <td class=xl143 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl124 height=140 style='height:105.0pt'>
  <td height=140 class=xl108 width=76 style='height:105.0pt;border-top:none;
  width:57pt'>identifier[+]</td>
  <td class=xl109 width=83 style='border-top:none;width:62pt'>system</td>
  <td class=xl109 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl113 width=39 style='border-top:none;width:29pt'>1..1</td>
  <td class=xl111 width=87 style='border-top:none;width:65pt'>uri</td>
  <td class=xl111 width=359 style='border-top:none;width:269pt'>このリソース情報を作成した施設内で、このリソース情報を他のリソース情報と一意に区別できるID。このID情報をキーとして本リソース情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。処方を発行したシステムで固有に発番している処方オーダ番号に相当する。</td>
  <td class=xl111 width=36 style='border-top:none;width:27pt'>固定値</td>
  <td class=xl155 width=195 style='border-top:none;border-left:none;width:146pt'>http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></td>
 </tr>
 <tr class=xl124 height=41 style='height:31.0pt'>
  <td height=41 class=xl128 width=76 style='height:31.0pt;width:57pt'>identifier[=]</td>
  <td class=xl129 width=83 style='width:62pt'>value</td>
  <td class=xl129 width=73 style='width:55pt'>　</td>
  <td class=xl129 width=57 style='width:43pt'>　</td>
  <td class=xl129 width=57 style='width:43pt'>　</td>
  <td class=xl130 width=39 style='width:29pt'>1..1</td>
  <td class=xl131 width=87 style='width:65pt'>string</td>
  <td class=xl131 width=359 style='width:269pt'>このリソース情報IDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl131 width=36 style='width:27pt'>例示</td>
  <td class=xl145 width=195 style='width:146pt'>&quot;1311234567-2020-00123456&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl108 width=76 style='height:30.0pt;width:57pt'>identifier[+]</td>
  <td class=xl102 width=83 style='width:62pt'>system</td>
  <td class=xl102 width=73 style='width:55pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl113 width=39 style='width:29pt'>1..1</td>
  <td class=xl104 width=87 style='width:65pt'>uri</td>
  <td class=xl104 width=359 style='width:269pt'>剤グループ（Rp）番号。剤グループ番号の名前空間を識別する<font
  class="font11">URI</font><font class="font12">。固定値。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl111 width=36 style='width:27pt'>固定値</td>
  <td class=xl141 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.81&quot;</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl128 width=76 style='height:61.0pt;width:57pt'>identifier[=]</td>
  <td class=xl132 width=83 style='width:62pt'>value</td>
  <td class=xl132 width=73 style='width:55pt'>　</td>
  <td class=xl132 width=57 style='width:43pt'>　</td>
  <td class=xl132 width=57 style='width:43pt'>　</td>
  <td class=xl130 width=39 style='width:29pt'>1..1</td>
  <td class=xl133 width=87 style='width:65pt'>string</td>
  <td class=xl133 width=359 style='width:269pt'>剤グループ番号。この<ruby>医薬品<span
  style='display:none'><rt class=font14>イヤクヒン </rt></span></ruby>が<ruby>処方箋<span
  style='display:none'><rt class=font14>ショホウセン </rt></span></ruby>の<ruby>中<span
  style='display:none'><rt class=font14>ナカ </rt></span></ruby>のひとつの<ruby>医薬品<span
  style='display:none'><rt class=font14>イヤクヒン </rt></span></ruby><ruby>情報<span
  style='display:none'><rt class=font14>ジョウホウ </rt></span></ruby>として<ruby>記述<span
  style='display:none'><rt class=font14>キジュツ </rt></span></ruby>されたのではない<ruby>場合<span
  style='display:none'><rt class=font14>バアイ </rt></span></ruby>や、<ruby>元<span
  style='display:none'><rt class=font14>モト </rt></span></ruby>の<ruby>処方箋<span
  style='display:none'><rt class=font14>ショホウセン </rt></span></ruby><ruby>内<span
  style='display:none'><rt class=font14>&#127514;️</rt></span></ruby>での<ruby>番号<span
  style='display:none'><rt class=font14>バンゴウ </rt></span></ruby>などを<ruby>必要<span
  style='display:none'><rt class=font14>ヒツヨウ </rt></span></ruby>としない場合には、<ruby>常<span
  style='display:none'><rt class=font14>ツネ </rt></span></ruby>に&quot;1&quot;を<ruby>設定<span
  style='display:none'><rt class=font14>セッテイ </rt></span></ruby>する。</td>
  <td class=xl131 width=36 style='width:27pt'>例示</td>
  <td class=xl146 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl108 width=76 style='height:30.0pt;width:57pt'>identifier[+]</td>
  <td class=xl102 width=83 style='width:62pt'>system</td>
  <td class=xl102 width=73 style='width:55pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl113 width=39 style='width:29pt'>1..1</td>
  <td class=xl104 width=87 style='width:65pt'>uri</td>
  <td class=xl104 width=359 style='width:269pt'>剤グループ内連番。剤グループ内番号の名前空間を識別する<font
  class="font11">URI</font><font class="font12">。固定値。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl111 width=36 style='width:27pt'>固定値</td>
  <td class=xl141 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.82&quot;</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl128 width=76 style='height:61.0pt;width:57pt'>identifier[=]</td>
  <td class=xl132 width=83 style='width:62pt'>value</td>
  <td class=xl132 width=73 style='width:55pt'>　</td>
  <td class=xl132 width=57 style='width:43pt'>　</td>
  <td class=xl132 width=57 style='width:43pt'>　</td>
  <td class=xl130 width=39 style='width:29pt'>1..1</td>
  <td class=xl133 width=87 style='width:65pt'>string</td>
  <td class=xl133 width=359 style='width:269pt'>剤グループ内連番。この医薬品が処方箋の中のひとつの医薬品情報として記述されたのではない場合や、元の処方箋内での剤グループ<ruby>内<span
  style='display:none'><rt>&#127514;️</rt></span></ruby>の番号などを必要としない場合には、常に&quot;1&quot;を設定する。</td>
  <td class=xl131 width=36 style='width:27pt'>例示</td>
  <td class=xl146 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=61 style='height:46.0pt'>
  <td height=61 class=xl134 width=76 style='height:46.0pt;width:57pt'>status</td>
  <td class=xl135 width=83 style='width:62pt'>　</td>
  <td class=xl135 width=73 style='width:55pt'>　</td>
  <td class=xl135 width=57 style='width:43pt'>　</td>
  <td class=xl135 width=57 style='width:43pt'>　</td>
  <td class=xl136 width=39 style='width:29pt'>1..1</td>
  <td class=xl137 width=87 style='width:65pt'>code</td>
  <td class=xl137 width=359 style='width:269pt'><ruby>一般<span style='display:
  none'><rt class=font14>イッパン </rt></span></ruby>に<ruby>処方<span
  style='display:none'><rt class=font14>ショホウ </rt></span></ruby><ruby>依頼<span
  style='display:none'><rt class=font14>イライ </rt></span></ruby><ruby>時<span
  style='display:none'><rt class=font14>ジ </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt class=font14>ジョウホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt class=font14>サクセイ </rt></span></ruby>した<ruby>時点<span
  style='display:none'><rt class=font14>ジテン </rt></span></ruby>では、その<ruby>調<span
  style='display:none'><rt class=font14>コウフ </rt></span></ruby>剤<ruby>が完<span
  style='display:none'><rt class=font14>カンリョウ </rt></span></ruby>了しているかどうかは不明であるが、交付<ruby>が完<span
  style='display:none'><rt class=font14>セッテイ </rt></span></ruby>了した処<ruby>方と<span
  style='display:none'><rt class=font14>チョウザイ </rt></span></ruby>し<ruby>て、<span
  style='display:none'><rt class=font14>カンリョウ </rt></span></ruby>&quot;completed&quot;
  <ruby>を<span style='display:none'><rt class=font14>フメイ </rt></span></ruby>固定で設定することとする。</td>
  <td class=xl138 width=36 style='width:27pt'>固定値</td>
  <td class=xl147 width=195 style='width:146pt'>&quot;completed&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl134 width=76 style='height:31.0pt;width:57pt'>intent</td>
  <td class=xl135 width=83 style='width:62pt'>　</td>
  <td class=xl135 width=73 style='width:55pt'>　</td>
  <td class=xl135 width=57 style='width:43pt'>　</td>
  <td class=xl135 width=57 style='width:43pt'>　</td>
  <td class=xl136 width=39 style='width:29pt'>1..1</td>
  <td class=xl137 width=87 style='width:65pt'>code</td>
  <td class=xl137 width=359 style='width:269pt'>投薬指示の意図。&quot;order&quot; を<ruby>固定<span
  style='display:none'><rt class=font14>コテイ </rt></span></ruby>で<ruby>設定<span
  style='display:none'><rt class=font14>セッテイ </rt></span></ruby>する。</td>
  <td class=xl138 width=36 style='width:27pt'>固定値</td>
  <td class=xl147 width=195 style='width:146pt'>&quot;order&quot;</td>
 </tr>
 <tr height=43 style='mso-height-source:userset;height:32.0pt'>
  <td height=43 class=xl101 width=76 style='height:32.0pt;width:57pt'>category[*]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl102 width=83 style='width:62pt'>　</td>
  <td class=xl102 width=73 style='width:55pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl114 width=39 style='width:29pt'>0..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl104 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl104 width=359 style='width:269pt'><ruby>薬剤<span style='display:
  none'><rt class=font14>ショホウ </rt></span></ruby><ruby>使用<span
  style='display:none'><rt class=font14>ハッコウ </rt></span></ruby><ruby>区分<span
  style='display:none'><rt class=font14>クブン </rt></span></ruby></td>
  <td class=xl104 width=36 style='width:27pt'>　</td>
  <td class=xl141 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=136 style='mso-height-source:userset;height:102.0pt'>
  <td height=136 class=xl75 width=76 style='height:102.0pt;width:57pt'>category[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=83 style='width:62pt'>system</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl85 width=39 style='width:29pt'>1..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'><span
  style='mso-spacerun:yes'> </span>JP Core Medication Oral/External Category
  ValueSetとして、MERIT9コード：http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS、またはJHSP0007コード　http://jpfhir.jp/fhir/core/CodeSystem/JHSP0007　のいずれかを使用する。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS&quot;<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
 </tr>
 <tr height=121 style='mso-height-source:userset;height:91.0pt'>
  <td height=121 class=xl75 width=76 style='height:91.0pt;width:57pt'>category[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=83 style='width:62pt'>value</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl85 width=39 style='width:29pt'>1..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl73 width=87 style='width:65pt'>string</td>
  <td class=xl73 width=359 style='width:269pt'>MERIT9コードから、OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）<br>
    JHSP0007コードから、BDP:持参薬処方　などのコード<ruby>部分<span style='display:none'><rt
  class=font14>ブブン </rt></span></ruby>（&quot;OHP&quot;など）を使用することができる。</td>
  <td class=xl78 width=36 style='width:27pt'>例示<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl148 width=195 style='width:146pt'>&quot;OHI&quot;</td>
 </tr>
 <tr height=77 style='mso-height-source:userset;height:58.0pt'>
  <td height=77 class=xl90 width=76 style='height:58.0pt;width:57pt'>category[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl91 width=83 style='width:62pt'>display<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl91 width=73 style='width:55pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl115 width=39 style='width:29pt'>0..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl93 width=87 style='width:65pt'>string</td>
  <td class=xl93 width=359 style='width:269pt'>コードに<ruby>対応<span
  style='display:none'><rt class=font14>タイオウ </rt></span></ruby>する<ruby>文字<span
  style='display:none'><rt class=font14>モジテレウ </rt></span></ruby><ruby>列<span
  style='display:none'><rt class=font14>レツ </rt></span></ruby><ruby>部分<span
  style='display:none'><rt class=font14>ブブン </rt></span></ruby>。（OHI:院内処方、OHO:院外処方、IHP:入院処方、DCG:退院時処方、ORD:定期処方、XTR:臨時処方、BDP:持参薬処方　の&quot;院内処方&quot;の<ruby>文字列<span
  style='display:none'><rt class=font14>モジレツ </rt></span></ruby>など）</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl149 width=195 style='width:146pt'>&quot;院内処方&quot;<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl101 width=76 style='height:90.0pt;border-top:none;
  width:57pt'>medicationCodeableConcept</td>
  <td class=xl102 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl102 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl102 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl102 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl103 width=39 style='border-top:none;width:29pt'>1..1<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl104 width=87 style='border-top:none;width:65pt'>CodeableConcept</td>
  <td class=xl104 width=359 style='border-top:none;width:269pt'>医薬品コードと医薬品名称。ひとつの
  必須のtext 要素と、複数の coding 要素を記述できる。本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず text
  要素に格納した上で、<font class="font11">coding</font><font class="font12">要素を繰り返すことで</font><font
  class="font11">HOT9</font><font class="font12">や</font><font class="font11">YJ</font><font
  class="font12">コードなど複数のコード体系で医薬品コードを並記することが可能。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl104 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl141 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=161 style='mso-height-source:userset;height:121.0pt'>
  <td height=161 class=xl75 width=76 style='height:121.0pt;width:57pt'>medicationCodeableConcept</td>
  <td class=xl76 width=83 style='width:62pt'>coding[*]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl77 width=39 style='width:29pt'>1..*</td>
  <td class=xl73 width=87 style='width:65pt'>Coding</td>
  <td class=xl73 width=359 style='width:269pt'>コー<ruby>ド化<span
  style='display:none'><rt>ヒッス </rt></span></ruby>した情報を 1 個以上の coding要素に記述する。<font
  class="font7">電子カルテ共有サービスで使用する場合には、YJコード、HOT9またはHOT7コード、厚生労働省一般名コードのいずれかを必須とする。</font></td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=215 style='mso-height-source:userset;height:161.0pt'>
  <td height=215 class=xl75 width=76 style='height:161.0pt;width:57pt'>medicationCodeableConcept</td>
  <td class=xl76 width=83 style='width:62pt'>coding[+]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>system</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl77 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'>医薬品コード<font class="font12">を識別する</font><font
  class="font11">URI</font><font class="font12">。</font><font class="font15">電子カルテ共有サービスで使用する場合には、YJコード、HOT9またはHOT7コード、厚生労働省一般名</font><ruby><font
  class="font15">処方</font><span style='display:none'><rt class=font14>ショホウ </rt></span></ruby><font
  class="font15">マスタコードのいずれかのsystem</font><ruby><font class="font15">値</font><span
  style='display:none'><rt class=font14>チ </rt></span></ruby><font
  class="font15">を必須とする。</font><br>
    YJ: &quot;urn:oid:1.2.392.100495.20.1.73&quot;<br>
    HOT9:<span style='mso-spacerun:yes'> 
  </span>&quot;http://medis.or.jp/CodeSystem/master-<ruby>HO<span
  style='display:none'><rt class=font14>ハンシャ </rt></span></ruby>T9&quot;<br>
    HOT<ruby>7:<span style='display:none'><rt class=font14>バアイ </rt></span></ruby><ruby><span
  style='mso-spacerun:yes'>  </span><span style='display:none'><rt
  class=font14>フメイ </rt></span></ruby>&quot;http://medis.or.jp/CodeSyst<ruby>em<span
  style='display:none'><rt class=font14>マツビ </rt></span></ruby>/master-HOT7&quot;　(HO<ruby>T<span
  style='display:none'><rt class=font14>カギル </rt></span></ruby>9の末<ruby>尾２桁<span
  style='display:none'><rt class=font14>コウロウショウ </rt></span></ruby>である販社コードが不明の場合に限る)<br>
    厚労省一般名処方マスタコード: &quot;1.2.392.100495.20.2.81&quot;</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;http://medis.or.jp/CodeSystem/master-HOT9&quot;</td>
 </tr>
 <tr height=56 style='height:42.0pt'>
  <td height=56 class=xl75 width=76 style='height:42.0pt;width:57pt'>medicationCodeableConcept</td>
  <td class=xl76 width=83 style='width:62pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>code</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl77 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>code</td>
  <td class=xl73 width=359 style='width:269pt'>医薬品コード。<ruby>上記<span
  style='display:none'><rt class=font14>ジョウキ </rt></span></ruby>のコード<ruby>表<span
  style='display:none'><rt class=font14>ヒョウ </rt></span></ruby>から<ruby>選択<span
  style='display:none'><rt class=font14>センタク </rt></span></ruby>したコード。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;103831601&quot;</td>
 </tr>
 <tr height=56 style='height:42.0pt'>
  <td height=56 class=xl118 width=76 style='height:42.0pt;border-top:none;
  width:57pt'>medicationCodeableConcept</td>
  <td class=xl119 width=83 style='border-top:none;width:62pt'>coding[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl119 width=73 style='border-top:none;width:55pt'>display</td>
  <td class=xl119 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl119 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl120 width=39 style='border-top:none;width:29pt'>1..1</td>
  <td class=xl121 width=87 style='border-top:none;width:65pt'>string</td>
  <td class=xl126 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品名称。コード<ruby>表<span
  style='display:none'><rt class=font14>ヒョウ </rt></span></ruby>におけるコードに<ruby>対応<span
  style='display:none'><rt class=font14>タイオウ </rt></span></ruby>する<ruby>表示<span
  style='display:none'><rt class=font14>ヒョウジ </rt></span></ruby><ruby>文字列<span
  style='display:none'><rt class=font14>モジレツ </rt></span></ruby>。.text<ruby>要素<span
  style='display:none'><rt class=font14>ヨウソ </rt></span></ruby>とは<ruby>異<span
  style='display:none'><rt class=font14>コトナル </rt></span></ruby>なる<ruby>文字列<span
  style='display:none'><rt class=font14>モジレツ </rt></span></ruby>となることがある。</td>
  <td class=xl122 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl150 width=195 style='border-top:none;width:146pt'>&quot;<font
  class="font12">カルボシステイン錠２５０ｍｇ</font><font class="font11">&quot;</font></td>
 </tr>
 <tr height=65 style='mso-height-source:userset;height:49.0pt'>
  <td height=65 class=xl90 width=76 style='height:49.0pt;width:57pt'>medicationCodeableConcept</td>
  <td class=xl91 width=83 style='width:62pt'>text</td>
  <td class=xl91 width=73 style='width:55pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl116 width=39 style='width:29pt'>1..1</td>
  <td class=xl93 width=87 style='width:65pt'>string</td>
  <td class=xl127 width=359 style='border-left:none;width:269pt'>医薬品名称。<font
  class="font6">処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず</font><ruby><font
  class="font6">設定</font><span style='display:none'><rt class=font14>セッテイ </rt></span></ruby><font
  class="font6">する。</font></td>
  <td class=xl88 width=36 style='width:27pt'><a name="_ftnref1">例示</a></td>
  <td class=xl149 width=195 style='width:146pt'>&quot;<font class="font12">カルボシステイン錠２５０ｍｇ</font><font
  class="font11">&quot;</font></td>
 </tr>
 <tr class=xl124 height=140 style='height:105.0pt'>
  <td height=140 class=xl108 width=76 style='height:105.0pt;border-top:none;
  width:57pt'>subject</td>
  <td class=xl109 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl109 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl113 width=39 style='border-top:none;width:29pt'>1..1</td>
  <td class=xl111 width=87 style='border-top:none;width:65pt'>Reference(JP_Patient
  )</td>
  <td class=xl111 width=359 style='border-top:none;width:269pt'><ruby>対象<span
  style='display:none'><rt>タイショウ </rt></span></ruby>となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URI（fullUrl要素に指定されるUUID）を参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）、保険個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述（次次行の例）を示す。</td>
  <td class=xl111 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl144 width=195 style='border-top:none;width:146pt'>例 1<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }&quot;</td>
 </tr>
 <tr class=xl124 height=120 style='height:90.0pt'>
  <td height=120 class=xl79 width=76 style='height:90.0pt;width:57pt'>　</td>
  <td class=xl80 width=83 style='width:62pt'>　</td>
  <td class=xl80 width=73 style='width:55pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl86 width=39 style='width:29pt'>　</td>
  <td class=xl78 width=87 style='width:65pt'>　</td>
  <td class=xl87 width=359 style='width:269pt'>電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合は、JP_Patientタイプのリソース（Patient.idの値が&quot;#patient203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのcontainedリソースのid値(Patient.id)を記述する例２となる。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl142 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#patient203987&quot;<br>
    }</td>
 </tr>
 <tr class=xl124 height=268 style='mso-height-source:userset;height:201.0pt'>
  <td height=268 class=xl105 width=76 style='height:201.0pt;width:57pt'>　</td>
  <td class=xl106 width=83 style='width:62pt'>　</td>
  <td class=xl106 width=73 style='width:55pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl117 width=39 style='width:29pt'>　</td>
  <td class=xl88 width=87 style='width:65pt'>　</td>
  <td class=xl88 width=359 style='width:269pt'>保険個人識別子(例では、保険者等番号＝12345、被保険者証等の記号＝あいう、被保険者証等の番号＝１８７、枝番＝05の患者)を記述した外部にある患者リソースを参照する場合の例。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl143 width=195 style='width:146pt'>例 ３<br>
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
  <td height=120 class=xl67 width=76 style='height:90.0pt;width:57pt'>encounter</td>
  <td class=xl68 width=83 style='width:62pt'>　</td>
  <td class=xl68 width=73 style='width:55pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl70 width=39 style='width:29pt'>0..1</td>
  <td class=xl68 width=87 style='width:65pt'>Reference (JP_Encounter )</td>
  <td class=xl68 width=359 style='width:269pt'>この傷病名情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。Bundleリソースなどで本リソースから参照可能なEncouertリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）。</td>
  <td class=xl68 width=36 style='width:27pt'>例示</td>
  <td class=xl69 width=195 style='width:146pt'>例 1 <br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }</td>
 </tr>
 <tr height=220 style='height:165.0pt'>
  <td height=220 class=xl67 width=76 style='height:165.0pt;width:57pt'>　</td>
  <td class=xl68 width=83 style='width:62pt'>　</td>
  <td class=xl68 width=73 style='width:55pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=39 style='width:29pt'>　</td>
  <td class=xl68 width=87 style='width:65pt'>　</td>
  <td class=xl68 width=359 style='width:269pt'>電子カルテシステムで入院時、外来受診時のいずれにおいて本情報が登録されたか記録さている場合にはその入院・外来区分をEncounter.class要素に設定し、そのEncounterリソースをContainedリソースとして本リソースに埋め込んで、それを参照すること。<br>
    <font class="font7">電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、JP_Encounterタイプのリソース（Encounter.idの値が&quot;#encounter203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述されることが必須であるため、そのcontainedリソースのid値(Encounter.id)を記述する例2となる。</font></td>
  <td class=xl68 width=36 style='width:27pt'>例示</td>
  <td class=xl69 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#encounter203987&quot;<br>
    }</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl67 width=76 style='height:61.0pt;width:57pt'>requester</td>
  <td class=xl68 width=83 style='width:62pt'>　</td>
  <td class=xl68 width=73 style='width:55pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl68 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=39 style='width:29pt'>0..1</td>
  <td class=xl68 width=87 style='width:65pt'>Reference(JP_Practitioner )</td>
  <td class=xl68 width=359 style='width:269pt'>処方者<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>。この<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby>した<ruby>医療者<span
  style='display:none'><rt>イリョウシャ </rt></span></ruby>の情報への参照。医療者のContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する。</td>
  <td class=xl68 width=36 style='width:27pt'>例示</td>
  <td class=xl69 width=195 style='width:146pt'>{<br>
    <span style='mso-spacerun:yes'>   </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#practitioner20394&quot;<br>
    }</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl97 width=76 style='height:31.0pt;width:57pt'>authoredOn</td>
  <td class=xl98 width=83 style='width:62pt'>　</td>
  <td class=xl98 width=73 style='width:55pt'>　</td>
  <td class=xl98 width=57 style='width:43pt'>　</td>
  <td class=xl98 width=57 style='width:43pt'>　</td>
  <td class=xl99 width=39 style='width:29pt'>1..1<ruby><font class="font5"><rt
  class=font5></rt></font></ruby></td>
  <td class=xl100 width=87 style='width:65pt'>dateTime</td>
  <td class=xl100 width=359 style='width:269pt'>処方指示が最初に作成された日時。秒の精度まで記録する。タイムゾーンも付与しなければならない。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl151 width=195 style='width:146pt'>&quot;2020-08-21T12:28:17+09:00&quot;</td>
 </tr>
 <tr height=161 style='height:121.0pt'>
  <td height=161 class=xl134 width=76 style='height:121.0pt;border-top:none;
  width:57pt'>basedOn</td>
  <td class=xl135 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl135 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl135 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl135 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl157 width=39 style='border-top:none;width:29pt'>0..1</td>
  <td class=xl137 width=87 style='border-top:none;width:65pt'>Reference(JP_ServiceRequest)</td>
  <td class=xl137 width=359 style='border-top:none;width:269pt'><ruby>元<span
  style='display:none'><rt>モト </rt></span></ruby>の<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>オーダ情報。処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照&quot;。<br>
   
  元のオーダID情報や処方依頼に関する情報（処方者の所属や診療科など）が記述されるContainedリソースに含まれるServiceRequest（処方オーダー情報）リソースをこのリソース内で参照する。</td>
  <td class=xl68 width=36 style='width:27pt'>例示</td>
  <td class=xl69 width=195 style='width:146pt'>{<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#prescriptionOrder203999&quot;<br>
    }</td>
 </tr>
 <tr height=240 style='height:180.0pt'>
  <td height=240 class=xl101 width=76 style='height:180.0pt;width:57pt'>note[*]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl102 width=83 style='width:62pt'>　</td>
  <td class=xl102 width=73 style='width:55pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl156 width=39 style='width:29pt'>0..1*<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl104 width=87 style='width:65pt'>Annotation</td>
  <td class=xl104 width=359 style='width:269pt'>薬剤単位の備考。単一の薬剤に対する調剤者に対する指示は、本要素ではなく、MedicationRequestリソースのdispenseRequest要素に対して本文書で定義した拡張「InstructionForDispense」（http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense）を使用する。\r\n患者に対する補足指示や注意や、不均等投与指示などは、
  MedicationRequestリソースのdosageInstruction.additionalInstructionで記述する。\r\n本要素は、それらでは伝えられない薬剤単位の備考や指示を記述する。このような<ruby>情報<span
  style='display:none'><rt class=font14>ジョウホウ </rt></span></ruby>が<ruby>存在<span
  style='display:none'><rt class=font14>ソンザイ </rt></span></ruby>する<ruby>場合<span
  style='display:none'><rt class=font14>バアイ </rt></span></ruby>には、<ruby>本<span
  style='display:none'><rt class=font14>ホン </rt></span></ruby><ruby>要素<span
  style='display:none'><rt class=font14>ヨウソ </rt></span></ruby>に<ruby>記述<span
  style='display:none'><rt class=font14>キジュツ </rt></span></ruby>することが<ruby>推奨<span
  style='display:none'><rt class=font14>スイショウ </rt></span></ruby>される。</td>
  <td class=xl104 width=36 style='width:27pt'>　</td>
  <td class=xl141 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl90 width=76 style='height:61.0pt;width:57pt'>note[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl91 width=83 style='width:62pt'>text</td>
  <td class=xl91 width=73 style='width:55pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl158 width=39 style='width:29pt'>1..1</td>
  <td class=xl93 width=87 style='width:65pt'>markdown</td>
  <td class=xl93 width=359 style='width:269pt'>備考の文字列。markdown記法ができる。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl149 width=195 style='width:146pt'>&quot;4月1日から4日間投与。2週間休薬後、4月19日から4日間投与。患者に書面にて説明済み。&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl97 width=76 style='height:31.0pt;border-top:none;
  width:57pt'>dosageInstruction[*]<ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl98 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl98 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl98 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl98 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl99 width=39 style='border-top:none;width:29pt'>1..*<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl100 width=87 style='border-top:none;width:65pt'>Dosage</td>
  <td class=xl100 width=359 style='border-top:none;width:269pt'>用法や投与量を含む処方指示。表「dosageInstructionTable」を参照のこと。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl100 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl151 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl134 width=76 style='height:31.0pt;border-top:none;
  width:57pt'>dispenseRequest</td>
  <td class=xl135 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl135 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl135 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl135 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl136 width=39 style='border-top:none;width:29pt'>1..1</td>
  <td class=xl137 width=87 style='border-top:none;width:65pt'>BackboneElement</td>
  <td class=xl137 width=359 style='border-top:none;width:269pt'>調剤（<ruby>薬局<span
  style='display:none'><rt>ヤッキョク </rt></span></ruby>での<ruby>払<span
  style='display:none'><rt>ハライ </rt></span></ruby>い<ruby>出<span
  style='display:none'><rt>ダシ </rt></span></ruby>し<ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>）情報</td>
  <td class=xl137 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl147 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl134 width=76 style='height:31.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl135 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl135 width=73 style='width:55pt'>　</td>
  <td class=xl135 width=57 style='width:43pt'>　</td>
  <td class=xl135 width=57 style='width:43pt'>　</td>
  <td class=xl160 width=39 style='width:29pt'>0..*</td>
  <td class=xl137 width=87 style='width:65pt'>Extension</td>
  <td class=xl137 width=359 style='width:269pt'>この薬剤に<ruby>対<span
  style='display:none'><rt class=font14>タイスル </rt></span></ruby>する調剤指示や<ruby>屯用<span
  style='display:none'><rt class=font14>トンヨウ </rt></span></ruby><ruby>回数<span
  style='display:none'><rt class=font14>カイスウ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt class=font14>シジ </rt></span></ruby>などを表す拡張。</td>
  <td class=xl137 width=36 style='width:27pt'>　</td>
  <td class=xl147 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl101 width=76 style='height:30.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl102 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl102 width=73 style='width:55pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl102 width=57 style='width:43pt'>　</td>
  <td class=xl159 width=39 style='width:29pt'>0..*</td>
  <td class=xl104 width=87 style='width:65pt'>Extension</td>
  <td class=xl104 width=359 style='width:269pt'>この薬剤に対する調剤指示を表す拡張「InstructionForDispense」。</td>
  <td class=xl104 width=36 style='width:27pt'>　</td>
  <td class=xl141 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl75 width=76 style='height:75.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>url</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'>この薬剤に対する調剤指示<ruby>を表<span
  style='display:none'><rt class=font14>シテイ </rt></span></ruby>現する拡張を<ruby>識別<span
  style='display:none'><rt class=font14>シキベツ </rt></span></ruby>する<font
  class="font11">URL</font><font class="font12">。</font></td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRe<br>
    quest_DispenseRequest_InstructionForDispense&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>valueCodeableConcept</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl73 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>テキスト<ruby>表現<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>。</td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>valueCodeableConcept</td>
  <td class=xl76 width=57 style='width:43pt'>coding</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>0..*</td>
  <td class=xl73 width=87 style='width:65pt'>Coding</td>
  <td class=xl73 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby><ruby>表現<span style='display:
  none'><rt>ヒョウゲン </rt></span></ruby>。</td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl75 width=76 style='height:60.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>valueCodeableConcept</td>
  <td class=xl76 width=57 style='width:43pt'>coding</td>
  <td class=xl76 width=57 style='width:43pt'>system</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>url</td>
  <td class=xl73 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>のコードsystem<ruby>値<span
  style='display:none'><rt>チ </rt></span></ruby>。<ruby>施設<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>固<ruby>有コ<span
  style='display:none'><rt>ヒッス </rt></span></ruby>ードを使用する場合には、&quot;http://jpfhir.jp/fhir/CodeSystem/DrugDispensePreparationMethod/医療機関10桁コード&quot;を設定する。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>http://jami.jp/CodeSystem/DrugDispensePreparationMethod</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>valueCodeableConcept</td>
  <td class=xl76 width=57 style='width:43pt'>coding</td>
  <td class=xl76 width=57 style='width:43pt'>code</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>string</td>
  <td class=xl73 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ ヒョウゲン ヒッス </rt></span></ruby>のコード。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;C&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>valueCodeableConcept</td>
  <td class=xl76 width=57 style='width:43pt'>coding</td>
  <td class=xl76 width=57 style='width:43pt'>displpay</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>string</td>
  <td class=xl73 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>のコードに<ruby>対応<span
  style='display:none'><rt>タイオウ </rt></span></ruby>する<ruby>表示<span
  style='display:none'><rt>ヒョウジ </rt></span></ruby><ruby>文字列<span
  style='display:none'><rt>モジレツ ヒョウゲン ヒッス </rt></span></ruby>。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;<ruby>粉砕<span
  style='display:none'><rt>フンサイ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl90 width=76 style='height:31.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl91 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl91 width=73 style='width:55pt'>valueCodeableConcept</td>
  <td class=xl91 width=57 style='width:43pt'>text</td>
  <td class=xl91 width=57 style='width:43pt'>text</td>
  <td class=xl92 width=39 style='width:29pt'>1..1</td>
  <td class=xl93 width=87 style='width:65pt'>string</td>
  <td class=xl93 width=359 style='width:269pt'>この薬剤に対する調剤指示のテキスト<ruby>表現<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>。コード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>するかどうかによらず<ruby>必須<span
  style='display:none'><rt>ヒッス </rt></span></ruby>。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl149 width=195 style='width:146pt'>&quot;嚥下障害のため、粉砕のこと&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>0..1*</td>
  <td class=xl73 width=87 style='width:65pt'>Extension</td>
  <td class=xl73 width=359 style='width:269pt'>頓用回数を表現する拡張「<font class="font11">ExpectedRepeatCount</font><font
  class="font12">」。</font></td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl75 width=76 style='height:45.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl76 width=73 style='width:55pt'>url</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'>頓用回数を表現する拡張を<ruby>識別<span
  style='display:none'><rt class=font14>シテイ </rt></span></ruby>する<font
  class="font11">URL</font><font class="font12">。</font></td>
  <td class=xl78 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl148 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/StructureDefinition/ExpectedRepeatCount&quot;</td>
 </tr>
 <tr height=39 style='height:29.0pt'>
  <td height=39 class=xl161 width=76 style='height:29.0pt;border-top:none;
  width:57pt'>dispenseRequest</td>
  <td class=xl162 width=83 style='border-top:none;width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl162 width=73 style='border-top:none;width:55pt'>valueInteger</td>
  <td class=xl162 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl162 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl163 width=39 style='border-top:none;width:29pt'>1..1</td>
  <td class=xl164 width=87 style='border-top:none;width:65pt'>integer</td>
  <td class=xl164 width=359 style='border-top:none;width:269pt'>頓用回数。値は例示。</td>
  <td class=xl165 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl166 width=195 style='border-top:none;width:146pt'>5</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl75 width=76 style='height:45.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>quantity</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>0..1</td>
  <td class=xl73 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl73 width=359 style='width:269pt'>調剤量。<ruby>内服<span
  style='display:none'><rt>ナイフク </rt></span></ruby>の<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>の<ruby>調剤<span
  style='display:none'><rt>チョウザイ </rt></span></ruby><ruby>払<span
  style='display:none'><rt>ハライダシ </rt></span></ruby>い出しの<ruby>全量<span
  style='display:none'><rt>ゼンリョウ </rt></span></ruby>（<ruby>患者<span
  style='display:none'><rt>カンジャ </rt></span></ruby>がこの<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>により<ruby>受<span
  style='display:none'><rt>ウケトル </rt></span></ruby>け取る<ruby>全量<span
  style='display:none'><rt>ゼンリョウ </rt></span></ruby>に<ruby>相当<span
  style='display:none'><rt>ソウトウ </rt></span></ruby>する）。<ruby>外用<span
  style='display:none'><rt>ガイヨウ </rt></span></ruby>の<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>で<ruby>全量<span
  style='display:none'><rt>ゼンリョウ </rt></span></ruby><ruby>指定<span
  style='display:none'><rt>シテイ </rt></span></ruby>する<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>にもこの<ruby>要素<span
  style='display:none'><rt>ヨウソ </rt></span></ruby>に<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。</td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>quantity</td>
  <td class=xl76 width=73 style='width:55pt'>value</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>decimal</td>
  <td class=xl73 width=359 style='width:269pt'>調剤量。値は例示。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>21</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>quantity</td>
  <td class=xl76 width=73 style='width:55pt'>unit</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>string</td>
  <td class=xl73 width=359 style='width:269pt'>単位文字列。値は例示。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;<font class="font12">錠</font><font
  class="font11">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>quantity</td>
  <td class=xl76 width=73 style='width:55pt'>system</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'>医薬品単位略号を識別する<font class="font11">URL</font><font
  class="font12">。固定値。</font></td>
  <td class=xl78 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl148 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>quantity</td>
  <td class=xl76 width=73 style='width:55pt'>code</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>code</td>
  <td class=xl73 width=359 style='width:269pt'>医薬品単位略号。値は例示。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>0..1</td>
  <td class=xl73 width=87 style='width:65pt'>Duration</td>
  <td class=xl73 width=359 style='width:269pt'>調剤日数</td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl76 width=73 style='width:55pt'>value</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>decimal</td>
  <td class=xl73 width=359 style='width:269pt'>調剤日数。値は例示。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>7</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl76 width=73 style='width:55pt'>unit</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>string</td>
  <td class=xl73 width=359 style='width:269pt'>調剤日数の単位。「日」<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl152 width=195 style='width:146pt'><font class="font9">&quot;</font><font
  class="font12">日</font><font class="font11">&quot;</font></td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl75 width=76 style='height:28.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl76 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl76 width=73 style='width:55pt'>system</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'>UCUM<font class="font12">単位コードを識別する</font><font
  class="font11">URI</font><font class="font12">。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl148 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=39 style='height:29.0pt'>
  <td height=39 class=xl90 width=76 style='height:29.0pt;width:57pt'>dispenseRequest</td>
  <td class=xl91 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl91 width=73 style='width:55pt'>code</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl92 width=39 style='width:29pt'>1..1</td>
  <td class=xl93 width=87 style='width:65pt'>code</td>
  <td class=xl93 width=359 style='width:269pt'>「日」を表す<font class="font11">UCUM</font><font
  class="font12">単位コード。</font><ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl88 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl149 width=195 style='width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>substitution</td>
  <td class=xl76 width=83 style='width:62pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=39 style='width:29pt'>0..1</td>
  <td class=xl73 width=87 style='width:65pt'>BackboneElement</td>
  <td class=xl73 width=359 style='width:269pt'>後発医薬品への変更可否情報。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>substitution</td>
  <td class=xl76 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl73 width=359 style='width:269pt'>　</td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>substitution</td>
  <td class=xl76 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl76 width=73 style='width:55pt'>coding[*]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl76 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=39 style='width:29pt'>1..1*</td>
  <td class=xl73 width=87 style='width:65pt'>Coding</td>
  <td class=xl73 width=359 style='width:269pt'>後発品変更不可コード。</td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl148 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=76 style='height:30.0pt;width:57pt'>substitution</td>
  <td class=xl76 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl76 width=73 style='width:55pt'>coding[+]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl76 width=57 style='width:43pt'>system</td>
  <td class=xl76 width=57 style='width:43pt'>system</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl73 width=359 style='width:269pt'>後発品変更不可コードを識別する<font
  class="font11">URI。</font><ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl148 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.41&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl75 width=76 style='height:60.0pt;width:57pt'>substitution</td>
  <td class=xl76 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl76 width=73 style='width:55pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl76 width=57 style='width:43pt'>code</td>
  <td class=xl76 width=57 style='width:43pt'>code</td>
  <td class=xl74 width=39 style='width:29pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>code</td>
  <td class=xl73 width=359 style='width:269pt'>後発品変更不可コード。<br>
    1 : 後発品変更不可<br>
    2 : 剤形変更不可<br>
    3 : 含量規格変更不可</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl148 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=39 style='height:29.0pt'>
  <td height=39 class=xl90 width=76 style='height:29.0pt;width:57pt'>substitution</td>
  <td class=xl91 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl91 width=73 style='width:55pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl91 width=57 style='width:43pt'>display</td>
  <td class=xl91 width=57 style='width:43pt'>display</td>
  <td class=xl92 width=39 style='width:29pt'>0..1</td>
  <td class=xl93 width=87 style='width:65pt'>string</td>
  <td class=xl93 width=359 style='width:269pt'>値は例示。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl149 width=195 style='width:146pt'>&quot;<font class="font12">変更不可</font><font
  class="font11">&quot;</font></td>
 </tr>

</table>

</div>

<button type="button" onclick="details_open(false,'MedicationRequestDetails','mrc')">閉じる</button>
</details>

<!-- =========================================== -->
<!-- ====                                   ==== -->
<!-- ====      表（DosageInstruction)　　　　 ==== -->
<!-- ====                                   ==== -->
<!-- =========================================== -->
<br>

<h3>表「MedicationRequest.DosageInstruction」</h3>
<button id="dic" type="button" onclick="details_open(true,'DosageInstructionDetails', 'dic')">表「MedicationRequest.DosageInstruction」を開く</button>
<details id="DosageInstructionDetails">
<button type="button" onclick="details_open(false,'DosageInstructionDetails', 'dic')">閉じる</button>
<summary></summary>

<div id="dosageInstructionTable">

<div id="dosageInstructionTable_836" class="DosageInstruction" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1067 style='border-collapse:
 collapse;table-layout:fixed;width:800pt'>
 <col class=xl119 width=105 style='mso-width-source:userset;mso-width-alt:2889;
 width:79pt'>
 <col class=xl119 width=92 style='mso-width-source:userset;mso-width-alt:2523;
 width:69pt'>
 <col class=xl119 width=73 span=2 style='mso-width-source:userset;mso-width-alt:
 2011;width:55pt'>
 <col width=47 style='mso-width-source:userset;mso-width-alt:1280;width:35pt'>
 <col width=87 style='mso-width-source:userset;mso-width-alt:2377;width:65pt'>
 <col width=359 style='mso-width-source:userset;mso-width-alt:9837;width:269pt'>
 <col width=36 style='mso-width-source:userset;mso-width-alt:987;width:27pt'>
 <col class=xl74 width=195 style='mso-width-source:userset;mso-width-alt:5339;
 width:146pt'>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl121 width=105 style='height:75.0pt;width:79pt'>要素<font
  class="font9">Lv1</font></td>
  <td class=xl122 width=92 style='border-left:none;width:69pt'>要素<font
  class="font9">Lv2</font></td>
  <td class=xl122 width=73 style='border-left:none;width:55pt'>要素<font
  class="font9">Lv3</font></td>
  <td class=xl122 width=73 style='border-left:none;width:55pt'>要素<font
  class="font9">Lv4</font></td>
  <td class=xl123 width=47 style='border-left:none;width:35pt'>多重度</td>
  <td class=xl123 width=87 style='border-left:none;width:65pt'>型</td>
  <td class=xl123 width=359 style='border-left:none;width:269pt'>説明<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></td>
  <td class=xl123 width=36 style='border-left:none;width:27pt'>固定値 <br>
    ／ 例 示</td>
  <td class=xl124 width=195 style='border-left:none;width:146pt'>値</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl113 width=105 style='height:31.0pt;width:79pt'>extension[*]</td>
  <td class=xl114 width=92 style='border-left:none;width:69pt'>　</td>
  <td class=xl114 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl114 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl73 width=47 style='border-left:none;width:35pt'>1..*</td>
  <td class=xl93 width=87 style='border-left:none;width:65pt'>　</td>
  <td class=xl68 width=359 style='border-left:none;width:269pt'>投与開始日や<ruby>実<span
  style='display:none'><rt>ジツ </rt></span></ruby><ruby>投与<span
  style='display:none'><rt>トウヨ </rt></span></ruby><ruby>日数<span
  style='display:none'><rt>ニッスウ </rt></span></ruby>を明示するために使用する拡張を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>。</td>
  <td class=xl70 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl76 width=195 style='border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl105 width=105 style='height:76.0pt;width:79pt'>extension[+]</td>
  <td class=xl110 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl110 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl110 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl87 width=47 style='border-top:none;border-left:none;width:35pt'>1..1*</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>Extension</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'><font
  class="font13">投与開始日を明示するために使用する拡張「PeriodOfUse</font><font class="font8">」。投与開始日を明示しない処方の場合には、処方箋発行日を投与開始日として設定する。</font><font
  class="font10">電子カルテ情報共有サービスにおいては、本要素を必須とする。</font></td>
  <td class=xl120 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl105 width=105 style='height:60.0pt;width:79pt'>extension[=]</td>
  <td class=xl106 width=92 style='border-top:none;border-left:none;width:69pt'>url</td>
  <td class=xl106 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl83 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl82 width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl84 width=359 style='border-top:none;border-left:none;width:269pt'>投与開始日を明示するために使用する拡張を識別するURL。</td>
  <td class=xl85 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_PeriodOfUse&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>valuePeriod</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl73 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Period</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与期間を表す</td>
  <td class=xl70 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl109 width=105 style='height:21.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl110 width=92 style='border-top:none;border-left:none;width:69pt'>valuePeriod</td>
  <td class=xl110 width=73 style='border-top:none;border-left:none;width:55pt'>start</td>
  <td class=xl110 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl99 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl98 width=87 style='border-top:none;border-left:none;width:65pt'>dateTime</td>
  <td class=xl100 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>投与<span
  style='display:none'><rt>トウヨ </rt></span></ruby>期間（または<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>）の開始日</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;2020-08-21&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl111 width=105 style='height:60.0pt;border-top:none;
  width:79pt'>extension[+]</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>0..1*</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>Extension</td>
  <td class=xl84 width=359 style='border-top:none;border-left:none;width:269pt'>隔日投与など、投与開始日から終了日までの日数と実投与日数が異なる場合に、実投与日数を明示したい場合に使用する拡張
  「UsageDuration」。詳細は処方情報HL７FHIR記述仕様も参照すること。</td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl107 width=105 style='height:60.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>url</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>実投与日数を明示したい場合に使用する拡張を識別するためのURL。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>valueDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Duration</td>
  <td class=xl101 width=359 style='border-top:none;border-left:none;width:269pt'><font
  class="font11">投与期間とは別に投与実日数を表現したい場合にこの拡張を使用し、</font><font class="font7">Duration
  </font><font class="font11">型で開始日を記載する。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl113 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl114 width=92 style='border-top:none;border-left:none;width:69pt'>valueDuration</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>value</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl127 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>decimal</td>
  <td class=xl96 width=359 style='border-top:none;border-left:none;width:269pt'>実投与日数。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>7</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>valueDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>unit</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>単位「日」。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">日</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>valueDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>単位コード
  UCUMを識別するURI。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl115 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>extension[=]</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>valueDuration</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl128 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>単位コードUCUMにおける実投与日数の単位を表すコード。</td>
  <td class=xl75 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl117 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>text</td>
  <td class=xl118 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl118 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl118 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl103 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl103 width=359 style='border-top:none;border-left:none;width:269pt'>dosageInstruction<font
  class="font13">が表す処方指示の文字列表現。</font></td>
  <td class=xl90 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl81 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服・経口・１日３回朝昼夕食後　１回１錠　７日分</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=280 style='height:210.0pt'>
  <td height=280 class=xl111 width=105 style='height:210.0pt;border-top:none;
  width:79pt'>additionalInstruction[*]</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>0..*</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl84 width=359 style='border-top:none;border-left:none;width:269pt'><font
  class="font13">補足的な処方または</font><ruby><font class="font13">投与</font><span
  style='display:none'><rt>トウヨ </rt></span></ruby><font class="font13">指示。不均等投与を1日用法として記載する場合に、補足用法コードを記録するために使用する。不均等な投与指示の場合には、additionalInstruction要素に、1
  日の投与回数分だけ繰り返し、JAMI補足用法コードを使用し記述する。また、隔日投与、曜日指定投与の場合にも、JAMI補足補足用法コードを使用して記述する。</font>
  本要素は繰り返し記述が可能であり、どのように薬剤を内服するかについての患者への補足指示（たとえば、「食事と一緒に」や「30分から1時間前に内服」）や薬剤についての注意書き（たとえば、「眠くなることがある」や「日光や紫外線が皮膚にあたららないようにすること」）なども記述するのに使用できる。<font
  class="font13"><br>
    </font>詳細は処方情報HL７FHIR記述仕様も参照。</td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl107 width=105 style='height:26.0pt;border-top:none;
  width:79pt'>additionalInstruction[+]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl107 width=105 style='height:75.0pt;border-top:none;
  width:79pt'>additionalInstruction[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[+]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font11">補足用法８桁コードを識別する</font>URI<font class="font11">（</font><ruby><font
  class="font11">固定値</font><span style='display:none'><rt>コテイチ </rt></span></ruby><ruby><font
  class="font11">参照</font><span style='display:none'><rt>サンショウ </rt></span></ruby><font
  class="font11">）。やむを得ず施設固有コードを使用する場合には、</font>&quot;http://jpfhir.jp/fhir/CodeSystem/MedicationUsageAdditional/<font
  class="font11">医療機関</font>10<font class="font11">桁コード</font>&quot;<font
  class="font11">を設定する。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl132 width=195 style='border-top:none;border-left:none;width:146pt'><a
  href="http://jami.jp/CodeSystem/MedicationUsageAdditional">http://jami.jp/CodeSystem/MedicationUsageAdditional</a></td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl107 width=105 style='height:26.0pt;border-top:none;
  width:79pt'>additionalInstruction[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font8">補足用法コード指定する。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;V14NNNNN&quot;</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl107 width=105 style='height:26.0pt;border-top:none;
  width:79pt'>additionalInstruction[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>display</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>コードの表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">不均等・１回目・４錠</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl115 width=105 style='height:76.0pt;border-top:none;
  width:79pt'>additionalInstruction[=]</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>text</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl128 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>補足的な処方または投与指示の表現文字列。<ruby>不均等<span
  style='display:none'><rt>フキントウ </rt></span></ruby>な<ruby>投与<span
  style='display:none'><rt>トウヨ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>の<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>には、additionalInstruction要素に、1
  日の投与回数分だけ繰り返し、JAMI補<ruby>足用<span style='display:none'><rt>シヨウ </rt></span></ruby>法コードを使用し<ruby>記<span
  style='display:none'><rt>カ </rt></span></ruby>述する仕様であるが、コード<ruby>化<span
  style='display:none'><rt>ツネ </rt></span></ruby>できるかどうかにかかわらず常にテキストでも記述する。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl91 width=195 style='border-top:none;border-left:none;width:146pt'>１日３回　毎食後　７錠（４錠－２錠－１錠）</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl111 width=105 style='height:90.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>Timing</td>
  <td class=xl97 width=359 style='border-top:none;border-left:none;width:269pt'>投与タイミングや投与<ruby>期間<span
  style='display:none'><rt>キカン </rt></span></ruby>と<ruby>期間中<span
  style='display:none'><rt>キカンチュウ </rt></span></ruby>の投与<ruby>用法<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby>を記録する。<br>
    <ruby>投与<span style='display:none'><rt>トウヨ </rt></span></ruby>期間と期間中の投与用法を指定する場合には通常、code子要素とrepeant子要素とで記述する。投与タイミングを直接具体的な日時で指定する場合には、event子要素を使用することができる。</td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>event[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>0..*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>dateTime</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与タイミングを具体的な日時で指定する場合に使用する。詳細は処方情報HL７FHIR記述仕様も参照。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;2020-08-21&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl107 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>repeat</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Element</td>
  <td class=xl130 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>投与期<span
  style='display:none'><rt>キカンチュウ </rt></span></ruby>間<ruby>と<span
  style='display:none'><rt>クリカエシ </rt></span></ruby>期間中<ruby>の投<span
  style='display:none'><rt>ホウホウ </rt></span></ruby>与の繰<ruby>り返<span
  style='display:none'><rt>ヨウソ </rt></span></ruby>し方法を記述する要素。このrepeat<ruby>子要素<span
  style='display:none'><rt>コヨウソ </rt></span></ruby>で<ruby>投与<span
  style='display:none'><rt>トウヨ </rt></span></ruby><ruby>期間<span
  style='display:none'><rt>キカン </rt></span></ruby>の<ruby>全日数<span
  style='display:none'><rt>ゼンニッスウ </rt></span></ruby>、code<ruby>子要素<span
  style='display:none'><rt>コヨウソ </rt></span></ruby>でこの<ruby>期間中<span
  style='display:none'><rt>キカンチュウ </rt></span></ruby>の<ruby>投与<span
  style='display:none'><rt>トウヨ </rt></span></ruby><ruby>方法<span
  style='display:none'><rt>ホウホウ </rt></span></ruby>を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=140 style='height:105.0pt'>
  <td height=140 class=xl113 width=105 style='height:105.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl114 width=92 style='border-top:none;border-left:none;width:69pt'>repeat</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>boundsDuration</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl127 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>Duration</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投薬期間（投与開始日から投与終了日まで）の全日数。実投与（投与）日数ではないことに注意する。すなわち、<ruby>実際<span
  style='display:none'><rt>ジッサイ </rt></span></ruby>に投与しない<ruby>日<span
  style='display:none'><rt>ヒ </rt></span></ruby>も１日と<ruby>数<span
  style='display:none'><rt>カゾエル </rt></span></ruby>える。詳細は処方情報HL７FHIR記述仕様も参照。なお、この<ruby>実投与<span
  style='display:none'><rt>ジツトウヨ </rt></span></ruby>（投与）<ruby>日数<span
  style='display:none'><rt>ニッスウ </rt></span></ruby>を<ruby>別<span
  style='display:none'><rt>ベツ </rt></span></ruby>に<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>したい<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>には、実投与日数を明示したい場合に使用する拡張を<ruby>使用<span
  style='display:none'><rt>シヨウ </rt></span></ruby>して<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>すること。</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>repeat</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>boundsDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>value</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>decimal</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投<ruby>薬<span
  style='display:none'><rt>キカｎ </rt></span></ruby>期<ruby>間<span
  style='display:none'><rt>ゼｎ </rt></span></ruby>（投与開始日から投与終了日まで）の全日数。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>7</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>repeat</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>boundsDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>unit</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投薬期間（投与開始日から投与終了日まで）の全日数の単位文字列。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">日</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl107 width=105 style='height:26.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>repeat</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>boundsDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>単位コード<font
  class="font7">UCUM</font><font class="font8">のコード体系を識別する</font><font
  class="font7">URI</font><font class="font8">。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl107 width=105 style='height:26.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>repeat</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>boundsDuration</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>日を意味する単位コード「<font
  class="font7">d</font><font class="font8">」。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl113 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl114 width=92 style='border-top:none;border-left:none;width:69pt'>code</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl127 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl96 width=359 style='border-top:none;border-left:none;width:269pt'>用法。できるかぎりコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>をすることを<ruby>推奨<span
  style='display:none'><rt>スイショウ カ スイショウ </rt></span></ruby>する。コード化の有無にかかわらず、用法の完全な文字列をtext<ruby>子要素<span
  style='display:none'><rt>コヨウソ </rt></span></ruby>に設定する。</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl107 width=105 style='height:75.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>0..1*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font11">標準用法コードによりコード化することを推奨する。詳細は処方情報</font>HL<font class="font11">７</font>FHIR<font
  class="font11">記述仕様も参照すること。施設固有のコード化による</font><ruby><font class="font11">記述</font><span
  style='display:none'><rt>キジュツ </rt></span></ruby><font class="font11">も</font><ruby><font
  class="font11">可能</font><span style='display:none'><rt>カノウ </rt></span></ruby><font
  class="font11">であるが、できるかぎり、JAMI標準用法コードと併用することが</font><ruby><font
  class="font11">望</font><span style='display:none'><rt>ノゾマシイ </rt></span></ruby><font
  class="font11">ましい。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl107 width=105 style='height:75.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[+]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font8">標準用法の</font><ruby><font class="font8">場合</font><span
  style='display:none'><rt>バアイ </rt></span></ruby><font class="font8">にはJAMI標準用法</font>16<font
  class="font8">桁コードを識別する</font>URI<font class="font11">（</font><ruby><font
  class="font11">固定値</font><span style='display:none'><rt>コテイチ </rt></span></ruby><ruby><font
  class="font11">参照</font><span style='display:none'><rt>サンショウ </rt></span></ruby><font
  class="font11">）。やむを</font><ruby><font class="font11">得</font><span
  style='display:none'><rt>エズ </rt></span></ruby><font class="font11">ず</font><ruby><font
  class="font14">施設</font><span style='display:none'><rt>シセツ </rt></span></ruby><ruby><font
  class="font14">固有</font><span style='display:none'><rt>コユウ </rt></span></ruby><font
  class="font14">コードを</font><ruby><font class="font14">使用</font><span
  style='display:none'><rt>シヨウ </rt></span></ruby><font class="font14">する</font><ruby><font
  class="font14">場合</font><span style='display:none'><rt>バアイ </rt></span></ruby><font
  class="font14">には、&quot;http://jpfhir.jp/fhir/Co</font><ruby><font
  class="font14">de</font><span style='display:none'><rt>キカン </rt></span></ruby><font
  class="font14">System/Me</font><ruby><font class="font14">di</font><span
  style='display:none'><rt>セッテイ </rt></span></ruby><font class="font14">cationUsage/医療機関10桁コード&quot;を設定する。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jami.jp/CodeSystem/MedicationUsage&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>用<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby>法コード</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1013044400000000&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>display</td>
  <td class=xl126 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>用法コードに<ruby>対応<span
  style='display:none'><rt>タイオウ </rt></span></ruby>する表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服・経口・１日３回朝昼夕食後</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl115 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>timing</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>code</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>text</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl128 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl129 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>用<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby>法のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>の<ruby>有無<span
  style='display:none'><rt>ウム </rt></span></ruby>にかかわらず、<ruby>用法<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby>の<ruby>完全<span
  style='display:none'><rt>カンゼン </rt></span></ruby>な<ruby>文字列<span
  style='display:none'><rt>モジレツ </rt></span></ruby>を<ruby>設定<span
  style='display:none'><rt>セッテイ </rt></span></ruby>する。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服・経口・１日３回朝昼夕食後</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl117 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>asNeededBoolean</td>
  <td class=xl118 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl118 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl118 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl131 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl103 width=87 style='border-top:none;border-left:none;width:65pt'>boolean</td>
  <td class=xl80 width=359 style='border-top:none;border-left:none;width:269pt'><font
  class="font13">頓用型の用法を指定する場合に&quot;true&quot;を指定する</font><font class="font8">。詳細は処方情報HL７FHIR記述仕様も参照。</font></td>
  <td class=xl92 style='border-left:none'>　</td>
  <td class=xl81 width=195 style='border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl111 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>site</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl84 width=359 style='border-top:none;border-left:none;width:269pt'><font
  class="font13">外用薬で部位を指定する場合に使用する。</font><font class="font8">詳細は処方情報HL７FHIR記述仕様も参照。</font></td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>site</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>外用<span
  style='display:none'><rt>ガイヨウ </rt></span></ruby><ruby>部位<span
  style='display:none'><rt>ブイ </rt></span></ruby>をコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>するか、text<ruby>子要素<span
  style='display:none'><rt>コヨウソ </rt></span></ruby>で<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>site</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[+]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI外用部位３桁コードを識別するURI。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jami.jp/CodeSystem/MedicationBodySiteExternal&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>site</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font8">部位コード。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;950&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>site</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>display</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font8">部位コードの表示名。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">膝</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl115 width=105 style='height:21.0pt;border-top:none;
  width:79pt'>site</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>text</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl77 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>部位のテキスト表現。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">膝</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl111 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>route</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl97 width=359 style='border-top:none;border-left:none;width:269pt'>投与経路</td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>route</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl101 width=359 style='border-top:none;border-left:none;width:269pt'><ruby><font
  class="font11">投与</font><span style='display:none'><rt>ガイヨウ </rt></span></ruby><ruby><font
  class="font11">経路</font><span style='display:none'><rt>ブイ </rt></span></ruby><font
  class="font11">をコード</font><ruby><font class="font11">化</font><span
  style='display:none'><rt>カ </rt></span></ruby><font class="font11">するか、</font><font
  class="font7">text</font><ruby><font class="font11">子要素</font><span
  style='display:none'><rt>コヨウソ </rt></span></ruby><font class="font11">で</font><ruby><font
  class="font11">記述</font><span style='display:none'><rt>キジュツ </rt></span></ruby><font
  class="font11">する。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl107 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>route</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[+]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与経路コード表のsystemを設定する。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>route</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与経路コード表で規定するコード。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;PO&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>route</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>display</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与経路コード表で規定するコードの表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">口</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl115 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>route</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>text</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl77 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>投与経路の文字列表現。コードで指定できない場合、本要素で文字列として指定してもよい。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">経口</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl111 width=105 style='height:60.0pt;border-top:none;
  width:79pt'>method</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl97 width=359 style='border-top:none;border-left:none;width:269pt'>投与方法の<ruby>基本<span
  style='display:none'><rt>キホン </rt></span></ruby><ruby>用法<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby><ruby>区分<span
  style='display:none'><rt>クブン </rt></span></ruby>（1 : <ruby>内服<span
  style='display:none'><rt>ナイフク </rt></span></ruby>、2 : <ruby>外用<span
  style='display:none'><rt>ガイヨウ </rt></span></ruby>、3 : <ruby>注射<span
  style='display:none'><rt>チュウシャ </rt></span></ruby>、4 : <ruby>注入<span
  style='display:none'><rt>チュウニュウ </rt></span></ruby>の<ruby>区分<span
  style='display:none'><rt>クブン </rt></span></ruby>）、またはさらに1段階<ruby>詳<span
  style='display:none'><rt>クワシイ </rt></span></ruby>しい<ruby>用法<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby><ruby>区分<span
  style='display:none'><rt>クブン </rt></span></ruby>（10：<ruby>経口<span
  style='display:none'><rt>ケイコウ </rt></span></ruby>、11：<ruby>舌下<span
  style='display:none'><rt>ゼッカ </rt></span></ruby>、…など）を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。</td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>method</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl101 width=359 style='border-top:none;border-left:none;width:269pt'><ruby><font
  class="font11">投与</font><span style='display:none'><rt>ガイヨウ </rt></span></ruby><ruby><font
  class="font11">方法</font><span style='display:none'><rt>ホウホウ </rt></span></ruby><ruby><font
  class="font11">区分</font><span style='display:none'><rt>クブン </rt></span></ruby><font
  class="font11">をコード</font><ruby><font class="font11">化</font><span
  style='display:none'><rt>カ </rt></span></ruby><font class="font11">するか、</font><font
  class="font7">text</font><ruby><font class="font11">子要素</font><span
  style='display:none'><rt>コヨウソ </rt></span></ruby><font class="font11">で</font><ruby><font
  class="font11">記述</font><span style='display:none'><rt>キジュツ </rt></span></ruby><font
  class="font11">する。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl107 width=105 style='height:75.0pt;border-top:none;
  width:79pt'>method</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[+]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与方法の<ruby>区分<span
  style='display:none'><rt>クブン </rt></span></ruby>に対応する<font class="font7">JAMI</font>用法コード表基本用法１桁コードを識別する<font
  class="font7">URI</font><font class="font11">（</font><ruby><font
  class="font11">固定</font><span style='display:none'><rt>コテイ </rt></span></ruby><ruby><font
  class="font11">値</font><span style='display:none'><rt>チ </rt></span></ruby><ruby><font
  class="font11">参照</font><span style='display:none'><rt>サンショウ </rt></span></ruby><font
  class="font11">）</font>。同<font class="font7">2</font>桁コード（<font class="font7">&quot;http://jami.jp/CodeSystem/MedicationMethodDetailUsage&quot;</font>）を使用してもよい。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jami.jp/CodeSystem/MedicationMethodBasicUsage&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl107 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>method</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font8">用法コード表基本用法１桁コード。同</font><font class="font7">2</font><font
  class="font8">桁コード（</font><font class="font7">&quot;urn:oid:1.2.392.200250.2.2.20.40&quot;</font><font
  class="font8">）を使用してもよい。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl107 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>method</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>display</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI<font
  class="font8">用法コード表基本用法１桁コードの表示名または同</font><font class="font7">2</font><font
  class="font8">桁コード（</font><font class="font7">&quot;urn:oid:1.2.392.200250.2.2.20.40&quot;</font><font
  class="font8">）を使用する。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl115 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>method</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>text</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl77 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>投与方法のテキスト表現。コードで指定できない場合、本要素で文字列として指定してもよい。</td>
  <td class=xl88 width=36 style='width:27pt'>例示</td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=220 style='height:165.0pt'>
  <td height=220 class=xl111 width=105 style='height:165.0pt;border-top:none;
  width:79pt'>doseAndRate[*]</td>
  <td class=xl112 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl112 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl125 width=47 style='border-top:none;border-left:none;width:35pt'>0..*</td>
  <td class=xl102 width=87 style='border-top:none;border-left:none;width:65pt'>Element</td>
  <td class=xl84 width=359 style='border-top:none;border-left:none;width:269pt'><font
  class="font13">投与量を記録する。</font><ruby><br>
    内<span style='display:none'><rt>ナイフク </rt></span></ruby>服１<ruby>回<span
  style='display:none'><rt>リョウ </rt></span></ruby>量<ruby>、外<span
  style='display:none'><rt>ガイヨウ </rt></span></ruby>用１回量は、doseAndRate.doseQuantit<ruby>yに<span
  style='display:none'><rt>キジュツ </rt></span></ruby>記述す<ruby>る。<span
  style='display:none'><rt>ナイフク </rt></span></ruby>処方<ruby>期<span
  style='display:none'><rt>リョウ </rt></span></ruby>間<ruby>の中<span
  style='display:none'><rt>シテイ </rt></span></ruby>で 1<ruby> 日<span
  style='display:none'><rt>バアイ </rt></span></ruby>量が常に<ruby>一定<span
  style='display:none'><rt>ガイヨウ </rt></span></ruby>とな<ruby>る<span
  style='display:none'><rt>リョウ </rt></span></ruby>場<ruby>合<span
  style='display:none'><rt>シテイ </rt></span></ruby><ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>は、<ruby>内服<span
  style='display:none'><rt>バアイ </rt></span></ruby>１日量、外用１日量は<ruby>、<span
  style='display:none'><rt>シテイ </rt></span></ruby>dos<ruby>eA<span
  style='display:none'><rt>ガイヨウ </rt></span></ruby>ndRate.rateRatioの分子で指定する。<br>
    外用の全量指定（２本など）の場合は、調剤量として、MedicationRequestリソースのdispenseRequest.quantity
  要素に、SimpleQuantity 型で記録するので、その1回<ruby>量<span style='display:none'><rt>リョウ </rt></span></ruby>を<ruby>併<span
  style='display:none'><rt>アワセテ </rt></span></ruby>せて<ruby>指定<span
  style='display:none'><rt>シテイ </rt></span></ruby>するのでなければこの<ruby>要素<span
  style='display:none'><rt>ヨウソ </rt></span></ruby>は<ruby>出現<span
  style='display:none'><rt>シュツゲン </rt></span></ruby>しない。</td>
  <td class=xl89 style='border-top:none;border-left:none'>　</td>
  <td class=xl86 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl113 width=105 style='height:60.0pt;border-top:none;
  width:79pt'>doseAndRate[+]</td>
  <td class=xl114 width=92 style='border-top:none;border-left:none;width:69pt'>type</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl127 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl96 width=359 style='border-top:none;border-left:none;width:269pt'>力価区分。<font
  class="font8">用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。本要素は、安全性のため、</font><ruby><font
  class="font8">外用薬</font><span style='display:none'><rt>ガイヨウヤク </rt></span></ruby><font
  class="font8">の</font><ruby><font class="font8">全量</font><span
  style='display:none'><rt>ゼンリョウ </rt></span></ruby><ruby><font class="font8">処方</font><span
  style='display:none'><rt>ショホウ </rt></span></ruby><ruby><font class="font8">指示</font><span
  style='display:none'><rt>シジ </rt></span></ruby><font class="font8">を</font><ruby><font
  class="font8">除</font><span style='display:none'><rt>ノゾキ </rt></span></ruby><font
  class="font8">き省略せずに必須とする。</font></td>
  <td class=xl94 style='border-top:none;border-left:none'>　</td>
  <td class=xl95 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>type</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[*]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1*</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>type</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[+]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>力価区分コードのコード体系を識別するURI。</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.22&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>type</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>力価区分コード。（1：製剤量　2：原薬量）</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>type</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>coding[=]</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>display</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>力価区分コードの表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">製剤量</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl113 width=105 style='height:90.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl114 width=92 style='border-top:none;border-left:none;width:69pt'>doseQuantity</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl127 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>SimpleQuantity</td>
  <td class=xl93 width=359 style='border-top:none;border-left:none;width:269pt'>1<font
  class="font13">回投与量。 1</font><font class="font8">回投与量の記録を基本とし、doseQuantity 要素
  に SimpleQuantity
  型で記述する。単位コードには、医薬品単位略号（urn:oid:1.2.392.100495.20.2.101）を使用する。</font><ruby><font
  class="font8">内服</font><span style='display:none'><rt>ナイフク </rt></span></ruby><font
  class="font8">、</font><ruby><font class="font8">外用</font><span
  style='display:none'><rt>ガイヨウ </rt></span></ruby><font class="font8">ともに１回</font><ruby><font
  class="font8">投与</font><span style='display:none'><rt>トウヨ </rt></span></ruby><ruby><font
  class="font8">量</font><span style='display:none'><rt>リョウ </rt></span></ruby><font
  class="font8">を</font><ruby><font class="font8">指定</font><span
  style='display:none'><rt>シテイ </rt></span></ruby><font class="font8">する</font><ruby><font
  class="font8">場合</font><span style='display:none'><rt>バアイ </rt></span></ruby><font
  class="font8">にはこの</font><ruby><font class="font8">要素</font><span
  style='display:none'><rt>ヨウソ </rt></span></ruby><font class="font8">を</font><ruby><font
  class="font8">使用</font><span style='display:none'><rt>シヨウ </rt></span></ruby><font
  class="font8">する。</font></td>
  <td class=xl94 style='border-top:none;border-left:none'>　</td>
  <td class=xl95 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>doseQuantity</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>value</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>decimal</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>1<font
  class="font11">回投与量。</font>doseAndRate.type<font class="font11">で指定される力価区分に対応した</font><ruby><font
  class="font11">量</font><span style='display:none'><rt>リョウ </rt></span></ruby><font
  class="font11">であることが必須である。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>1</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>doseQuantity</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>unit</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与量の単位。doseAndRate.typeで指定される力価区分に対応した<ruby>単位<span
  style='display:none'><rt>タンイ </rt></span></ruby>であることが必須である。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">錠</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>doseQuantity</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品単位略号を識別する<font
  class="font7">OID</font><font class="font8">。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>doseQuantity</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品単位略号。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=300 style='height:225.0pt'>
  <td height=300 class=xl113 width=105 style='height:225.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl114 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl114 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl127 width=47 style='border-top:none;border-left:none;width:35pt'>0..1</td>
  <td class=xl93 width=87 style='border-top:none;border-left:none;width:65pt'>Ratio</td>
  <td class=xl93 width=359 style='border-top:none;border-left:none;width:269pt'>1<font
  class="font13">日投与量を表す。</font><font class="font11">処方期間の中で</font><font
  class="font7"> 1 </font><font class="font11">日量が常に一定となる場合には、</font><font
  class="font7">1 </font><font class="font11">回量に加えて</font><font class="font7">
  1 </font><font class="font11">日量の<br>
    記録も可能とし、</font><font class="font7">rateRatio </font><font class="font11">要素に</font><font
  class="font7"> Ratio </font><font class="font11">型で記録す<br>
    る。Ratio 型は比を扱うデータ型で、分母にあたる<br>
    rateRatio.denominator 要素には、投与量の基準となる期間、つまり、1 日量の場合は「1 日」を Quantity
  型で指定する。単位には、単位コードUCUM（http://unitsofmeasure.org）で定義されている「日」を表す単位コード「d」を使用する。<br>
    分子にあたる rateRatio.numerator 要素には、1 回量と同様の記法で、1 日投与量を Quantity
  型で指定する。内服、外用ともに１日量を指定する場合にはこの要素を使用する。</font><font class="font12"><br>
    </font><font class="font7">doseAndRate.type</font><font class="font11">で指定される力価区分に対応した量であることが必須である。</font></td>
  <td class=xl94 style='border-top:none;border-left:none'>　</td>
  <td class=xl95 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>numerator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Quantity</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>1<font
  class="font11">日投与量の</font><ruby><font class="font11">分子</font><span
  style='display:none'><rt>ブンシ </rt></span></ruby><font class="font11">の</font><ruby><font
  class="font11">情報</font><span style='display:none'><rt>ジョウホウ </rt></span></ruby><ruby><font
  class="font11">を</font><span style='display:none'><rt>ヲ</rt></span></ruby><font
  class="font11">表す。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>numerator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>value</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>decimal</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>1<font
  class="font11">日投与量。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>3</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>numerator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>unit</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>投与量の単位。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">錠</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>numerator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品単位略号を識別する<font
  class="font7">OID</font><font class="font8">。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>numerator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品単位略号。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl107 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>denominator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>Quantity</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>1<font
  class="font8">日投与量の分母である「</font>1<font class="font8">日」を表す。</font><ruby><font
  class="font8">混乱</font><span style='display:none'><rt>コンラン </rt></span></ruby><font
  class="font8">を</font><ruby><font class="font8">避</font><span
  style='display:none'><rt>サケル </rt></span></ruby><font class="font8">けるため、「1日」</font><ruby><font
  class="font8">以外</font><span style='display:none'><rt>イガイ </rt></span></ruby><font
  class="font8">の</font><ruby><font class="font8">分母</font><span
  style='display:none'><rt>ブンボ </rt></span></ruby><font class="font8">は</font><ruby><font
  class="font8">指定</font><span style='display:none'><rt>シテイ </rt></span></ruby><font
  class="font8">しないこと。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>denominator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>value</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>decimal</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'>分母である「1日」の日数「1」</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>1</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>denominator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>unit</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl68 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>分母<span
  style='display:none'><rt>ブンボ </rt></span></ruby>である「1日」の単位「<ruby>日<span
  style='display:none'><rt>ヒ </rt></span></ruby>」</td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">日</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl107 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl108 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>denominator</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>system</td>
  <td class=xl69 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl69 width=87 style='border-top:none;border-left:none;width:65pt'>uri</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>UCUM<font
  class="font11">単位コードを識別する</font><font class="font7">URI</font><font
  class="font11">。</font></td>
  <td class=xl71 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl76 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl115 width=105 style='height:21.0pt;border-top:none;
  width:79pt'>doseAndRate[=]</td>
  <td class=xl116 width=92 style='border-top:none;border-left:none;width:69pt'>rateRatio</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>denominator</td>
  <td class=xl116 width=73 style='border-top:none;border-left:none;width:55pt'>code</td>
  <td class=xl77 width=47 style='border-top:none;border-left:none;width:35pt'>1..1</td>
  <td class=xl77 width=87 style='border-top:none;border-left:none;width:65pt'>code</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>「日」を表す<font
  class="font7">UCUM</font><font class="font8">単位コード。</font></td>
  <td class=xl75 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl79 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;d&quot;</td>
 </tr>

</table>

</div>
</div>


<button type="button" onclick="details_open(false,'DosageInstructionDetails','dic')">閉じる</button>

</details>

<br>

<script>
document.addEventListener('DOMContentLoaded', function(){
  var delemMrc = document.getElementById('MedicationRequestDetails');
  var delemDoi = document.getElementById('DosageInstructionDetails');

  delemMrc.addEventListener('toggle', function() => {
    const isOpen = delemMrc.open;
    if (isOpen) {
      document.getElementById('mrc').style.display = 'none';
    }else{
      document.getElementById('mrc').style.display = 'inline';
    }
  });

  delemDoi.addEventListener('toggle', function() => {
    const isOpen = delemDoi.open;
    if (isOpen) {
      document.getElementById('dic').style.display = 'none';
    }else{
      document.getElementById('dic').style.display = 'inline';
    }
  });
});

</script>

## プロファイル
