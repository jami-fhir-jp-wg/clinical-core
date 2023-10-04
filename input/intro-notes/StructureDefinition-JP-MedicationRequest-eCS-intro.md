
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
<details id="MedicationRequestDetails">
<button type="button" onclick="details_open(false,'MedicationRequestDetails', 'mrc')">閉じる</button>
<summary><button id="mrc" type="button" onclick="details_open(true,'MedicationRequestDetails','mrc')">表「MedicationRequest」開く</button></summary>

<div id="Core6ResourcesTable_14148" class="StructureDefinition-JP-MedicationRequest-eCS-intro-profile-table" align=center x:publishsource="Excel">
<table border=0 cellpadding=0 cellspacing=0 width=1046 style='border-collapse:
 collapse;table-layout:fixed;width:784pt'>
 <col class=xl88 width=105 style='mso-width-source:userset;mso-width-alt:2889;
 width:79pt'>
 <col class=xl88 width=83 style='mso-width-source:userset;mso-width-alt:2267;
 width:62pt'>
 <col class=xl88 width=73 span=2 style='mso-width-source:userset;mso-width-alt:
 2011;width:55pt'>
 <col class=xl67 width=35 style='mso-width-source:userset;mso-width-alt:950;
 width:26pt'>
 <col class=xl67 width=87 style='mso-width-source:userset;mso-width-alt:2377;
 width:65pt'>
 <col class=xl67 width=359 style='mso-width-source:userset;mso-width-alt:9837;
 width:269pt'>
 <col class=xl67 width=36 style='mso-width-source:userset;mso-width-alt:987;
 width:27pt'>
 <col class=xl67 width=195 style='mso-width-source:userset;mso-width-alt:5339;
 width:146pt'>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl96 width=105 style='height:76.0pt;width:79pt'>要素<font
  class="font13">Lv1</font></td>
  <td class=xl97 width=83 style='width:62pt'>要素<font class="font13">Lv2</font></td>
  <td class=xl97 width=73 style='width:55pt'>要素<font class="font13">Lv3</font></td>
  <td class=xl97 width=73 style='width:55pt'>要素<font class="font13">Lv4</font></td>
  <td class=xl98 width=35 style='width:26pt'>多重度</td>
  <td class=xl98 width=87 style='width:65pt'>型</td>
  <td class=xl98 width=359 style='width:269pt'>説明<ruby><font class="font5"><rt
  class=font5></rt></font></ruby></td>
  <td class=xl98 width=36 style='width:27pt'>固定値 <br>
    ／ 例 示</td>
  <td class=xl99 width=195 style='width:146pt'>値</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl100 width=105 style='height:31.0pt;width:79pt'>resourceType</td>
  <td class=xl101 width=83 style='width:62pt'>　</td>
  <td class=xl101 width=73 style='width:55pt'>　</td>
  <td class=xl101 width=73 style='width:55pt'>　</td>
  <td class=xl102 width=35 style='width:26pt'>1..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl103 width=87 style='width:65pt'>　</td>
  <td class=xl103 width=359 style='width:269pt'>MedicationRequest<font
  class="font12">リソースであることを示す。</font></td>
  <td class=xl90 width=36 style='width:27pt'>固定値</td>
  <td class=xl104 width=195 style='width:146pt'>&quot;MedicationRequest&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl105 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>meta</td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl107 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>Meta</td>
  <td class=xl108 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl109 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=360 style='height:270.0pt'>
  <td height=360 class=xl75 width=105 style='height:270.0pt;width:79pt'>meta</td>
  <td class=xl76 width=83 style='width:62pt'>lastUpdated</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>instant</td>
  <td class=xl68 width=359 style='width:269pt'>最終更新日時。<font class="font10">YYYY-MM-DDThh:mm:ss.sss+zz:zz
  (</font><font class="font6">例</font><font class="font10">.
  2015-02-07T13:28:17.239+09:00)</font><font class="font6"><br>
   
  この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</font></td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='width:146pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl75 width=105 style='height:60.0pt;width:79pt'>meta</td>
  <td class=xl76 width=83 style='width:62pt'>profile[+]</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl78 width=35 style='width:26pt'>0..*</td>
  <td class=xl68 width=87 style='width:65pt'>canonical(StructureDefinition)</td>
  <td class=xl73 width=359 style='width:269pt'>準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。</td>
  <td class=xl73 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_eClinicalSummary&quot;</td>
 </tr>
 <tr class=xl80 height=27 style='height:20.0pt'>
  <td height=27 class=xl75 width=105 style='height:20.0pt;width:79pt'>meta</td>
  <td class=xl76 width=83 style='width:62pt'>tag[*]</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..*</td>
  <td class=xl73 width=87 style='width:65pt'>Coding</td>
  <td class=xl73 width=359 style='width:269pt'><ruby>本リソースのタグ情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl77 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl80 height=60 style='height:45.0pt'>
  <td height=60 class=xl75 width=105 style='height:45.0pt;width:79pt'>meta</td>
  <td class=xl76 width=83 style='width:62pt'>tag[+]</td>
  <td class=xl76 width=73 style='width:55pt'>system</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>uri</td>
  <td class=xl81 width=359 style='width:269pt'>電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用</td>
  <td class=xl73 width=36 style='width:27pt'>固定値</td>
  <td class=xl77 width=195 style='width:146pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr class=xl80 height=41 style='height:31.0pt'>
  <td height=41 class=xl110 width=105 style='height:31.0pt;width:79pt'>meta</td>
  <td class=xl111 width=83 style='width:62pt'>tag[=]</td>
  <td class=xl111 width=73 style='width:55pt'>code</td>
  <td class=xl111 width=73 style='width:55pt'>　</td>
  <td class=xl112 width=35 style='width:26pt'>1..1</td>
  <td class=xl89 width=87 style='width:65pt'>code</td>
  <td class=xl89 width=359 style='width:269pt'>長期保存情報フラグ</td>
  <td class=xl89 width=36 style='width:27pt'>固定値</td>
  <td class=xl113 width=195 style='width:146pt'>&quot;LTS&quot;</td>
 </tr>
 <tr class=xl80 height=27 style='height:20.0pt'>
  <td height=27 class=xl114 width=105 style='height:20.0pt;border-top:none;
  width:79pt'>contained[*]</td>
  <td class=xl115 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl116 width=35 style='border-top:none;width:26pt'>0..*</td>
  <td class=xl117 width=87 style='border-top:none;width:65pt'>　</td>
  <td class=xl117 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl117 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl118 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr class=xl80 height=100 style='height:75.0pt'>
  <td height=100 class=xl75 width=105 style='height:75.0pt;width:79pt'>contained[+]</td>
  <td class=xl76 width=83 style='width:62pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>0..1*</td>
  <td class=xl73 width=87 style='width:65pt'>Resource(JP_Patient |
  JP_Patient_eCS_Contained )</td>
  <td class=xl73 width=359 style='width:269pt'>patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースの必須要素だけが含まれればよい。<br>
    <font class="font7">電子カルテ情報共有サービスでは、JP_Patientリソースのcontainedは必須。</font></td>
  <td class=xl73 width=36 style='width:27pt'>　</td>
  <td class=xl77 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl80 height=181 style='height:136.0pt'>
  <td height=181 class=xl110 width=105 style='height:136.0pt;width:79pt'>identifier[*]</td>
  <td class=xl111 width=83 style='width:62pt'>　</td>
  <td class=xl111 width=73 style='width:55pt'>　</td>
  <td class=xl111 width=73 style='width:55pt'>　</td>
  <td class=xl119 width=35 style='width:26pt'>1..*</td>
  <td class=xl89 width=87 style='width:65pt'>Identifier</td>
  <td class=xl89 width=359 style='width:269pt'>このリソース情報を作成した施設内で、このリソース情報を他のリソース情報と一意に区別できるID。このID情報をキーとして本リソース情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。処方を発行したシステムで固有に発番している処方オーダ番号。に相当<ruby>する<span
  style='display:none'><rt>ソウトウ </rt></span></ruby>。<br>
    さらにidentifierとして、処方特有の剤グループを識別する番号、剤グループ内の番号情報も格納する。</td>
  <td class=xl89 width=36 style='width:27pt'>　</td>
  <td class=xl113 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl80 height=60 style='height:45.0pt'>
  <td height=60 class=xl114 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>identifier[+]</td>
  <td class=xl115 width=83 style='border-top:none;width:62pt'>system</td>
  <td class=xl115 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl120 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl117 width=87 style='border-top:none;width:65pt'>uri</td>
  <td class=xl117 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl117 width=36 style='border-top:none;width:27pt'>固定値</td>
  <td class=xl121 align=left width=195 style='border-top:none;width:146pt'>http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></td>
 </tr>
 <tr class=xl80 height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=105 style='height:30.0pt;width:79pt'>identifier[=]</td>
  <td class=xl76 width=83 style='width:62pt'>value</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>1..1</td>
  <td class=xl73 width=87 style='width:65pt'>string</td>
  <td class=xl73 width=359 style='width:269pt'>このリソース情報IDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='width:146pt'>&quot;1311234567-2020-00123456&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=105 style='height:30.0pt;width:79pt'>identifier[+]</td>
  <td class=xl71 width=83 style='width:62pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>剤グループ（Rp）番号。剤グループ番号の名前空間を識別する<font
  class="font11">URI</font><font class="font12">。固定値。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.81&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl75 width=105 style='height:20.0pt;width:79pt'>identifier[=]</td>
  <td class=xl71 width=83 style='width:62pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>string</td>
  <td class=xl68 width=359 style='width:269pt'>剤グループ番号<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl75 width=105 style='height:30.0pt;width:79pt'>identifier[+]</td>
  <td class=xl71 width=83 style='width:62pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>剤グループ内連番。剤グループ内番号の名前空間を識別する<font
  class="font11">URI</font><font class="font12">。固定値。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.82&quot;</td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl110 width=105 style='height:21.0pt;width:79pt'>identifier[=]</td>
  <td class=xl92 width=83 style='width:62pt'>value</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl119 width=35 style='width:26pt'>1..1</td>
  <td class=xl94 width=87 style='width:65pt'>string</td>
  <td class=xl94 width=359 style='width:269pt'>剤グループ内連番。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl95 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl100 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>status</td>
  <td class=xl101 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl102 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl103 width=87 style='border-top:none;width:65pt'>code</td>
  <td class=xl103 width=359 style='border-top:none;width:269pt'><ruby>調<span
  style='display:none'><rt class=font14>コウフ </rt></span></ruby>剤<ruby>が完<span
  style='display:none'><rt class=font14>カンリョウ </rt></span></ruby>了しているかどうかは不明であるが、交付<ruby>が完<span
  style='display:none'><rt class=font14>セッテイ </rt></span></ruby>了した処<ruby>方と<span
  style='display:none'><rt class=font14>チョウザイ </rt></span></ruby>し<ruby>て、<span
  style='display:none'><rt class=font14>カンリョウ </rt></span></ruby>completed<ruby>　を<span
  style='display:none'><rt class=font14>フメイ </rt></span></ruby>設定することとする。</td>
  <td class=xl90 width=36 style='border-top:none;width:27pt'>固定値</td>
  <td class=xl122 width=195 style='border-top:none;width:146pt'>&quot;completed&quot;</td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl100 width=105 style='height:21.0pt;border-top:none;
  width:79pt'>intent</td>
  <td class=xl101 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl102 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl103 width=87 style='border-top:none;width:65pt'>code</td>
  <td class=xl103 width=359 style='border-top:none;width:269pt'>投薬指示の意図。order を<ruby>設定<span
  style='display:none'><rt class=font14>セッテイ </rt></span></ruby>する。</td>
  <td class=xl103 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl122 width=195 style='border-top:none;width:146pt'>&quot;order&quot;</td>
 </tr>
 <tr height=43 style='mso-height-source:userset;height:32.0pt'>
  <td height=43 class=xl105 width=105 style='height:32.0pt;border-top:none;
  width:79pt'>category[*]<ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl123 width=35 style='border-top:none;width:26pt'>0..1<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>CodeableConcept</td>
  <td class=xl108 width=359 style='border-top:none;width:269pt'><ruby>薬剤<span
  style='display:none'><rt class=font14>ショホウ </rt></span></ruby><ruby>使用<span
  style='display:none'><rt class=font14>ハッコウ </rt></span></ruby><ruby>区分<span
  style='display:none'><rt class=font14>クブン </rt></span></ruby></td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl109 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=136 style='mso-height-source:userset;height:102.0pt'>
  <td height=136 class=xl70 width=105 style='height:102.0pt;width:79pt'>category[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl71 width=83 style='width:62pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>1..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'><span
  style='mso-spacerun:yes'> </span>JP Core Medication Oral/External Category
  ValueSetとして、MERIT9コード：http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS、またはJHSP0007コード　http://jpfhir.jp/fhir/core/CodeSystem/JHSP0007　のいずれかを使用する。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
 </tr>
 <tr height=121 style='mso-height-source:userset;height:91.0pt'>
  <td height=121 class=xl70 width=105 style='height:91.0pt;width:79pt'>category[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl71 width=83 style='width:62pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>1..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl68 width=87 style='width:65pt'>string</td>
  <td class=xl68 width=359 style='width:269pt'>MERIT9コードから、OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）<br>
    JHSP0007コードから、BDP:持参薬処方　などを使用することができる。<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>例示<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl74 width=195 style='width:146pt'>OHI</td>
 </tr>
 <tr height=77 style='mso-height-source:userset;height:58.0pt'>
  <td height=77 class=xl91 width=105 style='height:58.0pt;width:79pt'>category[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl92 width=83 style='width:62pt'>display<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl124 width=35 style='width:26pt'>0..1<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl94 width=87 style='width:65pt'>string</td>
  <td class=xl94 width=359 style='width:269pt'>OHI:院内処方、OHO:院外処方、IHP:入院処方、DCG:退院時処方、ORD:定期処方、XTR:臨時処方、BDP:持参薬処方　<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl95 width=195 style='width:146pt'>院内処方<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl105 width=105 style='height:45.0pt;border-top:none;
  width:79pt'>medicationCodeableConcept</td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl107 width=35 style='border-top:none;width:26pt'>1..1<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>CodeableConcept</td>
  <td class=xl108 width=359 style='border-top:none;width:269pt'>医薬品コードと医薬品名称。<font
  class="font11">coding</font><font class="font12">要素を繰り返すことで</font><font
  class="font11">HOT9</font><font class="font12">や</font><font class="font11">YJ</font><font
  class="font12">コードなど複数のコード体系で医薬品コードを並記することが可能。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl109 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>medicationCodeableConcept</td>
  <td class=xl71 width=83 style='width:62pt'>coding[*]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..*</td>
  <td class=xl68 width=87 style='width:65pt'>Coding</td>
  <td class=xl68 width=359 style='width:269pt'>　</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl70 width=105 style='height:60.0pt;width:79pt'>medicationCodeableConcept</td>
  <td class=xl71 width=83 style='width:62pt'>coding[+]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>医薬品コード<font class="font12">を識別する</font><font
  class="font11">URI</font><font class="font12">。</font><font class="font15">電子カルテ共有サービスで使用する場合には、YJコード、HOT9またはHOT7コード、厚生労働省一般名コードのいずれかを必須とする。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;urn:oid:
  1.2.392.200119.4.403.1&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>medicationCodeableConcept</td>
  <td class=xl71 width=83 style='width:62pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>code</td>
  <td class=xl68 width=359 style='width:269pt'>医薬品コード<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;103831601&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl91 width=105 style='height:31.0pt;width:79pt'>medicationCodeableConcept</td>
  <td class=xl92 width=83 style='width:62pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl92 width=73 style='width:55pt'>display</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl125 width=35 style='width:26pt'>1..1</td>
  <td class=xl94 width=87 style='width:65pt'>string</td>
  <td class=xl94 width=359 style='width:269pt'><a
  href="applewebdata://36CC18F4-330A-4781-81CA-8EDA98B6FFCE/#_ftn1"><span
  style='color:black;font-size:10.0pt;text-decoration:none;font-family:"ＭＳ 明朝";
  mso-generic-font-family:auto;mso-font-charset:128'>医薬品名称。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></span></a></td>
  <td class=xl89 width=36 style='width:27pt'><a name="_ftnref1">例示</a></td>
  <td class=xl95 width=195 style='width:146pt'>&quot;<font class="font12">カルボシステイン錠２５０ｍｇ</font><font
  class="font11">&quot;</font></td>
 </tr>
 <tr class=xl80 height=140 style='height:105.0pt'>
  <td height=140 class=xl114 width=105 style='height:105.0pt;border-top:none;
  width:79pt'>subject</td>
  <td class=xl115 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl120 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl117 width=87 style='border-top:none;width:65pt'>Reference(JP_Patient|
  JP_Patient_eCS_Contained)</td>
  <td class=xl117 width=359 style='border-top:none;width:269pt'><ruby>対象<span
  style='display:none'><rt>タイショウ </rt></span></ruby>となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URI（fullUrl要素に指定されるUUID）を参照する。Containedリソースが存在する場合には、それを参照する記述（次行の例）、保険個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述（次次行の例）を示す。</td>
  <td class=xl117 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl118 width=195 style='border-top:none;width:146pt'>例 1<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;urn: .....&quot;<br>
    }</td>
 </tr>
 <tr class=xl80 height=120 style='height:90.0pt'>
  <td height=120 class=xl75 width=105 style='height:90.0pt;width:79pt'>　</td>
  <td class=xl76 width=83 style='width:62pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl76 width=73 style='width:55pt'>　</td>
  <td class=xl85 width=35 style='width:26pt'>　</td>
  <td class=xl73 width=87 style='width:65pt'>　</td>
  <td class=xl86 width=359 style='width:269pt'>電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合は、JP_Patientタイプのリソース（Patient.idの値が&quot;#patient203987&quot;と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのcontainedリソースのid値(Patient.id)を記述する例２となる。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='width:146pt'>例 2<br>
    {<br>
    <span style='mso-spacerun:yes'>  </span>&quot;reference&quot;:<span
  style='mso-spacerun:yes'>  </span>&quot;#patient203987&quot;<br>
    }</td>
 </tr>
 <tr class=xl80 height=268 style='mso-height-source:userset;height:201.0pt'>
  <td height=268 class=xl110 width=105 style='height:201.0pt;width:79pt'>　</td>
  <td class=xl111 width=83 style='width:62pt'>　</td>
  <td class=xl111 width=73 style='width:55pt'>　</td>
  <td class=xl111 width=73 style='width:55pt'>　</td>
  <td class=xl126 width=35 style='width:26pt'>　</td>
  <td class=xl89 width=87 style='width:65pt'>　</td>
  <td class=xl89 width=359 style='width:269pt'>保険個人識別子(例では、保険者等番号＝12345、被保険者証等の記号＝あいう、被保険者証等の番号＝１８７、枝番＝05の患者)を記述した外部にある患者リソースを参照する場合の例。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl113 width=195 style='width:146pt'>例 ３<br>
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
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl100 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>authoredOn</td>
  <td class=xl101 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl102 width=35 style='border-top:none;width:26pt'>1..1<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></td>
  <td class=xl103 width=87 style='border-top:none;width:65pt'>dateTime</td>
  <td class=xl103 width=359 style='border-top:none;width:269pt'>処方指示が最初に作成された日時。秒の精度まで記録する。タイムゾーンも付与しなければならない。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl90 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl122 width=195 style='border-top:none;width:146pt'>&quot;2020-08-21T12:28:17+09:00&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl105 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>note[*]<ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl127 width=35 style='border-top:none;width:26pt'>0..1*<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>Annotation</td>
  <td class=xl108 width=359 style='border-top:none;width:269pt'>薬剤単位の備考。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl109 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl91 width=105 style='height:61.0pt;width:79pt'>note[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl92 width=83 style='width:62pt'>text</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl93 width=35 style='width:26pt'>1..1</td>
  <td class=xl94 width=87 style='width:65pt'>markdown</td>
  <td class=xl94 width=359 style='width:269pt'>備考文字列。<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl95 width=195 style='width:146pt'>&quot;4<font class="font12">月</font><font
  class="font11">1</font><font class="font12">日から</font><font class="font11">4</font><font
  class="font12">日間服用。</font><font class="font11">2</font><font class="font12">週間休薬後、</font><font
  class="font11">4</font><font class="font12">月</font><font class="font11">19</font><font
  class="font12">日から</font><font class="font11">4</font><font class="font12">日間服用。患者に書面にて説明済み。</font><font
  class="font11">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl100 width=105 style='height:31.0pt;border-top:none;
  width:79pt'>dosageInstruction[*]<ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl101 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl101 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl102 width=35 style='border-top:none;width:26pt'>1..*<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl103 width=87 style='border-top:none;width:65pt'>Dosage</td>
  <td class=xl103 width=359 style='border-top:none;width:269pt'>用法や投与量を含む処方指示。<a href="#dosageInstructionTable_17705">表「dosageInstructionTable」を参照</a>のこと。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl103 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl122 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl105 width=105 style='height:30.0pt;border-top:none;
  width:79pt'>dispenseRequest</td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl106 width=73 style='border-top:none;width:55pt'>　</td>
  <td class=xl127 width=35 style='border-top:none;width:26pt'>0..1</td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>BackboneElement</td>
  <td class=xl108 width=359 style='border-top:none;width:269pt'>調剤（<ruby>薬局<span
  style='display:none'><rt>ヤッキョク </rt></span></ruby>での<ruby>払<span
  style='display:none'><rt>ハライ </rt></span></ruby>い<ruby>出<span
  style='display:none'><rt>ダシ </rt></span></ruby>し<ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>）情報</td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl109 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>0..*</td>
  <td class=xl68 width=87 style='width:65pt'>Extension</td>
  <td class=xl68 width=359 style='width:269pt'>調剤指示を表す拡張「<font class="font11">InstructionForDispense</font><font
  class="font12">」。</font><ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>0..1*</td>
  <td class=xl68 width=87 style='width:65pt'>Extension</td>
  <td class=xl68 width=359 style='width:269pt'>頓用回数を表現する拡張「<font class="font11">ExpectedRepeatCount</font><font
  class="font12">」。</font></td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=105 style='height:45.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>url</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>拡張を識別する<font class="font11">URL</font><font
  class="font12">。</font><ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/StructureDefinition/ExpectedRepeatCount&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>valueInteger</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>integer</td>
  <td class=xl68 width=359 style='width:269pt'>頓用回数。値は例示。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>5</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>quantity</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>0..1</td>
  <td class=xl68 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl68 width=359 style='width:269pt'>調剤量</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>quantity</td>
  <td class=xl71 width=73 style='width:55pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>decimal</td>
  <td class=xl68 width=359 style='width:269pt'>調剤量。値は例示。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>21</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>quantity</td>
  <td class=xl71 width=73 style='width:55pt'>unit</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>string</td>
  <td class=xl68 width=359 style='width:269pt'>単位文字列。値は例示。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;<font class="font12">錠</font><font
  class="font11">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>quantity</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>医薬品単位略号を識別する<font class="font11">URL</font><font
  class="font12">。固定値。</font></td>
  <td class=xl73 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl74 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>quantity</td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>code</td>
  <td class=xl68 width=359 style='width:269pt'>医薬品単位略号。値は例示。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>0..1</td>
  <td class=xl68 width=87 style='width:65pt'>Duration</td>
  <td class=xl68 width=359 style='width:269pt'>調剤日数</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl71 width=73 style='width:55pt'>value</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>decimal</td>
  <td class=xl68 width=359 style='width:269pt'>調剤日数。値は例示。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>7</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl71 width=73 style='width:55pt'>unit</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>string</td>
  <td class=xl68 width=359 style='width:269pt'>調剤日数の単位。「日」<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl87 width=195 style='width:146pt'><font class="font9">&quot;</font><font
  class="font12">日</font><font class="font11">&quot;</font></td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl71 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>UCUM<font class="font12">単位コードを識別する</font><font
  class="font11">URI</font><font class="font12">。</font><ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=39 style='height:29.0pt'>
  <td height=39 class=xl91 width=105 style='height:29.0pt;width:79pt'>dispenseRequest</td>
  <td class=xl92 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl92 width=73 style='width:55pt'>code</td>
  <td class=xl92 width=73 style='width:55pt'>　</td>
  <td class=xl93 width=35 style='width:26pt'>1..1</td>
  <td class=xl94 width=87 style='width:65pt'>code</td>
  <td class=xl94 width=359 style='width:269pt'>「日」を表す<font class="font11">UCUM</font><font
  class="font12">単位コード。</font><ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl89 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl95 width=195 style='width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>substitution</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>0..1</td>
  <td class=xl68 width=87 style='width:65pt'>BackboneElement</td>
  <td class=xl68 width=359 style='width:269pt'>後発医薬品への変更可否情報。<ruby><font
  class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>substitution</td>
  <td class=xl71 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl68 width=359 style='width:269pt'>　</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>substitution</td>
  <td class=xl71 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl71 width=73 style='width:55pt'>coding[*]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>　</td>
  <td class=xl69 width=35 style='width:26pt'>1..1*</td>
  <td class=xl68 width=87 style='width:65pt'>Coding</td>
  <td class=xl68 width=359 style='width:269pt'>後発品変更不可コード。</td>
  <td class=xl68 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl70 width=105 style='height:30.0pt;width:79pt'>substitution</td>
  <td class=xl71 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl71 width=73 style='width:55pt'>coding[+]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>system</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>uri</td>
  <td class=xl68 width=359 style='width:269pt'>後発品変更不可コードを識別する<font
  class="font11">URI。</font><ruby><font class="font14"><rt class=font14></rt></font></ruby></td>
  <td class=xl73 width=36 style='width:27pt'>固定<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl74 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.41&quot;</td>
 </tr>
 <tr height=37 style='height:28.0pt'>
  <td height=37 class=xl70 width=105 style='height:28.0pt;width:79pt'>substitution</td>
  <td class=xl71 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl71 width=73 style='width:55pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl71 width=73 style='width:55pt'>code</td>
  <td class=xl69 width=35 style='width:26pt'>1..1</td>
  <td class=xl68 width=87 style='width:65pt'>code</td>
  <td class=xl68 width=359 style='width:269pt'>後発品変更不可コード。値は例示。</td>
  <td class=xl73 width=36 style='width:27pt'>例示</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=39 style='height:29.0pt'>
  <td height=39 class=xl91 width=105 style='height:29.0pt;width:79pt'>substitution</td>
  <td class=xl92 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl92 width=73 style='width:55pt'>coding[=]<ruby><font class="font14"><rt
  class=font14></rt></font></ruby></td>
  <td class=xl92 width=73 style='width:55pt'>display</td>
  <td class=xl93 width=35 style='width:26pt'>0..1</td>
  <td class=xl94 width=87 style='width:65pt'>string</td>
  <td class=xl94 width=359 style='width:269pt'>値は例示。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl95 width=195 style='width:146pt'>&quot;<font class="font12">変更不可</font><font
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
<details id="DosageInstructionDetails">
<summary><button id="dic" type="button" onclick="details_open(true,'DosageInstructionDetails', 'dic')">表「MedicationRequest.DosageInstruction」を開く</button></summary>
<button type="button" onclick="details_open(false,'DosageInstructionDetails', 'dic')">閉じる</button>

<div id="dosageInstructionTable">
<div id="dosageInstructionTable_17705" class="DosageInstruction" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1067 style='border-collapse:
 collapse;table-layout:fixed;width:800pt'>
 <col class=xl122 width=105 style='mso-width-source:userset;mso-width-alt:2889;
 width:79pt'>
 <col class=xl122 width=92 style='mso-width-source:userset;mso-width-alt:2523;
 width:69pt'>
 <col class=xl122 width=73 span=2 style='mso-width-source:userset;mso-width-alt:
 2011;width:55pt'>
 <col width=47 style='mso-width-source:userset;mso-width-alt:1280;width:35pt'>
 <col width=87 style='mso-width-source:userset;mso-width-alt:2377;width:65pt'>
 <col width=359 style='mso-width-source:userset;mso-width-alt:9837;width:269pt'>
 <col width=36 style='mso-width-source:userset;mso-width-alt:987;width:27pt'>
 <col class=xl74 width=195 style='mso-width-source:userset;mso-width-alt:5339;
 width:146pt'>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl124 width=105 style='height:75.0pt;width:79pt'>要素<font
  class="font9">Lv1</font></td>
  <td class=xl125 width=92 style='border-left:none;width:69pt'>要素<font
  class="font9">Lv2</font></td>
  <td class=xl125 width=73 style='border-left:none;width:55pt'>要素<font
  class="font9">Lv3</font></td>
  <td class=xl125 width=73 style='border-left:none;width:55pt'>要素<font
  class="font9">Lv4</font></td>
  <td class=xl126 width=47 style='border-left:none;width:35pt'>多重度</td>
  <td class=xl126 width=87 style='border-left:none;width:65pt'>型</td>
  <td class=xl126 width=359 style='border-left:none;width:269pt'>説明<ruby><font
  class="font5"><rt class=font5></rt></font></ruby></td>
  <td class=xl126 width=36 style='border-left:none;width:27pt'>固定値 <br>
    ／ 例 示</td>
  <td class=xl127 width=195 style='border-left:none;width:146pt'>値</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl116 align=left width=105 style='height:31.0pt;
  width:79pt'>extension[*]</td>
  <td class=xl117 width=92 style='border-left:none;width:69pt'>　</td>
  <td class=xl117 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl117 width=73 style='border-left:none;width:55pt'>　</td>
  <td class=xl73 align=left width=47 style='border-left:none;width:35pt'>1..1*</td>
  <td class=xl94 width=87 style='border-left:none;width:65pt'>　</td>
  <td class=xl68 align=left width=359 style='border-left:none;width:269pt'>投与開始日や<ruby>実<span
  style='display:none'><rt>ジツ </rt></span></ruby><ruby>投与<span
  style='display:none'><rt>トウヨ </rt></span></ruby><ruby>日数<span
  style='display:none'><rt>ニッスウ </rt></span></ruby>を明示するために使用する拡張を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>。</td>
  <td class=xl70 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl77 width=195 style='border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl108 align=left width=105 style='height:76.0pt;
  width:79pt'>extension[+]</td>
  <td class=xl113 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl113 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl113 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl88 width=47 style='border-top:none;border-left:none;width:35pt'>　</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Extension</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font13">投与開始日を明示するために使用する拡張「PeriodOfUse</font><font
  class="font8">」。投与開始日を明示しない処方の場合には、処方箋発行日を投与開始日として設定する。電子カルテ情報共有サービスにおいては、本要素を必須とする。</font></td>
  <td class=xl123 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl108 align=left width=105 style='height:60.0pt;
  width:79pt'>extension[=]</td>
  <td class=xl109 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>url</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl84 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1*</td>
  <td class=xl83 align=left width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl85 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>拡張を識別するURL。</td>
  <td class=xl86 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_PeriodOfUse&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valuePeriod</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl73 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Period</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与期間を表す</td>
  <td class=xl70 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl112 align=left width=105 style='height:21.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl113 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valuePeriod</td>
  <td class=xl113 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>start</td>
  <td class=xl113 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl101 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl100 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>dateTime</td>
  <td class=xl102 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>処方期間の開始日</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;2020-08-21&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl114 align=left width=105 style='height:60.0pt;
  border-top:none;width:79pt'>extension[+]</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1*</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Extension</td>
  <td class=xl85 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>隔日投与など、服用開始日から終了日までの日数と実投与日数が異なる場合に、<font class="font13">実投与日数を明示したい場合に使用する拡張</font><font
  class="font12"> </font><font class="font13">「</font><font class="font12">UsageDuration</font><font
  class="font13">」</font><font class="font8">。詳細は処方情報</font><font class="font7">HL</font><font
  class="font8">７</font><font class="font7">FHIR</font><font class="font8">記述仕様も参照すること。</font></td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl110 align=left width=105 style='height:60.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>url</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>拡張を識別するためのURL。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valueDuration</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Duration</td>
  <td class=xl103 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font10">投与期間とは別に投与実日数を表現したい場合にこの拡張を使用し、</font><font
  class="font7">Duration </font><font class="font10">型で開始日を記載する。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl116 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl117 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valueDuration</td>
  <td class=xl117 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>value</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>decimal</td>
  <td class=xl97 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>実投与日数。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>7</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valueDuration</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>unit</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>単位「日」。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">日</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valueDuration</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>単位コード UCUMを識別するURI。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl118 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>extension[=]</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>valueDuration</td>
  <td class=xl119 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl78 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>単位コードUCUMにおける実投与日数の単位を表すコード。</td>
  <td class=xl75 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl120 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>text</td>
  <td class=xl121 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl121 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl121 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl106 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl105 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl105 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>dosageInstruction<font class="font13">が表す処方指示の文字列表現。</font></td>
  <td class=xl91 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl82 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服・経口・１日３回朝昼夕食後　１回１錠　７日分</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl114 align=left width=105 style='height:45.0pt;
  border-top:none;width:79pt'>additionalInstruction[*]</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..*</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl85 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font13">補足的な処方指示。不均等投与を1日用法として記載する場合に、補足用法コードを記録するために使用する。</font><font
  class="font8">詳細は処方情報HL７FHIR記述仕様も参照。</font></td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl110 align=left width=105 style='height:26.0pt;
  border-top:none;width:79pt'>additionalInstruction[+]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>additionalInstruction[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[+]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI補足用法８桁コードを識別するURI。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.200250.2.2.20.22&quot;</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl110 align=left width=105 style='height:26.0pt;
  border-top:none;width:79pt'>additionalInstruction[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font8">補足用法コード指定する。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;V14NNNNN&quot;</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl110 align=left width=105 style='height:26.0pt;
  border-top:none;width:79pt'>additionalInstruction[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>display</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>コードの表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">不均等・１回目・４錠</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl118 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>additionalInstruction[=]</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>text</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl78 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>不均等投与の表現文字列。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl92 width=195 style='border-top:none;border-left:none;width:146pt'>１日３回　毎食後　７錠（４錠－２錠－１錠）</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl114 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl107 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Timing</td>
  <td class=xl98 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>服用タイミングを記録する。</td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>event[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>dateTime</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>服用タイミングを具体的な日時で指定する場合に使用する。詳細は処方情報HL７FHIR記述仕様も参照。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;2020-08-21&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>repeat</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Element</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl116 align=left width=105 style='height:75.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl117 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>repeat</td>
  <td class=xl117 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>boundsDuration</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Duration</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font13">投薬期間（服用開始日から服用終了日まで）の全日数。</font>実投与（<ruby>服用<span
  style='display:none'><rt>フクヨウ </rt></span></ruby>）日数ではないことに注意する。すなわち、<ruby>実際<span
  style='display:none'><rt>ジッサイ </rt></span></ruby>に服用しない<ruby>日<span
  style='display:none'><rt>ヒ </rt></span></ruby>も１日と<ruby>数<span
  style='display:none'><rt>カゾエル </rt></span></ruby>える。詳細は処方情報HL７FHIR記述仕様も参照。なお、この<ruby>実投与<span
  style='display:none'><rt>ジツトウヨ </rt></span></ruby>（<ruby>服用<span
  style='display:none'><rt>フクヨウ </rt></span></ruby>）<ruby>日数<span
  style='display:none'><rt>ニッスウ </rt></span></ruby>を<ruby>別<span
  style='display:none'><rt>ベツ </rt></span></ruby>に<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>したい<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>には、</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>repeat</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>boundsDuration</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>value</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>decimal</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投<ruby>薬<span style='display:none'><rt>キカｎ </rt></span></ruby>期<ruby>間<span
  style='display:none'><rt>ゼｎ </rt></span></ruby>（服用開始日から服用終了日まで）の全日数。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>7</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>repeat</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>boundsDuration</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>unit</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投薬期間（服用開始日から服用終了日まで）の全日数の単位文字列。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">日</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl110 align=left width=105 style='height:26.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>repeat</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>boundsDuration</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>単位コード<font class="font7">UCUM</font><font class="font8">のコード体系を識別する</font><font
  class="font7">URI</font><font class="font8">。</font></td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=35 style='height:26.0pt'>
  <td height=35 class=xl110 align=left width=105 style='height:26.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>repeat</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>boundsDuration</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>日を意味する単位コード「<font class="font7">d</font><font class="font8">」。</font></td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl116 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl117 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>code</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl99 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl97 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>用法。できるかぎりコード<ruby>化<span style='display:none'><rt>カ </rt></span></ruby>をすることを<ruby>推奨<span
  style='display:none'><rt>スイショウ カ スイショウ </rt></span></ruby>する。</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl110 align=left width=105 style='height:75.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>code</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl76 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font10">標準用法コードによりコード化することを推奨する。詳細は処方情報</font>HL<font
  class="font10">７</font>FHIR<font class="font10">記述仕様も参照すること。施設固有のコード化による</font><ruby><font
  class="font10">記述</font><span style='display:none'><rt>キジュツ </rt></span></ruby><font
  class="font10">も</font><ruby><font class="font10">可能</font><span
  style='display:none'><rt>カノウ </rt></span></ruby><font class="font10">であるが、できるかぎり、JAMI標準用法コードと併用することが</font><ruby><font
  class="font10">望</font><span style='display:none'><rt>ノゾマシイ </rt></span></ruby><font
  class="font10">ましい。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl110 align=left width=105 style='height:45.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>code</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[+]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl76 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font8">標準用法の</font><ruby><font class="font8">場合</font><span
  style='display:none'><rt>バアイ </rt></span></ruby><font class="font8">にはJAMI標準用法</font>16<font
  class="font8">桁コードを識別する</font>URI<font class="font10">。</font><ruby><font
  class="font11">施設</font><span style='display:none'><rt>シセツ </rt></span></ruby><ruby><font
  class="font11">固有</font><span style='display:none'><rt>コユウ </rt></span></ruby><font
  class="font11">コードの</font><ruby><font class="font11">場合</font><span
  style='display:none'><rt>バアイ </rt></span></ruby><font class="font11">にはXXXXXXを</font><ruby><font
  class="font11">設定</font><span style='display:none'><rt>セッテイ </rt></span></ruby><font
  class="font11">する。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.200250.2.2.20&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>code</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl76 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><ruby>用<span style='display:none'><rt>ヨウホウ </rt></span></ruby>法コード</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1013044400000000&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>code</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>display</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>用法コードに<ruby>対応<span style='display:none'><rt>タイオウ </rt></span></ruby>する表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服・経口・１日３回朝昼夕食後</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl118 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>timing</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>code</td>
  <td class=xl119 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>text</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl88 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl78 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><ruby>用<span style='display:none'><rt>ヨウホウ </rt></span></ruby>法のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>の<ruby>有無<span
  style='display:none'><rt>ウム </rt></span></ruby>にかかわらず、<ruby>用法<span
  style='display:none'><rt>ヨウホウ </rt></span></ruby>の<ruby>完全<span
  style='display:none'><rt>カンゼン </rt></span></ruby>な<ruby>文字列<span
  style='display:none'><rt>モジレツ </rt></span></ruby>を<ruby>設定<span
  style='display:none'><rt>セッテイ </rt></span></ruby>する。</td>
  <td class=xl89 width=36 style='width:27pt'>　</td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl120 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>asNeededBoolean</td>
  <td class=xl121 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl121 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl121 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl105 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl105 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>boolean</td>
  <td class=xl81 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font13">頓用型の用法を指定する場合に&quot;true&quot;を指定する</font><font
  class="font8">。詳細は処方情報HL７FHIR記述仕様も参照。</font></td>
  <td class=xl93 style='border-top:none;border-left:none'>　</td>
  <td class=xl82 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl114 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>site</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl85 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font13">外用薬で部位を指定する場合に使用する。</font><font
  class="font8">詳細は処方情報HL７FHIR記述仕様も参照。</font></td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>site</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>site</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[+]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI外用部位３桁コードを識別するURI。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.200250.2.2.20.32&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>site</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font8">部位コード。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;950&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>site</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>display</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font8">部位コードの表示名。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">膝</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl118 align=left width=105 style='height:21.0pt;
  border-top:none;width:79pt'>site</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>text</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl78 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>部位のテキスト表現。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">膝</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl114 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>route</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl98 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与経路</td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>route</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl110 align=left width=105 style='height:45.0pt;
  border-top:none;width:79pt'>route</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[+]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与経路コード表のsystemを設定する。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>route</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与経路コード表で規定するコード。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;PO&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>route</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>display</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与経路コード表で規定するコードの表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">口</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl118 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>route</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>text</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl78 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与経路の文字列表現。コードで指定できない場合、本要素で文字列として指定してもよい。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">経口</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl114 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>method</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl98 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与方法</td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>method</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl110 align=left width=105 style='height:60.0pt;
  border-top:none;width:79pt'>method</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[+]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与方法に対応する<font class="font7">JAMI</font><font class="font8">用法コード表基本用法１桁コードを識別する</font><font
  class="font7">URI</font><font class="font8">。同</font><font class="font7">2</font><font
  class="font8">桁コード（</font><font class="font7">&quot;urn:oid:1.2.392.200250.2.2.20.40&quot;</font><font
  class="font8">）を使用してもよい。</font></td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.200250.2.2.20.30&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl110 align=left width=105 style='height:45.0pt;
  border-top:none;width:79pt'>method</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font8">用法コード表基本用法１桁コード。同</font><font
  class="font7">2</font><font class="font8">桁コード（</font><font class="font7">&quot;urn:oid:1.2.392.200250.2.2.20.40&quot;</font><font
  class="font8">）を使用してもよい。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl110 align=left width=105 style='height:45.0pt;
  border-top:none;width:79pt'>method</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>display</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI<font class="font8">用法コード表基本用法１桁コードの表示名。同</font><font
  class="font7">2</font><font class="font8">桁コード（</font><font class="font7">&quot;urn:oid:1.2.392.200250.2.2.20.40&quot;</font><font
  class="font8">）を使用してもよい。</font></td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl118 align=left width=105 style='height:31.0pt;
  border-top:none;width:79pt'>method</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>text</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl119 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl78 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与方法のテキスト表現。コードで指定できない場合、本要素で文字列として指定してもよい。</td>
  <td class=xl89 width=36 style='width:27pt'>例示</td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">内服</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=180 style='height:135.0pt'>
  <td height=180 class=xl114 align=left width=105 style='height:135.0pt;
  border-top:none;width:79pt'>doseAndRate[*]</td>
  <td class=xl115 width=92 style='border-top:none;border-left:none;width:69pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl115 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl104 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..*</td>
  <td class=xl104 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Element</td>
  <td class=xl85 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><font class="font13">投与量を記録する。</font><ruby><br>
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
  style='display:none'><rt>ガイヨウ </rt></span></ruby>ndRate.rateRatioの分子で指定する。外用の全量指定（２本など）の場合は、調剤量として、MedicationRequestリソースのdispenseRequest.quantity
  要素に、SimpleQuantity 型で記録する。</td>
  <td class=xl90 style='border-top:none;border-left:none'>　</td>
  <td class=xl87 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl116 align=left width=105 style='height:60.0pt;
  border-top:none;width:79pt'>doseAndRate[+]</td>
  <td class=xl117 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>type</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl97 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>力価区分。<font class="font8">用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。本要素は、安全性のため、</font><ruby><font
  class="font8">外用薬</font><span style='display:none'><rt>ガイヨウヤク </rt></span></ruby><font
  class="font8">の</font><ruby><font class="font8">全量</font><span
  style='display:none'><rt>ゼンリョウ </rt></span></ruby><ruby><font class="font8">処方</font><span
  style='display:none'><rt>ショホウ </rt></span></ruby><ruby><font class="font8">指示</font><span
  style='display:none'><rt>シジ </rt></span></ruby><font class="font8">を</font><ruby><font
  class="font8">除</font><span style='display:none'><rt>ノゾキ </rt></span></ruby><font
  class="font8">き省略せずに必須とする。</font></td>
  <td class=xl95 style='border-top:none;border-left:none'>　</td>
  <td class=xl96 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>type</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[*]</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1*</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl69 width=359 style='border-top:none;border-left:none;width:269pt'>　</td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>type</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[+]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>力価区分コードのコード体系を識別するURI。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.22&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>type</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>力価区分コード。（1：製剤量　2：原薬量）</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>type</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>coding[=]</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>display</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>力価区分コードの表示名。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">製剤量</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl116 align=left width=105 style='height:90.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl117 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>doseQuantity</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>SimpleQuantity</td>
  <td class=xl94 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>1<font class="font13">回投与量。 </font><font class="font8">回投与量の記録を基本とし、doseQuantity
  要素 に SimpleQuantity
  型で記述する。単位コードには、医薬品単位略号（urn:oid:1.2.392.100495.20.2.101）を使用する。</font><ruby><font
  class="font8">内服</font><span style='display:none'><rt>ナイフク </rt></span></ruby><font
  class="font8">、</font><ruby><font class="font8">外用</font><span
  style='display:none'><rt>ガイヨウ </rt></span></ruby><font class="font8">ともに１回</font><ruby><font
  class="font8">量</font><span style='display:none'><rt>リョウ </rt></span></ruby><font
  class="font8">を</font><ruby><font class="font8">指定</font><span
  style='display:none'><rt>シテイ </rt></span></ruby><font class="font8">する</font><ruby><font
  class="font8">場合</font><span style='display:none'><rt>バアイ </rt></span></ruby><font
  class="font8">にはこの</font><ruby><font class="font8">要素</font><span
  style='display:none'><rt>ヨウソ </rt></span></ruby><font class="font8">を</font><ruby><font
  class="font8">使用</font><span style='display:none'><rt>シヨウ </rt></span></ruby><font
  class="font8">する。</font></td>
  <td class=xl95 style='border-top:none;border-left:none'>　</td>
  <td class=xl96 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>doseQuantity</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>value</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>decimal</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>1回投与量。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>1</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>doseQuantity</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>unit</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与量の単位。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">錠</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>doseQuantity</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>医薬品単位略号を識別する<font class="font7">OID</font><font class="font8">。</font></td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>doseQuantity</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>医薬品単位略号。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl116 align=left width=105 style='height:195.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl117 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl117 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl94 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>0..1</td>
  <td class=xl94 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Ratio</td>
  <td class=xl94 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>1<font class="font13">日投与量を表す。</font><font class="font10">処方期間の中で</font><font
  class="font7"> 1 </font><font class="font10">日量が常に一定となる場合には、</font><font
  class="font7">1 </font><font class="font10">回量に加えて</font><font class="font7">
  1 </font><font class="font10">日量の<br>
    記録も可能とし、</font><font class="font7">rateRatio </font><font class="font10">要素に</font><font
  class="font7"> Ratio </font><font class="font10">型で記録す<br>
    る。Ratio 型は比を扱うデータ型で、分母にあたる<br>
    rateRatio.denominator 要素には、投与量の基準となる期間、つまり、1 日量の場合は「1 日」を Quantity
  型で指定する。単位には、単位コードUCUM（http://unitsofmeasure.org）で定義されている「日」を表す単位コード「d」を使用する。<br>
    分子にあたる rateRatio.numerator 要素には、1 回量と同様の記法で、1 日投与量を Quantity
  型で指定する。内服、外用ともに１日量を指定する場合にはこの要素を使用する。</font></td>
  <td class=xl95 style='border-top:none;border-left:none'>　</td>
  <td class=xl96 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>numerator</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Quantity</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>1<font class="font10">日投与量の</font><ruby><font class="font10">分子</font><span
  style='display:none'><rt>ブンシ </rt></span></ruby><font class="font10">の</font><ruby><font
  class="font10">情報</font><span style='display:none'><rt>ジョウホウ </rt></span></ruby><ruby><font
  class="font10">を</font><span style='display:none'><rt>ヲ</rt></span></ruby><font
  class="font10">表す。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>numerator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>value</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>decimal</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>1日投与量。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>3</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>numerator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>unit</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>投与量の単位。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">錠</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl110 align=left width=105 style='height:30.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>numerator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>医薬品単位略号を識別する<font class="font7">OID</font><font class="font8">。</font></td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>numerator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>医薬品単位略号。</td>
  <td class=xl67 width=36 style='width:27pt'>例示</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>denominator</td>
  <td class=xl111 width=73 style='border-top:none;border-left:none;width:55pt'>　</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Quantity</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>1<font class="font8">日投与量の分母である「</font><font class="font7">1</font><font
  class="font8">日」を表す。</font></td>
  <td class=xl72 style='border-top:none;border-left:none'>　</td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>denominator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>value</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>decimal</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>分母である「1日」の日数「1」</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>1</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>denominator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>unit</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl68 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><ruby>分母<span style='display:none'><rt>ブンボ </rt></span></ruby>である「1日」の単位「<ruby>日<span
  style='display:none'><rt>ヒ </rt></span></ruby>」</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<font
  class="font8">日</font><font class="font7">&quot;</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl110 align=left width=105 style='height:20.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl111 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>denominator</td>
  <td class=xl111 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>system</td>
  <td class=xl69 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl69 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>uri</td>
  <td class=xl69 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>UCUM単位コードを識別するURI。</td>
  <td class=xl71 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl77 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl118 align=left width=105 style='height:21.0pt;
  border-top:none;width:79pt'>doseAndRate[=]</td>
  <td class=xl119 align=left width=92 style='border-top:none;border-left:none;
  width:69pt'>rateRatio</td>
  <td class=xl119 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>denominator</td>
  <td class=xl119 align=left width=73 style='border-top:none;border-left:none;
  width:55pt'>code</td>
  <td class=xl78 align=left width=47 style='border-top:none;border-left:none;
  width:35pt'>1..1</td>
  <td class=xl78 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>code</td>
  <td class=xl79 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>「日」を表す<font class="font7">UCUM</font><font class="font8">単位コード。</font></td>
  <td class=xl75 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>固定<span style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl80 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;d&quot;</td>
 </tr>

</table>

</div>
</div>

<button type="button" onclick="details_open(false,'DosageInstructionDetails','dic')">閉じる</button>

</details>

<br>


## プロファイル
