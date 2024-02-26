
<table border=0 cellpadding=0 cellspacing=0 width=1065 style='border-collapse:
 collapse;table-layout:fixed;width:798pt'>
 <col class=xl317 width=91 style='mso-width-source:userset;mso-width-alt:2486;
 width:68pt'>
 <col class=xl317 width=83 style='mso-width-source:userset;mso-width-alt:2267;
 width:62pt'>
 <col class=xl317 width=65 style='mso-width-source:userset;mso-width-alt:1792;
 width:49pt'>
 <col class=xl317 width=57 span=2 style='mso-width-source:userset;mso-width-alt:
 1572;width:43pt'>
 <col class=xl317 width=35 style='mso-width-source:userset;mso-width-alt:950;
 width:26pt'>
 <col class=xl317 width=87 style='mso-width-source:userset;mso-width-alt:2377;
 width:65pt'>
 <col class=xl317 width=359 style='mso-width-source:userset;mso-width-alt:9837;
 width:269pt'>
 <col class=xl317 width=36 style='mso-width-source:userset;mso-width-alt:987;
 width:27pt'>
 <col class=xl344 width=195 style='mso-width-source:userset;mso-width-alt:5339;
 width:146pt'>
 <tr height=28 style='height:21.0pt'>
  <td colspan=10 height=28 class=xl322 width=1065 style='height:21.0pt;
  width:798pt'>多重度は、親要素が出現した場合の多重度。たとえばある子要素の多重度が1..1であっても親要素が出現しない場合にはその子要素は出現しない。逆に親要素が出現する場合には、この子要素は出現しなければならない。</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl323 width=91 style='height:76.0pt;width:68pt'>要素Lv1</td>
  <td class=xl102 width=83 style='width:62pt'>要素Lv2</td>
  <td class=xl102 width=65 style='width:49pt'>要素Lv3</td>
  <td class=xl102 width=57 style='width:43pt'>要素Lv4</td>
  <td class=xl102 width=57 style='width:43pt'>要素Lv5</td>
  <td class=xl102 width=35 style='width:26pt'>多重度</td>
  <td class=xl102 width=87 style='width:65pt'>型</td>
  <td class=xl102 width=359 style='width:269pt'>説明<ruby><font class="font8"><rt
  class=font8></rt></font></ruby></td>
  <td class=xl102 width=36 style='width:27pt'>固定値 <br>
    ／ 例 示</td>
  <td class=xl124 width=195 style='width:146pt'>値</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl324 width=91 style='height:31.0pt;width:68pt'>resourceType</td>
  <td class=xl104 width=83 style='width:62pt'>　</td>
  <td class=xl104 width=65 style='width:49pt'>　</td>
  <td class=xl104 width=57 style='width:43pt'>　</td>
  <td class=xl104 width=57 style='width:43pt'>　</td>
  <td class=xl103 width=35 style='width:26pt'>1..1<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl104 width=87 style='width:65pt'>string</td>
  <td class=xl345 width=359 style='width:269pt'>MedicationRequestリソースであることを示す。</td>
  <td class=xl97 width=36 style='width:27pt'>固定値</td>
  <td class=xl125 width=195 style='width:146pt'>&quot;MedicationRequest&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl325 width=91 style='height:20.0pt;border-top:none;
  width:68pt'>meta</td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl106 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl106 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl105 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl106 width=87 style='border-top:none;width:65pt'>Meta</td>
  <td class=xl106 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl106 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl126 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=360 style='height:270.0pt'>
  <td height=360 class=xl326 width=91 style='height:270.0pt;width:68pt'>meta</td>
  <td class=xl83 width=83 style='width:62pt'>lastUpdated</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>instant</td>
  <td class=xl80 width=359 style='width:269pt'>最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz
  (例. 2015-02-07T13:28:17.239+09:00)<br>
   
  この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
 </tr>
 <tr height=160 style='height:120.0pt'>
  <td height=160 class=xl326 width=91 style='height:120.0pt;width:68pt'>meta</td>
  <td class=xl83 width=83 style='width:62pt'>profile[+]</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>0..*</td>
  <td class=xl80 width=87 style='width:65pt'>canonical(StructureDefinition)</td>
  <td class=xl77 width=359 style='width:269pt'>準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。<br>
   
  http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS　を設定する。<br>
    <font class="font13">電子カルテ情報共有サービスに本リソースデータを送信する場合には、http://jpfhir.jp/fhir/clins/StructureDefinition/JP_MedicationRequest_eCS　を設定すること。</font></td>
  <td class=xl71 width=36 style='width:27pt'>固定値</td>
  <td class=xl153 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS&quot;<br>
    または<br>
   
  &quot;http://jpfhir.jp/fhir/clins/StructureDefinition/JP_MedicationRequest_eCS&quot;</td>
 </tr>
 <tr class=xl117 height=27 style='height:20.0pt'>
  <td height=27 class=xl326 width=91 style='height:20.0pt;width:68pt'>meta</td>
  <td class=xl83 width=83 style='width:62pt'>tag[*]</td>
  <td class=xl83 width=65 style='width:49pt'>　</td>
  <td class=xl83 width=57 style='width:43pt'>　</td>
  <td class=xl83 width=57 style='width:43pt'>　</td>
  <td class=xl85 width=35 style='width:26pt'>0..*</td>
  <td class=xl83 width=87 style='width:65pt'>Coding</td>
  <td class=xl83 width=359 style='width:269pt'><ruby>本リソースのタグ情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby></td>
  <td class=xl83 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl117 height=60 style='height:45.0pt'>
  <td height=60 class=xl326 width=91 style='height:45.0pt;width:68pt'>meta</td>
  <td class=xl83 width=83 style='width:62pt'>tag[+]</td>
  <td class=xl83 width=65 style='width:49pt'>system</td>
  <td class=xl83 width=57 style='width:43pt'>　</td>
  <td class=xl83 width=57 style='width:43pt'>　</td>
  <td class=xl85 width=35 style='width:26pt'>1..1</td>
  <td class=xl83 width=87 style='width:65pt'>uri</td>
  <td class=xl86 width=359 style='width:269pt'>電子カルテ情報共有サービスで長期保存フラグの設定する場合に使用。</td>
  <td class=xl83 width=36 style='width:27pt'>固定値</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr class=xl117 height=41 style='height:31.0pt'>
  <td height=41 class=xl327 width=91 style='height:31.0pt;width:68pt'>meta</td>
  <td class=xl96 width=83 style='width:62pt'>tag[=]</td>
  <td class=xl96 width=65 style='width:49pt'>code</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl107 width=35 style='width:26pt'>1..1</td>
  <td class=xl96 width=87 style='width:65pt'>code</td>
  <td class=xl96 width=359 style='width:269pt'>長期保存フラグ</td>
  <td class=xl96 width=36 style='width:27pt'>固定値</td>
  <td class=xl128 width=195 style='width:146pt'>&quot;LTS&quot;</td>
 </tr>
 <tr class=xl117 height=27 style='height:20.0pt'>
  <td height=27 class=xl328 width=91 style='height:20.0pt;border-top:none;
  width:68pt'>contained[*]</td>
  <td class=xl108 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl108 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl108 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl108 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl355 width=35 style='border-top:none;width:26pt'>0..*</td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>　</td>
  <td class=xl108 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl129 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl70 width=91 style='height:90.0pt;width:68pt'>contained[+]</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=65 style='width:49pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=35 style='width:26pt'>0..1*</td>
  <td class=xl71 width=87 style='width:65pt'>Resource(JP_Encounter )</td>
  <td class=xl71 width=359 style='width:269pt'>encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl70 width=91 style='height:75.0pt;width:68pt'>contained[+]</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=65 style='width:49pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl75 width=35 style='width:26pt'>0..1*</td>
  <td class=xl71 width=87 style='width:65pt'>Resource(JP_Practitioner<span
  style='mso-spacerun:yes'>  </span>)</td>
  <td class=xl71 width=359 style='width:269pt'>requester要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby><ruby>者<span
  style='display:none'><rt>シャ </rt></span></ruby>のIDや<ruby>氏名<span
  style='display:none'><rt>シメイ </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>などが<ruby>必要<span
  style='display:none'><rt>ヒツヨウ </rt></span></ruby>な<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>にこのリソースに<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=91 style='height:45.0pt;width:68pt'>contained[+]</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=65 style='width:49pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl75 width=35 style='width:26pt'>0..1*</td>
  <td class=xl71 width=87 style='width:65pt'>Resource(JP_ServiceRequest<span
  style='mso-spacerun:yes'>  </span>)</td>
  <td class=xl71 width=359 style='width:269pt'>basedOn要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。</td>
  <td class=xl71 width=36 style='width:27pt'>　</td>
  <td class=xl73 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl166 width=91 style='height:30.0pt;border-top:none;
  width:68pt'>extension[*]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>　</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl347 width=35 style='border-top:none;border-left:none;width:26pt'>0..*</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl350 width=359 style='border-top:none;border-left:none;width:269pt'>電子カルテ情報サービスでは、<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby><ruby>発行<span
  style='display:none'><rt>ハッコウ </rt></span></ruby>した<ruby>医療<span
  style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>や<ruby>診療科<span
  style='display:none'><rt>シンリョウカ </rt></span></ruby><ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する<ruby>拡張<span
  style='display:none'><rt>カクチョウ </rt></span></ruby>。</td>
  <td class=xl146 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl329 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl166 width=91 style='height:20.0pt;border-top:none;
  width:68pt'>extension[+]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>　</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl347 width=35 style='border-top:none;border-left:none;width:26pt'>0..1</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>Extension</td>
  <td class=xl346 width=359 style='border-left:none;width:269pt'>　</td>
  <td class=xl89 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl164 width=195 style='border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl331 width=91 style='height:90.0pt;width:68pt'>extension[=]</td>
  <td class=xl332 width=83 style='border-left:none;width:62pt'>url</td>
  <td class=xl332 width=65 style='border-left:none;width:49pt'>　</td>
  <td class=xl332 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl332 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl348 width=35 style='border-left:none;width:26pt'>1..1</td>
  <td class=xl332 width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl330 width=359 style='border-left:none;width:269pt'><ruby>本<span
  style='display:none'><rt>ホｎ </rt></span></ruby><ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby><ruby>発行<span
  style='display:none'><rt>ハッコウ </rt></span></ruby>した<ruby>医療<span
  style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby>の<ruby>識別<span
  style='display:none'><rt>シキベツ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>を記述するために使用する拡張「eCS_InstitutionNumber」。<br>
    本<ruby>情<span style='display:none'><rt>ホｎ </rt></span></ruby><ruby>報は<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>、ServiceRequestの要<ruby>素と<span
  style='display:none'><rt>ヨウソ </rt></span></ruby>して記<ruby>述す<span
  style='display:none'><rt>キジュツ </rt></span></ruby>ることも可<ruby>能で<span
  style='display:none'><rt>カノウ </rt></span></ruby>あるが、その場<ruby>合も<span
  style='display:none'><rt>バアイ </rt></span></ruby>この拡<ruby>張<span
  style='display:none'><rt>カクチョウ </rt></span></ruby>で記<ruby>述す<span
  style='display:none'><rt>キジュツ </rt></span></ruby>ることとする。<br>
    <font class="font13">電子カルテ情報サービスでは、この</font><ruby><font class="font13">拡張</font><span
  style='display:none'><rt>カクチョウ </rt></span></ruby><font class="font13">による</font><ruby><font
  class="font13">記述</font><span style='display:none'><rt>キジュツ </rt></span></ruby><font
  class="font13">は</font><ruby><font class="font13">必須</font><span
  style='display:none'><rt>ヒッス </rt></span></ruby><font class="font13">。</font></td>
  <td class=xl147 width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl296 width=195 style='border-left:none;width:146pt'><a
  href="http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber"
  target="_parent"><span style='color:black;font-size:10.0pt;font-family:"ＭＳ 明朝";
  mso-generic-font-family:auto;mso-font-charset:128'>http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber</span></a></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl166 width=91 style='height:30.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueIdentifier</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl347 width=35 style='border-top:none;border-left:none;width:26pt'>1..1</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>Identifier</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>医療<span
  style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby><ruby>識別<span
  style='display:none'><rt>シキベツ </rt></span></ruby><ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>。</td>
  <td class=xl89 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl160 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl166 width=91 style='height:45.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueIdentifier</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>system</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl347 width=35 style='border-top:none;border-left:none;width:26pt'>1..1</td>
  <td class=xl332 width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>医療<span
  style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby>１０<ruby>桁<span
  style='display:none'><rt>ケタ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>を<ruby>示<span
  style='display:none'><rt>シメス </rt></span></ruby>すURL。</td>
  <td class=xl147 width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl309 width=195 style='border-top:none;border-left:none;width:146pt'><a
  href="http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
  target="_parent"><span style='font-size:10.0pt;font-family:"ＭＳ 明朝";
  mso-generic-font-family:auto;mso-font-charset:128'>http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no</span></a></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl200 width=91 style='height:31.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl79 width=83 style='border-top:none;border-left:none;width:62pt'>valueIdentifier</td>
  <td class=xl79 width=65 style='border-top:none;border-left:none;width:49pt'>value</td>
  <td class=xl79 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl79 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl349 width=35 style='border-top:none;border-left:none;width:26pt'>1..1</td>
  <td class=xl79 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl79 width=359 style='border-top:none;border-left:none;width:269pt'><ruby>医療機関１０桁番号。<span
  style='display:none'><rt>ケタ </rt></span></ruby></td>
  <td class=xl137 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>例示<span
  style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl170 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1318814790&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl333 width=91 style='height:30.0pt;border-top:none;
  width:68pt'>extension[+]</td>
  <td class=xl334 width=83 style='border-top:none;border-left:none;width:62pt'>　</td>
  <td class=xl334 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl334 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl334 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl335 width=35 style='border-top:none;border-left:none;width:26pt'>0..1</td>
  <td class=xl334 width=87 style='border-top:none;border-left:none;width:65pt'>Extension</td>
  <td class=xl336 width=359 style='border-top:none;border-left:none;width:269pt'>本情報を作成発行した診療科または<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby><ruby>発行<span
  style='display:none'><rt>ハッコウ </rt></span></ruby>者の診療科情報を記述するために使用する拡張「eCS_Department」。</td>
  <td class=xl148 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl337 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl331 width=91 style='height:45.0pt;width:68pt'>extension[=]</td>
  <td class=xl332 width=83 style='border-left:none;width:62pt'>url</td>
  <td class=xl332 width=65 style='border-left:none;width:49pt'>　</td>
  <td class=xl332 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl332 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl338 width=35 style='border-left:none;width:26pt'>1..1</td>
  <td class=xl332 width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl332 width=359 style='border-left:none;width:269pt'>診療科情報を記述するために使用する拡張を識別するURL。</td>
  <td class=xl147 width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl315 width=195 style='border-left:none;width:146pt'><a
  href="http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_Department"
  target="_parent"><span style='font-size:10.0pt;font-family:"ＭＳ 明朝";
  mso-generic-font-family:auto;mso-font-charset:128'>http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_Department</span></a></td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl166 width=91 style='height:31.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueCodeableConcept</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl339 width=35 style='border-top:none;border-left:none;width:26pt'>1..1</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>CodeableConcept</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>診療科情報。</td>
  <td class=xl89 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl160 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl166 width=91 style='height:31.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueCodeableConcept</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>coding</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl339 width=35 style='border-top:none;border-left:none;width:26pt'>0..1*</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>Coding</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>診療科のコード化記述。</td>
  <td class=xl95 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl160 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl166 width=91 style='height:45.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueCodeableConcept</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>coding</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>system</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl339 width=35 style='border-top:none;border-left:none;width:26pt'>0..1</td>
  <td class=xl332 width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI
  診療科コード表のURI。</td>
  <td class=xl95 width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl160 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl166 width=91 style='height:30.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueCodeableConcept</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>coding</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>code</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl339 width=35 style='border-top:none;border-left:none;width:26pt'>0..1</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI
  診療科コード。2<ruby>桁<span style='display:none'><rt>ケタ </rt></span></ruby>またh3桁コード。</td>
  <td class=xl89 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>例示<span
  style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl160 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;08&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl166 width=91 style='height:30.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl78 width=83 style='border-top:none;border-left:none;width:62pt'>valueCodeableConcept</td>
  <td class=xl78 width=65 style='border-top:none;border-left:none;width:49pt'>coding</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>display</td>
  <td class=xl78 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl339 width=35 style='border-top:none;border-left:none;width:26pt'>0..1</td>
  <td class=xl78 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>JAMI
  診療科コードでのコードに対応する表示名。</td>
  <td class=xl89 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl160 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<ruby>循環器科<span
  style='display:none'><rt>ジュンカンキカ </rt></span></ruby>&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl200 width=91 style='height:31.0pt;border-top:none;
  width:68pt'>extension[=]</td>
  <td class=xl79 width=83 style='border-top:none;border-left:none;width:62pt'>valueCodeableConcept</td>
  <td class=xl79 width=65 style='border-top:none;border-left:none;width:49pt'>text</td>
  <td class=xl79 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl79 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl340 width=35 style='border-top:none;border-left:none;width:26pt'>1..1</td>
  <td class=xl79 width=87 style='border-top:none;border-left:none;width:65pt'>string</td>
  <td class=xl79 width=359 style='border-top:none;border-left:none;width:269pt'>コード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>の<ruby>有無<span
  style='display:none'><rt>ウム </rt></span></ruby>に<ruby>関<span
  style='display:none'><rt>カカワラズ </rt></span></ruby>わらず、<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>したい<ruby>診療科<span
  style='display:none'><rt>シンリョウカ </rt></span></ruby><ruby>名<span
  style='display:none'><rt>メイ </rt></span></ruby>の<ruby>文字列<span
  style='display:none'><rt>モジレツ </rt></span></ruby>。</td>
  <td class=xl137 width=36 style='border-top:none;border-left:none;width:27pt'><ruby>例示<span
  style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl170 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<ruby>循環器<span
  style='display:none'><rt>ジュンカンキ </rt></span></ruby><ruby>診療<span
  style='display:none'><rt>シンリョウ </rt></span></ruby><ruby>科<span
  style='display:none'><rt>カ </rt></span></ruby>&quot;</td>
 </tr>
 <tr class=xl117 height=81 style='height:61.0pt'>
  <td height=81 class=xl328 width=91 style='height:61.0pt;border-top:none;
  width:68pt'>identifier[*]</td>
  <td class=xl108 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl108 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl108 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl108 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl109 width=35 style='border-top:none;width:26pt'>1..*</td>
  <td class=xl108 width=87 style='border-top:none;width:65pt'>Identifier</td>
  <td class=xl96 width=359 style='width:269pt'><br>
    このリソース<ruby>情報<span style='display:none'><rt>ジョウホウ </rt></span></ruby>の<ruby>識別<span
  style='display:none'><rt>シキベツ </rt></span></ruby>ID、および<ruby>必要<span
  style='display:none'><rt>ヒツヨウ </rt></span></ruby>であれば<ruby>処方箋<span
  style='display:none'><rt>ショホウセン </rt></span></ruby>における<ruby>剤<span
  style='display:none'><rt>ザイ </rt></span></ruby>グループ<ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>、<ruby>剤<span
  style='display:none'><rt>ザイ </rt></span></ruby>グループ<ruby>内<span
  style='display:none'><rt>&#127514;️</rt></span></ruby>の<ruby>順序<span
  style='display:none'><rt>ジュンジョ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>などを<ruby>格納<span
  style='display:none'><rt>カクノウ ソウトウ </rt></span></ruby>する。</td>
  <td class=xl108 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl129 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr class=xl171 height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>identifier[+]</td>
  <td class=xl80 width=83 style='width:62pt'>　</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl223 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>Identifier</td>
  <td class=xl351 width=359 style='border-left:none;width:269pt'>リソース一意識別ID。「診療情報・サマリー汎用リソース一意識別ID仕様」を参照のこと。</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl188 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl117 height=60 style='height:45.0pt'>
  <td height=60 class=xl326 width=91 style='height:45.0pt;width:68pt'>identifier[=]</td>
  <td class=xl83 width=83 style='width:62pt'>system</td>
  <td class=xl83 width=65 style='width:49pt'>　</td>
  <td class=xl83 width=57 style='width:43pt'>　</td>
  <td class=xl83 width=57 style='width:43pt'>　</td>
  <td class=xl374 width=35 style='width:26pt'>1..1</td>
  <td class=xl83 width=87 style='width:65pt'>uri</td>
  <td class=xl250 width=359 style='width:269pt'>「リソース一意識別ID」のsystem値を固定で設定する。</td>
  <td class=xl80 width=36 style='width:27pt'>固定値</td>
  <td class=xl305 width=195 style='width:146pt'><a
  href="http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
  target="_parent"><span style='color:black;font-size:10.0pt;text-decoration:
  none;font-family:"ＭＳ 明朝";mso-generic-font-family:auto;mso-font-charset:128'>http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier<ruby><font
  class="font8"><rt class=font8></rt></font></ruby></span></a></td>
 </tr>
 <tr class=xl117 height=81 style='height:61.0pt'>
  <td height=81 class=xl341 width=91 style='height:61.0pt;width:68pt'>identifier[=]</td>
  <td class=xl119 width=83 style='width:62pt'>value</td>
  <td class=xl119 width=65 style='width:49pt'>　</td>
  <td class=xl119 width=57 style='width:43pt'>　</td>
  <td class=xl119 width=57 style='width:43pt'>　</td>
  <td class=xl118 width=35 style='width:26pt'>1..1</td>
  <td class=xl119 width=87 style='width:65pt'>string</td>
  <td class=xl375 width=359 style='border-top:none;border-left:none;width:269pt'>「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=36 style='width:27pt'>例示</td>
  <td class=xl180 width=195 style='width:146pt'>&quot;http://sample.jp/fhir/1311234567/ehr2020/medicationRequest/0008363939-2021082603948-0101&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl328 width=91 style='height:30.0pt;width:68pt'>identifier[+]</td>
  <td class=xl106 width=83 style='width:62pt'>system</td>
  <td class=xl106 width=65 style='width:49pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl109 width=35 style='width:26pt'>1..1</td>
  <td class=xl106 width=87 style='width:65pt'>uri</td>
  <td class=xl106 width=359 style='width:269pt'>剤グループ（Rp）番号。剤グループ番号の名前空間を識別するURI。固定値。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl108 width=36 style='width:27pt'>固定値</td>
  <td class=xl126 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.81&quot;</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl341 width=91 style='height:61.0pt;width:68pt'>identifier[=]</td>
  <td class=xl120 width=83 style='width:62pt'>value</td>
  <td class=xl120 width=65 style='width:49pt'>　</td>
  <td class=xl120 width=57 style='width:43pt'>　</td>
  <td class=xl120 width=57 style='width:43pt'>　</td>
  <td class=xl118 width=35 style='width:26pt'>1..1</td>
  <td class=xl120 width=87 style='width:65pt'>string</td>
  <td class=xl120 width=359 style='width:269pt'>剤グループ番号。この<ruby>医薬品<span
  style='display:none'><rt class=font20>イヤクヒン </rt></span></ruby>が<ruby>処方箋<span
  style='display:none'><rt class=font20>ショホウセン </rt></span></ruby>の<ruby>中<span
  style='display:none'><rt class=font20>ナカ </rt></span></ruby>のひとつの<ruby>医薬品<span
  style='display:none'><rt class=font20>イヤクヒン </rt></span></ruby><ruby>情報<span
  style='display:none'><rt class=font20>ジョウホウ </rt></span></ruby>として<ruby>記述<span
  style='display:none'><rt class=font20>キジュツ </rt></span></ruby>されたのではない<ruby>場合<span
  style='display:none'><rt class=font20>バアイ </rt></span></ruby>や、<ruby>元<span
  style='display:none'><rt class=font20>モト </rt></span></ruby>の<ruby>処方箋<span
  style='display:none'><rt class=font20>ショホウセン </rt></span></ruby><ruby>内<span
  style='display:none'><rt class=font20>&#127514;️</rt></span></ruby>での<ruby>番号<span
  style='display:none'><rt class=font20>バンゴウ </rt></span></ruby>などを<ruby>必要<span
  style='display:none'><rt class=font20>ヒツヨウ </rt></span></ruby>としない場合には、<ruby>常<span
  style='display:none'><rt class=font20>ツネ </rt></span></ruby>に&quot;1&quot;を<ruby>設定<span
  style='display:none'><rt class=font20>セッテイ </rt></span></ruby>する。</td>
  <td class=xl119 width=36 style='width:27pt'>例示</td>
  <td class=xl130 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl328 width=91 style='height:30.0pt;width:68pt'>identifier[+]</td>
  <td class=xl106 width=83 style='width:62pt'>system</td>
  <td class=xl106 width=65 style='width:49pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl109 width=35 style='width:26pt'>1..1</td>
  <td class=xl106 width=87 style='width:65pt'>uri</td>
  <td class=xl106 width=359 style='width:269pt'>剤グループ内連番。剤グループ内番号の名前空間を識別するURI。固定値。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl108 width=36 style='width:27pt'>固定値</td>
  <td class=xl126 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.82&quot;</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl341 width=91 style='height:61.0pt;width:68pt'>identifier[=]</td>
  <td class=xl120 width=83 style='width:62pt'>value</td>
  <td class=xl120 width=65 style='width:49pt'>　</td>
  <td class=xl120 width=57 style='width:43pt'>　</td>
  <td class=xl120 width=57 style='width:43pt'>　</td>
  <td class=xl118 width=35 style='width:26pt'>1..1</td>
  <td class=xl120 width=87 style='width:65pt'>string</td>
  <td class=xl120 width=359 style='width:269pt'>剤グループ内連番。この医薬品が処方箋の中のひとつの医薬品情報として記述されたのではない場合や、元の処方箋内での剤グループ<ruby>内<span
  style='display:none'><rt>&#127514;️</rt></span></ruby>の番号などを必要としない場合には、常に&quot;1&quot;を設定する。</td>
  <td class=xl119 width=36 style='width:27pt'>例示</td>
  <td class=xl130 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=61 style='height:46.0pt'>
  <td height=61 class=xl342 width=91 style='height:46.0pt;width:68pt'>status</td>
  <td class=xl122 width=83 style='width:62pt'>　</td>
  <td class=xl122 width=65 style='width:49pt'>　</td>
  <td class=xl122 width=57 style='width:43pt'>　</td>
  <td class=xl122 width=57 style='width:43pt'>　</td>
  <td class=xl121 width=35 style='width:26pt'>1..1</td>
  <td class=xl122 width=87 style='width:65pt'>code</td>
  <td class=xl122 width=359 style='width:269pt'><ruby>一般<span style='display:
  none'><rt class=font20>イッパン </rt></span></ruby>に<ruby>処方<span
  style='display:none'><rt class=font20>ショホウ </rt></span></ruby><ruby>依頼<span
  style='display:none'><rt class=font20>イライ </rt></span></ruby><ruby>時<span
  style='display:none'><rt class=font20>ジ </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt class=font20>ジョウホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt class=font20>サクセイ </rt></span></ruby>した<ruby>時点<span
  style='display:none'><rt class=font20>ジテン </rt></span></ruby>では、その<ruby>調<span
  style='display:none'><rt class=font20>コウフ </rt></span></ruby>剤<ruby>が完<span
  style='display:none'><rt class=font20>カンリョウ </rt></span></ruby>了しているかどうかは不明であるが、交付<ruby>が完<span
  style='display:none'><rt class=font20>セッテイ </rt></span></ruby>了した処<ruby>方と<span
  style='display:none'><rt class=font20>チョウザイ </rt></span></ruby>し<ruby>て、<span
  style='display:none'><rt class=font20>カンリョウ </rt></span></ruby>&quot;completed&quot;
  <ruby>を<span style='display:none'><rt class=font20>フメイ </rt></span></ruby>固定で設定することとする。</td>
  <td class=xl123 width=36 style='width:27pt'>固定値</td>
  <td class=xl131 width=195 style='width:146pt'>&quot;completed&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl342 width=91 style='height:31.0pt;width:68pt'>intent</td>
  <td class=xl122 width=83 style='width:62pt'>　</td>
  <td class=xl122 width=65 style='width:49pt'>　</td>
  <td class=xl122 width=57 style='width:43pt'>　</td>
  <td class=xl122 width=57 style='width:43pt'>　</td>
  <td class=xl121 width=35 style='width:26pt'>1..1</td>
  <td class=xl122 width=87 style='width:65pt'>code</td>
  <td class=xl122 width=359 style='width:269pt'>投薬指示の意図。&quot;order&quot; を<ruby>固定<span
  style='display:none'><rt class=font20>コテイ </rt></span></ruby>で<ruby>設定<span
  style='display:none'><rt class=font20>セッテイ </rt></span></ruby>する。</td>
  <td class=xl123 width=36 style='width:27pt'>固定値</td>
  <td class=xl131 width=195 style='width:146pt'>&quot;order&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl325 width=91 style='height:30.0pt;width:68pt'>category[*]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl106 width=83 style='width:62pt'>　</td>
  <td class=xl106 width=65 style='width:49pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl110 width=35 style='width:26pt'>0..1<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl106 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl106 width=359 style='width:269pt'><ruby>薬剤<span style='display:
  none'><rt class=font20>ショホウ </rt></span></ruby><ruby>使用<span
  style='display:none'><rt class=font20>ハッコウ </rt></span></ruby><ruby>区分<span
  style='display:none'><rt class=font20>クブン </rt></span></ruby></td>
  <td class=xl106 width=36 style='width:27pt'>　</td>
  <td class=xl126 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl177 width=91 style='height:90.0pt;width:68pt'>category[+]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=83 style='width:62pt'>system</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl87 width=35 style='width:26pt'>1..1<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl80 width=359 style='width:269pt'><span
  style='mso-spacerun:yes'> </span>JP Core Medication Oral/External Category
  ValueSetとして、MERIT9コード：http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS、またはJHSP0007コード　http://jpfhir.jp/fhir/core/CodeSystem/JHSP0007　のいずれかを使用する。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS&quot;<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl177 width=91 style='height:75.0pt;width:68pt'>category[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=83 style='width:62pt'>code</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl87 width=35 style='width:26pt'>1..1<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=87 style='width:65pt'>string</td>
  <td class=xl80 width=359 style='width:269pt'>MERIT9コードから、OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）<br>
    JHSP0007コードから、BDP:持参薬処方　などのコード<ruby>部分<span style='display:none'><rt
  class=font20>ブブン </rt></span></ruby>（&quot;OHP&quot;など）を使用することができる。</td>
  <td class=xl83 width=36 style='width:27pt'>例示<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl132 width=195 style='width:146pt'>&quot;OHI&quot;</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl239 width=91 style='height:61.0pt;width:68pt'>category[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl101 width=83 style='width:62pt'>display<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl111 width=35 style='width:26pt'>0..1<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl101 width=87 style='width:65pt'>string</td>
  <td class=xl101 width=359 style='width:269pt'>コードに<ruby>対応<span
  style='display:none'><rt class=font20>タイオウ </rt></span></ruby>する<ruby>文字<span
  style='display:none'><rt class=font20>モジテレウ </rt></span></ruby><ruby>列<span
  style='display:none'><rt class=font20>レツ </rt></span></ruby><ruby>部分<span
  style='display:none'><rt class=font20>ブブン </rt></span></ruby>。（OHI:院内処方、OHO:院外処方、IHP:入院処方、DCG:退院時処方、ORD:定期処方、XTR:臨時処方、BDP:持参薬処方　の&quot;院内処方&quot;の<ruby>文字列<span
  style='display:none'><rt class=font20>モジレツ </rt></span></ruby>など）</td>
  <td class=xl96 width=36 style='width:27pt'>例示</td>
  <td class=xl133 width=195 style='width:146pt'>&quot;院内処方&quot;<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
 </tr>
 <tr height=120 style='height:90.0pt'>
  <td height=120 class=xl325 width=91 style='height:90.0pt;border-top:none;
  width:68pt'>medicationCodeableConcept</td>
  <td class=xl106 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl106 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl106 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl106 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl105 width=35 style='border-top:none;width:26pt'>1..1<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl106 width=87 style='border-top:none;width:65pt'>CodeableConcept</td>
  <td class=xl205 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品コードと医薬品名称。ひとつの
  必須のtext 要素と、複数の coding 要素を記述できる。本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず text
  要素に格納した上で、coding要素を繰り返すことでHOT9やYJコードなど複数のコード体系で医薬品コードを並記することが可能。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl106 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl126 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>medicationCodeableConcept</td>
  <td class=xl80 width=83 style='width:62pt'>coding[*]<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>1..*</td>
  <td class=xl80 width=87 style='width:65pt'>Coding</td>
  <td class=xl351 width=359 style='border-top:none;border-left:none;width:269pt'>コード化した情報を
  1 個以上の coding要素に記述する。<ruby><font class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=340 style='height:255.0pt'>
  <td height=340 class=xl177 width=91 style='height:255.0pt;width:68pt'>medicationCodeableConcept</td>
  <td class=xl80 width=83 style='width:62pt'>coding[+]<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>system</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl197 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品コードを識別するURI。<br>
    YJ: &quot;urn:oid:1.2.392.100495.20.1.73&quot;<br>
    <ruby>HO<span style='display:none'><rt class=font20>ショホウ </rt></span></ruby>T9:<span
  style='mso-spacerun:yes'>  </span>&quot;urn:oid:1.2.<ruby>3<span
  style='display:none'><rt class=font20>チ </rt></span></ruby>92.200119.4.403.1&quot;<br>
    HOT7:<span style='mso-spacerun:yes'> 
  </span>&quot;urn:oid:1.2.392.200119.4.403.2&quot;　(HOT9の末尾２桁である販社コードが不明の<ruby>場合<span
  style='display:none'><rt class=font20>ハンシャ </rt></span></ruby>に限る)<br>
    厚労<ruby>省一<span style='display:none'><rt class=font20>バアイ </rt></span></ruby><ruby>般名<span
  style='display:none'><rt class=font20>フメイ </rt></span></ruby>処方マスタコード:
  &quot;urn:oid:1.2.392.<ruby>10<span style='display:none'><rt class=font20>マツビ
  </rt></span></ruby>0495.20.1.81&quot;<br>
    標準コ<ruby>ー<span style='display:none'><rt class=font20>カギル </rt></span></ruby>ドなし<ruby>コード<span
  style='display:none'><rt class=font20>コウロウショウ </rt></span></ruby>：<br>
   
  &quot;http://jpfhir.jp/fhir/eCS/CodeSystem/MedicationCodeNocoded_CS&quot;<br>
    <font class="font13">電子カルテ共有</font><ruby><font class="font13">サー</font><span
  style='display:none'><rt class=font20>シセツ </rt></span></ruby><ruby><font
  class="font13">ビス</font><span style='display:none'><rt class=font20>コユウ </rt></span></ruby><font
  class="font13">で使用す</font><ruby><font class="font13">る場</font><span
  style='display:none'><rt class=font20>ツイカ </rt></span></ruby><font
  class="font13">合に</font><ruby><font class="font13">は、</font><span
  style='display:none'><rt class=font20>バアイ </rt></span></ruby><font
  class="font13">YJコ</font><ruby><font class="font13">ード</font><span
  style='display:none'><rt class=font20>シセツ </rt></span></ruby><ruby><font
  class="font13">、ま</font><span style='display:none'><rt class=font20>コユウ </rt></span></ruby><font
  class="font13">たは厚</font><ruby><font class="font13">生労</font><span
  style='display:none'><rt class=font20>タイケイ チ </rt></span></ruby><font
  class="font13">働省一般名処方マスタコードのいずれ</font><ruby><font class="font13">かの</font><span
  style='display:none'><rt class=font20>ヒョウジュン </rt></span></ruby><font
  class="font13">system値を必須とする。</font><br>
    <font class="font16">これ以外に施設固有コードを追加する場合には、施設固有コード体系のsystem値は、&quot;http://j</font><ruby><font
  class="font16">pf</font><span style='display:none'><rt class=font20>シヨウ </rt></span></ruby><font
  class="font16">hir.jp/fhir/eCS/CodeSystem/DrugCode/医療機関10桁コード&quot;を使用すること。</font></td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.200119.4.403.1&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>medicationCodeableConcept</td>
  <td class=xl80 width=83 style='width:62pt'>coding[=]<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>code</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>code</td>
  <td class=xl80 width=359 style='width:269pt'>医薬品コード。<ruby>上記<span
  style='display:none'><rt class=font20>ジョウキ </rt></span></ruby>のコード<ruby>表<span
  style='display:none'><rt class=font20>ヒョウ </rt></span></ruby>から<ruby>選択<span
  style='display:none'><rt class=font20>センタク </rt></span></ruby>したコード。<br>
    <ruby>標準<span style='display:none'><rt class=font20>ヒョウジュン </rt></span></ruby>コードなしのコードを<ruby>使<span
  style='display:none'><rt class=font20>ツカウ </rt></span></ruby>う<ruby>場合<span
  style='display:none'><rt class=font20>バアイ </rt></span></ruby>には、&quot;NOCODED&quot;を<ruby>設定<span
  style='display:none'><rt class=font20>セッテイ </rt></span></ruby>する。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;103831601&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl186 width=91 style='height:60.0pt;border-top:none;
  width:68pt'>medicationCodeableConcept</td>
  <td class=xl114 width=83 style='border-top:none;width:62pt'>coding[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl114 width=65 style='border-top:none;width:49pt'>display</td>
  <td class=xl114 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl114 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl113 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl114 width=87 style='border-top:none;width:65pt'>string</td>
  <td class=xl78 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品名称。コード表におけるコードに対応する表示文字列。.text要素とは異なる文字列となることがある。<br>
    標準コードなしのコードを使う場合には、&quot;標準コードなし&quot;を設定する。<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl115 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl134 width=195 style='border-top:none;width:146pt'>&quot;カルボシステイン錠２５０ｍｇ&quot;</td>
 </tr>
 <tr height=61 style='height:46.0pt'>
  <td height=61 class=xl239 width=91 style='height:46.0pt;width:68pt'>medicationCodeableConcept</td>
  <td class=xl101 width=83 style='width:62pt'>text</td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl112 width=35 style='width:26pt'>1..1</td>
  <td class=xl101 width=87 style='width:65pt'>string</td>
  <td class=xl321 width=359 style='border-left:none;width:269pt'>医薬品名称。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず<ruby>設定<span
  style='display:none'><rt class=font20>セッテイ </rt></span></ruby>する。</td>
  <td class=xl96 width=36 style='width:27pt'><a name="_ftnref1">例示</a></td>
  <td class=xl133 width=195 style='width:146pt'>&quot;カルボシステイン錠２５０ｍｇ&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl70 width=91 style='height:45.0pt;width:68pt'>subject</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=65 style='width:49pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=35 style='width:26pt'>1..1</td>
  <td class=xl71 width=87 style='width:65pt'>Reference(JP_Patient )</td>
  <td class=xl71 width=359 style='width:269pt'><ruby>対象<span style='display:
  none'><rt>タイショウ </rt></span></ruby>となる患者のFHIRリソースへの参照。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
  <td class=xl80 width=36 style='width:27pt'>例示</td>
  <td class=xl180 width=195 style='width:146pt'>「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl70 width=91 style='height:60.0pt;width:68pt'>encounter</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=65 style='width:49pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl74 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Reference (JP_Encounter )</td>
  <td class=xl179 width=359 style='width:269pt'>この情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
  <td class=xl80 width=36 style='width:27pt'>例示</td>
  <td class=xl180 width=195 style='width:146pt'>「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
 </tr>
 <tr height=61 style='height:46.0pt'>
  <td height=61 class=xl70 width=91 style='height:46.0pt;width:68pt'>requester</td>
  <td class=xl71 width=83 style='width:62pt'>　</td>
  <td class=xl71 width=65 style='width:49pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl71 width=57 style='width:43pt'>　</td>
  <td class=xl357 width=35 style='width:26pt'>0..1</td>
  <td class=xl71 width=87 style='width:65pt'>Reference(JP_Practitioner )</td>
  <td class=xl71 width=359 style='width:269pt'>処方者<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>。この<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby>した<ruby>医療者<span
  style='display:none'><rt>イリョウシャ </rt></span></ruby>の情報への参照。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
  <td class=xl80 width=36 style='width:27pt'>例示</td>
  <td class=xl180 width=195 style='width:146pt'>「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl324 width=91 style='height:31.0pt;width:68pt'>authoredOn</td>
  <td class=xl104 width=83 style='width:62pt'>　</td>
  <td class=xl104 width=65 style='width:49pt'>　</td>
  <td class=xl104 width=57 style='width:43pt'>　</td>
  <td class=xl104 width=57 style='width:43pt'>　</td>
  <td class=xl103 width=35 style='width:26pt'>1..1<ruby><font class="font8"><rt
  class=font8></rt></font></ruby></td>
  <td class=xl104 width=87 style='width:65pt'>dateTime</td>
  <td class=xl104 width=359 style='width:269pt'>処方指示が最初に作成された日時。秒の精度まで記録する。タイムゾーンも付与しなければならない。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl97 width=36 style='width:27pt'>例示</td>
  <td class=xl135 width=195 style='width:146pt'>&quot;2020-08-21T12:28:17+09:00&quot;</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl342 width=91 style='height:61.0pt;border-top:none;
  width:68pt'>basedOn</td>
  <td class=xl122 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl122 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl122 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl122 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl356 width=35 style='border-top:none;width:26pt'>0..1</td>
  <td class=xl122 width=87 style='border-top:none;width:65pt'>Reference(JP_ServiceRequest)</td>
  <td class=xl122 width=359 style='border-top:none;width:269pt'><ruby>元<span
  style='display:none'><rt>モト </rt></span></ruby>の<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>オーダ情報。処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
  <td class=xl80 width=36 style='width:27pt'>例示</td>
  <td class=xl180 width=195 style='width:146pt'>「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
 </tr>
 <tr height=260 style='height:195.0pt'>
  <td height=260 class=xl325 width=91 style='height:195.0pt;width:68pt'>note[*]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl106 width=83 style='width:62pt'>　</td>
  <td class=xl106 width=65 style='width:49pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl142 width=35 style='width:26pt'>0..1*<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl106 width=87 style='width:65pt'>Annotation</td>
  <td class=xl106 width=359 style='width:269pt'>薬剤単位の備考。単一の薬剤に対する調剤者に対する指示は、本要素ではなく、MedicationRequestリソースのdispenseRequest要素に対して本文書で定義した拡張「InstructionForDispense」（http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense）を使用する。<br>
    患者に対する補足指示や注意や、不均等投与指示などは、
  MedicationRequestリソースのdosageInstruction.additionalInstructionで記述する。<br>
    本要素は、それらでは伝えられない薬剤単位の備考や指示を記述する。このよ<ruby>うな<span style='display:none'><rt
  class=font20>ジョウホウ </rt></span></ruby>情<ruby>報が<span style='display:none'><rt
  class=font20>ソンザイ </rt></span></ruby>存在<ruby>する<span style='display:none'><rt
  class=font20>バアイ </rt></span></ruby>場合に<ruby>は<span style='display:none'><rt
  class=font20>ホン </rt></span></ruby><ruby>、本<span style='display:none'><rt
  class=font20>ヨウソ </rt></span></ruby>要<ruby>素に<span style='display:none'><rt
  class=font20>キジュツ </rt></span></ruby>記述するこ<ruby>とが<span style='display:none'><rt
  class=font20>スイショウ </rt></span></ruby>推奨される。</td>
  <td class=xl106 width=36 style='width:27pt'>　</td>
  <td class=xl126 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=81 style='height:61.0pt'>
  <td height=81 class=xl239 width=91 style='height:61.0pt;width:68pt'>note[+]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl101 width=83 style='width:62pt'>text</td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl100 width=35 style='width:26pt'>1..1</td>
  <td class=xl101 width=87 style='width:65pt'>markdown</td>
  <td class=xl101 width=359 style='width:269pt'>備考の文字列。markdown記法ができる。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl96 width=36 style='width:27pt'>例示</td>
  <td class=xl133 width=195 style='width:146pt'>&quot;4月1日から4日間投与。2週間休薬後、4月19日から4日間投与。患者に書面にて説明済み。&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl324 width=91 style='height:31.0pt;border-top:none;
  width:68pt'>dosageInstruction[*]<ruby><font class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl104 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl104 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl104 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl104 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl103 width=35 style='border-top:none;width:26pt'>1..*<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl104 width=87 style='border-top:none;width:65pt'>Dosage</td>
  <td class=xl104 width=359 style='border-top:none;width:269pt'>用法や投与量を含む処方指示。表「dosageInstructionTable」を参照のこと。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl104 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl135 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl342 width=91 style='height:31.0pt;border-top:none;
  width:68pt'>dispenseRequest</td>
  <td class=xl122 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl122 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl122 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl122 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl121 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl122 width=87 style='border-top:none;width:65pt'>BackboneElement</td>
  <td class=xl122 width=359 style='border-top:none;width:269pt'>調剤（<ruby>薬局<span
  style='display:none'><rt>ヤッキョク </rt></span></ruby>での<ruby>払<span
  style='display:none'><rt>ハライ </rt></span></ruby>い<ruby>出<span
  style='display:none'><rt>ダシ </rt></span></ruby>し<ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>）情報</td>
  <td class=xl122 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl131 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl342 width=91 style='height:31.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl122 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl122 width=65 style='width:49pt'>　</td>
  <td class=xl122 width=57 style='width:43pt'>　</td>
  <td class=xl122 width=57 style='width:43pt'>　</td>
  <td class=xl143 width=35 style='width:26pt'>0..*</td>
  <td class=xl122 width=87 style='width:65pt'>Extension</td>
  <td class=xl122 width=359 style='width:269pt'>この薬剤に<ruby>対<span
  style='display:none'><rt class=font20>タイスル </rt></span></ruby>する調剤指示や<ruby>屯用<span
  style='display:none'><rt class=font20>トンヨウ </rt></span></ruby><ruby>回数<span
  style='display:none'><rt class=font20>カイスウ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt class=font20>シジ </rt></span></ruby>などを表す拡張。</td>
  <td class=xl122 width=36 style='width:27pt'>　</td>
  <td class=xl131 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl325 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl106 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl106 width=65 style='width:49pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=57 style='width:43pt'>　</td>
  <td class=xl142 width=35 style='width:26pt'>0..*</td>
  <td class=xl106 width=87 style='width:65pt'>Extension</td>
  <td class=xl106 width=359 style='width:269pt'>この薬剤に対する調剤指示を表す拡張「InstructionForDispense」。</td>
  <td class=xl106 width=36 style='width:27pt'>　</td>
  <td class=xl126 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=100 style='height:75.0pt'>
  <td height=100 class=xl177 width=91 style='height:75.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>url</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl80 width=359 style='width:269pt'>この薬剤に対する調剤指示<ruby>を表<span
  style='display:none'><rt class=font20>シテイ </rt></span></ruby>現する拡張を<ruby>識別<span
  style='display:none'><rt class=font20>シキベツ </rt></span></ruby>するURL。</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRe<br>
    quest_DispenseRequest_InstructionForDispense&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl80 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>テキスト<ruby>表現<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>。</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl80 width=57 style='width:43pt'>coding</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>0..*</td>
  <td class=xl80 width=87 style='width:65pt'>Coding</td>
  <td class=xl80 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby><ruby>表現<span style='display:
  none'><rt>ヒョウゲン </rt></span></ruby>。</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl177 width=91 style='height:60.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl80 width=57 style='width:43pt'>coding</td>
  <td class=xl80 width=57 style='width:43pt'>system</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>url</td>
  <td class=xl80 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>のコードsystem<ruby>値<span
  style='display:none'><rt>チ </rt></span></ruby>。<ruby>施設<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>固<ruby>有コ<span
  style='display:none'><rt>ヒッス </rt></span></ruby>ードを使用する場合には、&quot;http://jpfhir.jp/fhir/clins/CodeSystem/DrugDispensePreparationMethod/医療機関10桁コード&quot;を設定する。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>http://jami.jp/CodeSystem/DrugDispensePreparationMethod</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl80 width=57 style='width:43pt'>coding</td>
  <td class=xl80 width=57 style='width:43pt'>code</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>string</td>
  <td class=xl80 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ ヒョウゲン ヒッス </rt></span></ruby>のコード。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;C&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl80 width=57 style='width:43pt'>coding</td>
  <td class=xl80 width=57 style='width:43pt'>displpay</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>string</td>
  <td class=xl80 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>のコードに<ruby>対応<span
  style='display:none'><rt>タイオウ </rt></span></ruby>する<ruby>表示<span
  style='display:none'><rt>ヒョウジ </rt></span></ruby><ruby>文字列<span
  style='display:none'><rt>モジレツ ヒョウゲン ヒッス </rt></span></ruby>。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;<ruby>粉砕<span
  style='display:none'><rt>フンサイ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>&quot;</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl244 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl120 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl120 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl120 width=57 style='width:43pt'>text</td>
  <td class=xl120 width=57 style='width:43pt'>text</td>
  <td class=xl245 width=35 style='width:26pt'>1..1</td>
  <td class=xl120 width=87 style='width:65pt'>string</td>
  <td class=xl120 width=359 style='width:269pt'>この薬剤に対する調剤指示のテキスト<ruby>表現<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>。コード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>するかどうかによらず<ruby>必須<span
  style='display:none'><rt>ヒッス </rt></span></ruby>。</td>
  <td class=xl119 width=36 style='width:27pt'>例示</td>
  <td class=xl130 width=195 style='width:146pt'>&quot;嚥下障害のため、粉砕のこと&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl186 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl114 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl114 width=65 style='width:49pt'>　</td>
  <td class=xl114 width=57 style='width:43pt'>　</td>
  <td class=xl114 width=57 style='width:43pt'>　</td>
  <td class=xl255 width=35 style='width:26pt'>0..1*</td>
  <td class=xl114 width=87 style='width:65pt'>Extension</td>
  <td class=xl114 width=359 style='width:269pt'>頓用回数を表現する拡張「ExpectedRepeatCount」。</td>
  <td class=xl114 width=36 style='width:27pt'>　</td>
  <td class=xl134 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=65 style='width:49pt'>url</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl80 width=359 style='width:269pt'>頓用回数を表現する拡張を<ruby>識別<span
  style='display:none'><rt class=font20>シテイ </rt></span></ruby>するURL。</td>
  <td class=xl83 width=36 style='width:27pt'>固定<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl343 width=195 style='width:146pt'><a
  href="http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount"
  target="_parent"><span style='font-size:10.0pt;font-family:"ＭＳ 明朝";
  mso-generic-font-family:auto;mso-font-charset:128'>http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount</span></a></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl186 width=91 style='height:30.0pt;border-top:none;
  width:68pt'>dispenseRequest</td>
  <td class=xl114 width=83 style='border-top:none;width:62pt'>extension[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl114 width=65 style='border-top:none;width:49pt'>valueInteger</td>
  <td class=xl114 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl114 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl255 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl114 width=87 style='border-top:none;width:65pt'>integer</td>
  <td class=xl114 width=359 style='border-top:none;width:269pt'>頓用回数。値は例示。</td>
  <td class=xl115 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl134 width=195 style='border-top:none;width:146pt'>5</td>
 </tr>
 <tr height=60 style='height:45.0pt'>
  <td height=60 class=xl177 width=91 style='height:45.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>quantity</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>0..1</td>
  <td class=xl80 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl80 width=359 style='width:269pt'>調剤量。<ruby>内服<span
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
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>quantity</td>
  <td class=xl80 width=65 style='width:49pt'>value</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>decimal</td>
  <td class=xl80 width=359 style='width:269pt'>調剤量。値は例示。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>21</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>quantity</td>
  <td class=xl80 width=65 style='width:49pt'>unit</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>string</td>
  <td class=xl80 width=359 style='width:269pt'>単位文字列。値は例示。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;錠&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>quantity</td>
  <td class=xl80 width=65 style='width:49pt'>system</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl80 width=359 style='width:269pt'>医薬品単位略号を識別するURL。固定値。</td>
  <td class=xl83 width=36 style='width:27pt'>固定<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl132 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.101&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>quantity</td>
  <td class=xl80 width=65 style='width:49pt'>code</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>code</td>
  <td class=xl80 width=359 style='width:269pt'>医薬品単位略号。値は例示。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>0..1</td>
  <td class=xl80 width=87 style='width:65pt'>Duration</td>
  <td class=xl80 width=359 style='width:269pt'>調剤日数</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl80 width=65 style='width:49pt'>value</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>decimal</td>
  <td class=xl80 width=359 style='width:269pt'>調剤日数。値は例示。</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>7</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl80 width=65 style='width:49pt'>unit</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>string</td>
  <td class=xl80 width=359 style='width:269pt'>調剤日数の単位。「日」<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl83 width=36 style='width:27pt'>固定<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl136 width=195 style='width:146pt'><font class="font16">&quot;</font><font
  class="font11">日&quot;</font></td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl80 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl80 width=65 style='width:49pt'>system</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl80 width=359 style='width:269pt'>UCUM単位コードを識別するURI。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl83 width=36 style='width:27pt'>固定<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl132 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl239 width=91 style='height:31.0pt;width:68pt'>dispenseRequest</td>
  <td class=xl101 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl101 width=65 style='width:49pt'>code</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl100 width=35 style='width:26pt'>1..1</td>
  <td class=xl101 width=87 style='width:65pt'>code</td>
  <td class=xl101 width=359 style='width:269pt'>「日」を表すUCUM単位コード。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl96 width=36 style='width:27pt'>固定<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl133 width=195 style='width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>substitution</td>
  <td class=xl80 width=83 style='width:62pt'>　</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>0..1</td>
  <td class=xl80 width=87 style='width:65pt'>BackboneElement</td>
  <td class=xl80 width=359 style='width:269pt'>後発医薬品への変更可否情報。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>substitution</td>
  <td class=xl80 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl80 width=65 style='width:49pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl80 width=359 style='width:269pt'>　</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>substitution</td>
  <td class=xl80 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl80 width=65 style='width:49pt'>coding[*]<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=35 style='width:26pt'>1..1*</td>
  <td class=xl80 width=87 style='width:65pt'>Coding</td>
  <td class=xl80 width=359 style='width:269pt'>後発品変更不可コード。</td>
  <td class=xl80 width=36 style='width:27pt'>　</td>
  <td class=xl132 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=40 style='height:30.0pt'>
  <td height=40 class=xl177 width=91 style='height:30.0pt;width:68pt'>substitution</td>
  <td class=xl80 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl80 width=65 style='width:49pt'>coding[+]<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=57 style='width:43pt'>system</td>
  <td class=xl80 width=57 style='width:43pt'>system</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>uri</td>
  <td class=xl80 width=359 style='width:269pt'>後発品変更不可コードを識別するURI。<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl83 width=36 style='width:27pt'>固定<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl132 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.2.41&quot;</td>
 </tr>
 <tr height=80 style='height:60.0pt'>
  <td height=80 class=xl177 width=91 style='height:60.0pt;width:68pt'>substitution</td>
  <td class=xl80 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl80 width=65 style='width:49pt'>coding[=]<ruby><font class="font20"><rt
  class=font20></rt></font></ruby></td>
  <td class=xl80 width=57 style='width:43pt'>code</td>
  <td class=xl80 width=57 style='width:43pt'>code</td>
  <td class=xl81 width=35 style='width:26pt'>1..1</td>
  <td class=xl80 width=87 style='width:65pt'>code</td>
  <td class=xl80 width=359 style='width:269pt'>後発品変更不可コード。<br>
    1 : 後発品変更不可<br>
    2 : 剤形変更不可<br>
    3 : 含量規格変更不可</td>
  <td class=xl83 width=36 style='width:27pt'>例示</td>
  <td class=xl132 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=41 style='height:31.0pt'>
  <td height=41 class=xl239 width=91 style='height:31.0pt;width:68pt'>substitution</td>
  <td class=xl101 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl101 width=65 style='width:49pt'>coding[=]<ruby><font
  class="font20"><rt class=font20></rt></font></ruby></td>
  <td class=xl101 width=57 style='width:43pt'>display</td>
  <td class=xl101 width=57 style='width:43pt'>display</td>
  <td class=xl100 width=35 style='width:26pt'>0..1</td>
  <td class=xl101 width=87 style='width:65pt'>string</td>
  <td class=xl101 width=359 style='width:269pt'>値は例示。</td>
  <td class=xl96 width=36 style='width:27pt'>例示</td>
  <td class=xl133 width=195 style='width:146pt'>&quot;後発品変更不可&quot;</td>
 </tr>

</table>
