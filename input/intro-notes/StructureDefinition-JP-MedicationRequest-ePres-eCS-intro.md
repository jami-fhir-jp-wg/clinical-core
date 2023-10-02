
# 処方情報

## 背景および想定シナリオ
このプロファイルは、診療情報提供書や退院時サマリーなどの2文書や、電子カルテ情報共有サービスに登録される６情報をはじめ、各種の診療サマリーなどに処方情報を記述するためのMedicationRequestリソースのプロファイルを規定することを想定している。

## スコープ

### 対象
電子カルテシステムで登録された病名、診断書、診療情報提供書、退院時サマリーなどの診療要約記録などに記述される、ひとつひとつの医薬品に関する処方情報を対象とする。


## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "MedicationRequest"
  - meta.lastUpdated : 最終更新日時
  - identifier : インスタンス識別ID
  - status : 調剤が完了しているかどうかは不明であるが、交付が完了した処方として、completedを設定することとする。
  - medicationCodeableConcept : 医薬品のコードと名称。code.texはコード化の有無にかかわらず医薬品名称文字列を電子カルテ表示もしくは入力文字列のまま設定する。コード化は必須。
  - subject : 対象となる患者のFHIRリソースへの参照。電子カルテ情報共有サービスでは、 contained (JP_Patient)リソースへのリテラル参照を設定する。
  - dosageInstruction[]

### 条件により必須
  - meta.tag : 電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に必須。
  - contained (JP_Patient) : 電子カルテ情報共有サービスでは、JP_Patientリソースのcontainは必須。

### 推奨要素
  - caetgory

## 要素の説明とプロファイル
  - 多重度欄の背景色：濃い黄色＝必須要素、薄い黄色＝条件により必須要素、薄い緑＝推奨要素、無色＝本要素を記述する場合の説明を参考までに記載しているが多重度は0..1または0..*であるため出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい（多重度が0..1または0..*の）要素は、出現してもしなくてもよい。受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表で要素名のあとに[ ]表記があるものは、値が１個であっても、JSONデータのリスト型の値で記述しなければならない。
  - 要素[*] ：　この要素は繰り返し可能であり、値の記述はリストとなる。
  - 要素[+] ：　（繰り返し可能な要素において）新たなひとつの要素の子要素値として記述される。
  - 要素[=] ：　（繰り返し可能な要素において）すぐ上の要素と同じ要素の子要素値として記述される。


## 詳細説明
<details>
<summary>▶️表を展開表示または非表示</summary>

<div id="Core6ResourcesTable_14148" class="StructureDefinition-JP-MedicationRequest-ePres-eCS-intro-profile-table" align=center x:publishsource="Excel">

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
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_ePrescriptionData&quot;</td>
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
  <td class=xl103 width=359 style='border-top:none;width:269pt'>用法や投与量を含む処方指示。表「dosageInstructionTable」を参照のこと。<ruby><font
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

</details>

<br>

## プロファイル
