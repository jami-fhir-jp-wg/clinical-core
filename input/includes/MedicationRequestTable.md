<table border=0 cellpadding=0 cellspacing=0 width=1086 style='border-collapse:
 collapse;table-layout:fixed;width:814pt'>
 <col class=xl249 width=112 style='mso-width-source:userset;mso-width-alt:3072;
 width:84pt'>
 <col class=xl249 width=83 style='mso-width-source:userset;mso-width-alt:2267;
 width:62pt'>
 <col class=xl249 width=65 style='mso-width-source:userset;mso-width-alt:1792;
 width:49pt'>
 <col class=xl249 width=57 span=2 style='mso-width-source:userset;mso-width-alt:
 1572;width:43pt'>
 <col class=xl249 width=35 style='mso-width-source:userset;mso-width-alt:950;
 width:26pt'>
 <col class=xl249 width=87 style='mso-width-source:userset;mso-width-alt:2377;
 width:65pt'>
 <col class=xl249 width=359 style='mso-width-source:userset;mso-width-alt:9837;
 width:269pt'>
 <col class=xl249 width=36 style='mso-width-source:userset;mso-width-alt:987;
 width:27pt'>
 <col class=xl263 width=195 style='mso-width-source:userset;mso-width-alt:5339;
 width:146pt'>
 <tr height=28 style='height:21.0pt'>
  <td colspan=10 height=28 class=xl292 align=left width=1086 style='height:
  21.0pt;width:814pt'>多重度は、親要素が出現した場合の多重度。たとえばある子要素の多重度が1..1であっても親要素が出現しない場合にはその子要素は出現しない。逆に親要素が出現する場合には、この子要素は出現しなければならない。</td>
 </tr>
 <tr height=153 style='height:115.0pt'>
  <td height=153 class=xl251 width=112 style='height:115.0pt;width:84pt'>要素Lv1</td>
  <td class=xl97 width=83 style='width:62pt'>要素Lv2</td>
  <td class=xl97 width=65 style='width:49pt'>要素Lv3</td>
  <td class=xl97 width=57 style='width:43pt'>要素Lv4</td>
  <td class=xl97 width=57 style='width:43pt'>要素Lv5</td>
  <td class=xl97 width=35 style='width:26pt'>多重度</td>
  <td class=xl97 width=87 style='width:65pt'>型</td>
  <td class=xl97 width=359 style='width:269pt'>説明<ruby><font class="font9"><rt
  class=font9></rt></font></ruby></td>
  <td class=xl97 width=36 style='width:27pt'>固定値 <br>
    ／ 例 示</td>
  <td class=xl119 width=195 style='width:146pt'>値</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl252 width=112 style='height:58.0pt;width:84pt'>resourceType</td>
  <td class=xl99 width=83 style='width:62pt'>　</td>
  <td class=xl99 width=65 style='width:49pt'>　</td>
  <td class=xl99 width=57 style='width:43pt'>　</td>
  <td class=xl99 width=57 style='width:43pt'>　</td>
  <td class=xl98 width=35 style='width:26pt'>1..1<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl99 width=87 style='width:65pt'>string</td>
  <td class=xl99 width=359 style='width:269pt'>MedicationRequestリソースであることを示す。</td>
  <td class=xl92 width=36 style='width:27pt'>固定値</td>
  <td class=xl120 width=195 style='width:146pt'>&quot;MedicationRequest&quot;</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl253 width=112 style='height:20.0pt;border-top:none;
  width:84pt'>meta</td>
  <td class=xl101 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl101 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl101 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl101 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl100 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl101 width=87 style='border-top:none;width:65pt'>Meta</td>
  <td class=xl101 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl101 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl121 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=531 style='height:398.0pt'>
  <td height=531 class=xl254 width=112 style='height:398.0pt;width:84pt'>meta</td>
  <td class=xl81 width=83 style='width:62pt'>lastUpdated</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>instant</td>
  <td class=xl78 width=359 style='width:269pt'>最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz
  (例. 2015-02-07T13:28:17.239+09:00)<br>
   
  この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl122 width=195 style='width:146pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td height=152 class=xl254 width=112 style='height:114.0pt;width:84pt'>meta</td>
  <td class=xl81 width=83 style='width:62pt'>profile[+]</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=35 style='width:26pt'>1..*</td>
  <td class=xl78 width=87 style='width:65pt'>canonical(StructureDefinition)</td>
  <td class=xl72 width=359 style='width:269pt'>本プロファイルを識別するURLとバージョンを指定する。<br>
   
  http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|1　を設定する(|1
  は（U+007C）パイプ文字（縦棒文字）と数字の1でバージョン1を指定する)。</td>
  <td class=xl72 width=36 style='width:27pt'>固定値</td>
  <td class=xl74 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|1&quot;<br>
    </td>
 </tr>
 <tr class=xl112 height=27 style='height:20.0pt'>
  <td height=27 class=xl254 width=112 style='height:20.0pt;width:84pt'>meta</td>
  <td class=xl81 width=83 style='width:62pt'>tag[*]</td>
  <td class=xl81 width=65 style='width:49pt'>　</td>
  <td class=xl81 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=57 style='width:43pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>0..*</td>
  <td class=xl81 width=87 style='width:65pt'>Coding</td>
  <td class=xl81 width=359 style='width:269pt'><ruby>本リソースのタグ情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby></td>
  <td class=xl81 width=36 style='width:27pt'>　</td>
  <td class=xl122 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl112 height=76 style='height:57.0pt'>
  <td height=76 class=xl254 width=112 style='height:57.0pt;width:84pt'>meta</td>
  <td class=xl81 width=83 style='width:62pt'>tag[+]</td>
  <td class=xl81 width=65 style='width:49pt'>system</td>
  <td class=xl81 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=57 style='width:43pt'>　</td>
  <td class=xl83 width=35 style='width:26pt'>1..1</td>
  <td class=xl81 width=87 style='width:65pt'>uri</td>
  <td class=xl81 width=359 style='width:269pt'>電子カルテ情報共有サービスで長期保存フラグの設定する場合に使用。</td>
  <td class=xl81 width=36 style='width:27pt'>固定値</td>
  <td class=xl122 width=195 style='width:146pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&quot;</td>
 </tr>
 <tr class=xl112 height=77 style='height:58.0pt'>
  <td height=77 class=xl255 width=112 style='height:58.0pt;width:84pt'>meta</td>
  <td class=xl91 width=83 style='width:62pt'>tag[=]</td>
  <td class=xl91 width=65 style='width:49pt'>code</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl91 width=57 style='width:43pt'>　</td>
  <td class=xl102 width=35 style='width:26pt'>1..1</td>
  <td class=xl91 width=87 style='width:65pt'>code</td>
  <td class=xl91 width=359 style='width:269pt'>長期保存フラグ</td>
  <td class=xl91 width=36 style='width:27pt'>固定値</td>
  <td class=xl123 width=195 style='width:146pt'>&quot;LTS&quot;</td>
 </tr>
 <tr class=xl112 height=51 style='height:38.0pt'>
  <td height=51 class=xl256 width=112 style='height:38.0pt;border-top:none;
  width:84pt'>contained[*]</td>
  <td class=xl103 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl103 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl103 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl103 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>0..1</td>
  <td class=xl103 width=87 style='border-top:none;width:65pt'>　</td>
  <td class=xl103 width=359 style='border-top:none;width:269pt'>　</td>
  <td class=xl103 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl124 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=203 style='height:152.0pt'>
  <td height=203 class=xl71 width=112 style='height:152.0pt;width:84pt'>contained[+]</td>
  <td class=xl72 width=83 style='width:62pt'>　</td>
  <td class=xl72 width=65 style='width:49pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl82 width=35 style='width:26pt'>0..1</td>
  <td class=xl72 width=87 style='width:65pt'>Resource(JP_Encounter )</td>
  <td class=xl72 width=359 style='width:269pt'><br>
   
  入院外来区分情報。encounter要素から参照されるJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分）を記述して使用する。<font
  class="font14">電子カルテ情報サービスでは必須。</font></td>
  <td class=xl72 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td height=152 class=xl71 width=112 style='height:114.0pt;width:84pt'>contained[+]</td>
  <td class=xl72 width=83 style='width:62pt'>　</td>
  <td class=xl72 width=65 style='width:49pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl303 width=35 style='width:26pt'>0..1*</td>
  <td class=xl72 width=87 style='width:65pt'>Resource(JP_Practitioner<span
  style='mso-spacerun:yes'>  </span>)</td>
  <td class=xl72 width=359 style='width:269pt'>requester要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby><ruby>者<span
  style='display:none'><rt>シャ </rt></span></ruby>のIDや<ruby>氏名<span
  style='display:none'><rt>シメイ </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>などをこのリソースに<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する。<font class="font14">電子カルテ情報サービスでは必須。</font></td>
  <td class=xl72 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl71 width=112 style='height:76.0pt;width:84pt'>contained[+]</td>
  <td class=xl72 width=83 style='width:62pt'>　</td>
  <td class=xl72 width=65 style='width:49pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl304 width=35 style='width:26pt'>0..1*</td>
  <td class=xl72 width=87 style='width:65pt'>Resource(JP_ServiceRequest<span
  style='mso-spacerun:yes'>  </span>)</td>
  <td class=xl72 width=359 style='width:269pt'>basedOn要素から参照される<ruby>元<span
  style='display:none'><rt>モト </rt></span></ruby>のオーダ<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>したJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。</td>
  <td class=xl72 width=36 style='width:27pt'>　</td>
  <td class=xl74 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=47 style='mso-height-source:userset;height:35.0pt'>
  <td height=47 class=xl150 align=left width=112 style='height:35.0pt;
  border-top:none;width:84pt'>extension[*]</td>
  <td class=xl76 width=83 style='border-top:none;border-left:none;width:62pt'>　</td>
  <td class=xl76 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl152 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..*</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl266 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>電子カルテ情報サービスでは、<ruby>作成<span style='display:none'><rt>サクセイ </rt></span></ruby><ruby>発行<span
  style='display:none'><rt>ハッコウ </rt></span></ruby>した<ruby>医療<span
  style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>や<ruby>診療科<span
  style='display:none'><rt>シンリョウカ </rt></span></ruby><ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>を<ruby>記述<span
  style='display:none'><rt>キジュツ </rt></span></ruby>する<ruby>拡張<span
  style='display:none'><rt>カクチョウ </rt></span></ruby>。</td>
  <td class=xl138 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl257 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=37 style='mso-height-source:userset;height:28.0pt'>
  <td height=37 class=xl150 align=left width=112 style='height:28.0pt;
  border-top:none;width:84pt'>extension[+]</td>
  <td class=xl76 width=83 style='border-top:none;border-left:none;width:62pt'>　</td>
  <td class=xl76 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl152 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl76 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Extension</td>
  <td class=xl76 width=359 style='border-left:none;width:269pt'>　</td>
  <td class=xl85 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl148 width=195 style='border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=203 style='height:152.0pt'>
  <td height=203 class=xl259 align=left width=112 style='height:152.0pt;
  width:84pt'>extension[=]</td>
  <td class=xl258 align=left width=83 style='border-left:none;width:62pt'>url</td>
  <td class=xl258 width=65 style='border-left:none;width:49pt'>　</td>
  <td class=xl258 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl258 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl264 align=left width=35 style='border-left:none;width:26pt'>1..1</td>
  <td class=xl258 align=left width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl258 align=left width=359 style='border-left:none;width:269pt'><ruby>本<span
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
    <font class="font14">電子カルテ情報サービスでは、この</font><ruby><font class="font14">拡張</font><span
  style='display:none'><rt>カクチョウ </rt></span></ruby><font class="font14">による</font><ruby><font
  class="font14">記述</font><span style='display:none'><rt>キジュツ </rt></span></ruby><font
  class="font14">は</font><ruby><font class="font14">必須</font><span
  style='display:none'><rt>ヒッス </rt></span></ruby><font class="font14">。</font></td>
  <td class=xl139 align=left width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl237 width=195 style='border-left:none;width:146pt'>http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl150 align=left width=112 style='height:38.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueIdentifier</td>
  <td class=xl76 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl152 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>1..1</td>
  <td class=xl76 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Identifier</td>
  <td class=xl76 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><ruby>医療<span style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby><ruby>識別<span
  style='display:none'><rt>シキベツ </rt></span></ruby><ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>。</td>
  <td class=xl85 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl148 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl150 align=left width=112 style='height:57.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueIdentifier</td>
  <td class=xl76 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>system</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl152 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>1..1</td>
  <td class=xl258 align=left width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl76 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><ruby>医療<span style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカｎ </rt></span></ruby>１０<ruby>桁<span
  style='display:none'><rt>ケタ </rt></span></ruby><ruby>番号<span
  style='display:none'><rt>バンゴウ </rt></span></ruby>を<ruby>示<span
  style='display:none'><rt>シメス </rt></span></ruby>すURL。</td>
  <td class=xl139 align=left width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl236 align=left width=195 style='border-top:none;border-left:none;
  width:146pt'><a
  href="http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
  target="_parent">http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no</a></td>
 </tr>
 <tr height=52 style='height:39.0pt'>
  <td height=52 class=xl177 align=left width=112 style='height:39.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl77 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueIdentifier</td>
  <td class=xl77 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>value</td>
  <td class=xl77 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl77 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl265 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>1..1</td>
  <td class=xl77 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl77 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'><ruby>医療機関１０桁番号。<span style='display:none'><rt>ケタ </rt></span></ruby></td>
  <td class=xl130 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>例示<span style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl93 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;1318814790&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl230 align=left width=112 style='height:76.0pt;
  border-top:none;width:84pt'>extension[+]</td>
  <td class=xl89 width=83 style='border-top:none;border-left:none;width:62pt'>　</td>
  <td class=xl89 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl89 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl89 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl282 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl90 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Extension</td>
  <td class=xl139 align=left width=359 style='border-left:none;width:269pt'>本情報を作成発行した診療科または<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby><ruby>発行<span
  style='display:none'><rt>ハッコウ </rt></span></ruby>者の診療科情報を記述するために使用する拡張「eCS_Department」。<font
  class="font14">電子カルテ情報サービスでは、この拡張による記述は必須。</font></td>
  <td class=xl205 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl246 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl259 align=left width=112 style='height:76.0pt;
  width:84pt'>extension[=]</td>
  <td class=xl258 align=left width=83 style='border-left:none;width:62pt'>url</td>
  <td class=xl258 width=65 style='border-left:none;width:49pt'>　</td>
  <td class=xl258 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl258 width=57 style='border-left:none;width:43pt'>　</td>
  <td class=xl240 align=left width=35 style='border-left:none;width:26pt'>1..1</td>
  <td class=xl139 align=left width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl139 align=left width=359 style='border-left:none;width:269pt'>診療科情報を記述するために使用する拡張を識別するURL。</td>
  <td class=xl139 align=left width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl237 width=195 style='border-left:none;width:146pt'>http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_Department</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl150 align=left width=112 style='height:58.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueCodeableConcept</td>
  <td class=xl76 width=65 style='border-top:none;border-left:none;width:49pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl216 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>1..1</td>
  <td class=xl86 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>CodeableConcept</td>
  <td class=xl86 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>診療科情報。</td>
  <td class=xl202 width=36 style='border-top:none;border-left:none;width:27pt'>　</td>
  <td class=xl239 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl150 align=left width=112 style='height:58.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueCodeableConcept</td>
  <td class=xl76 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>coding</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl216 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1*</td>
  <td class=xl86 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>Coding</td>
  <td class=xl86 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>診療科のコード化記述。</td>
  <td class=xl90 width=36 style='border-left:none;width:27pt'>　</td>
  <td class=xl239 width=195 style='border-top:none;border-left:none;width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl150 align=left width=112 style='height:57.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueCodeableConcept</td>
  <td class=xl76 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>coding</td>
  <td class=xl76 align=left width=57 style='border-top:none;border-left:none;
  width:43pt'>system</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl216 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl139 align=left width=87 style='border-left:none;width:65pt'>uri</td>
  <td class=xl86 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI 診療科コード表のURI。</td>
  <td class=xl90 align=left width=36 style='border-left:none;width:27pt'><ruby>固定<span
  style='display:none'><rt>コテイ </rt></span></ruby></td>
  <td class=xl239 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment&quot;</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl150 align=left width=112 style='height:57.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueCodeableConcept</td>
  <td class=xl76 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>coding</td>
  <td class=xl76 align=left width=57 style='border-top:none;border-left:none;
  width:43pt'>code</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl216 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl86 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl86 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI 診療科コード。2<ruby>桁<span style='display:none'><rt>ケタ </rt></span></ruby>コード。</td>
  <td class=xl202 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>例示<span style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl239 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;08&quot;</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl150 align=left width=112 style='height:57.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl76 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueCodeableConcept</td>
  <td class=xl76 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>coding</td>
  <td class=xl76 align=left width=57 style='border-top:none;border-left:none;
  width:43pt'>display</td>
  <td class=xl76 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl216 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>0..1</td>
  <td class=xl86 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl86 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>JAMI 診療科コードでのコードに対応する表示名。</td>
  <td class=xl202 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>例示<span style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl239 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<ruby>循環器科<span
  style='display:none'><rt>ジュンカンキカ </rt></span></ruby>&quot;</td>
 </tr>
 <tr height=128 style='height:96.0pt'>
  <td height=128 class=xl177 align=left width=112 style='height:96.0pt;
  border-top:none;width:84pt'>extension[=]</td>
  <td class=xl77 align=left width=83 style='border-top:none;border-left:none;
  width:62pt'>valueCodeableConcept</td>
  <td class=xl77 align=left width=65 style='border-top:none;border-left:none;
  width:49pt'>text</td>
  <td class=xl77 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl77 width=57 style='border-top:none;border-left:none;width:43pt'>　</td>
  <td class=xl216 align=left width=35 style='border-top:none;border-left:none;
  width:26pt'>1..1</td>
  <td class=xl86 align=left width=87 style='border-top:none;border-left:none;
  width:65pt'>string</td>
  <td class=xl87 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>コード<ruby>化<span style='display:none'><rt>カ </rt></span></ruby>の<ruby>有無<span
  style='display:none'><rt>ウム </rt></span></ruby>に<ruby>関<span
  style='display:none'><rt>カカワラズ </rt></span></ruby>わらず、<ruby>当該<span
  style='display:none'><rt>トウガイ </rt></span></ruby><ruby>医療<span
  style='display:none'><rt>イリョウ </rt></span></ruby><ruby>機関<span
  style='display:none'><rt>キカン </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>システムのマスターで<ruby>定<span
  style='display:none'><rt>サダメラレタ </rt></span></ruby>められた<ruby>診<span
  style='display:none'><rt>モットモ </rt></span></ruby>療<ruby>科<span
  style='display:none'><rt>ナガイ </rt></span></ruby><ruby>名称<span
  style='display:none'><rt>メイショウ </rt></span></ruby><ruby>の文字<span
  style='display:none'><rt>シンリョウカ </rt></span></ruby><ruby>列<span
  style='display:none'><rt>メイ </rt></span></ruby>（<ruby>文字数<span
  style='display:none'><rt>モジスウ </rt></span></ruby>の<ruby>長<span
  style='display:none'><rt>ナガサ </rt></span></ruby>さにより<ruby>複数<span
  style='display:none'><rt>フクスウ </rt></span></ruby>ある<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>には、<ruby>最<span
  style='display:none'><rt>モットモ </rt></span></ruby>も<ruby>短<span
  style='display:none'><rt>ミジカイ </rt></span></ruby>い<ruby>文字列<span
  style='display:none'><rt>モジレツ </rt></span></ruby>）。<ruby><font class="font14">電子カ</font><span
  style='display:none'><rt>モジレツ </rt></span></ruby><font class="font14">ルテ情報サービスでは、この拡張による記述は必須。</font></td>
  <td class=xl202 align=left width=36 style='border-top:none;border-left:none;
  width:27pt'><ruby>例示<span style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl239 width=195 style='border-top:none;border-left:none;width:146pt'>&quot;<ruby>循<span
  style='display:none'><rt>ジュンカンキ </rt></span></ruby><ruby>内<span
  style='display:none'><rt>ナイ </rt></span></ruby>&quot;</td>
 </tr>
 <tr class=xl112 height=103 style='height:77.0pt'>
  <td height=103 class=xl256 width=112 style='height:77.0pt;border-top:none;
  width:84pt'>identifier[*]</td>
  <td class=xl103 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl103 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl103 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl103 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl104 width=35 style='width:26pt'>1..*</td>
  <td class=xl103 width=87 style='width:65pt'>Identifier</td>
  <td class=xl91 width=359 style='width:269pt'><br>
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
  <td class=xl103 width=36 style='width:27pt'>　</td>
  <td class=xl124 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl153 height=51 style='height:38.0pt'>
  <td height=51 class=xl159 width=112 style='height:38.0pt;width:84pt'>identifier[+]</td>
  <td class=xl78 width=83 style='width:62pt'>　</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl198 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>Identifier</td>
  <td class=xl174 width=359 style='border-left:none;width:269pt'>リソース一意識別ID。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl160 width=195 style='width:146pt'>　</td>
 </tr>
 <tr class=xl112 height=76 style='height:57.0pt'>
  <td height=76 class=xl254 width=112 style='height:57.0pt;width:84pt'>identifier[=]</td>
  <td class=xl81 width=83 style='width:62pt'>system</td>
  <td class=xl81 width=65 style='width:49pt'>　</td>
  <td class=xl81 width=57 style='width:43pt'>　</td>
  <td class=xl81 width=57 style='width:43pt'>　</td>
  <td class=xl279 width=35 style='width:26pt'>1..1</td>
  <td class=xl81 width=87 style='width:65pt'>uri</td>
  <td class=xl218 width=359 style='width:269pt'>「リソース一意識別ID」のsystem値を固定で設定する。</td>
  <td class=xl78 width=36 style='width:27pt'>固定値</td>
  <td class=xl75 width=195 style='width:146pt'><a
  href="http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
  target="_parent">http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier<ruby><font
  class="font9"><rt class=font9></rt></font></ruby></a></td>
 </tr>
 <tr class=xl112 height=128 style='height:96.0pt'>
  <td height=128 class=xl260 width=112 style='height:96.0pt;width:84pt'>identifier[=]</td>
  <td class=xl114 width=83 style='width:62pt'>value</td>
  <td class=xl114 width=65 style='width:49pt'>　</td>
  <td class=xl114 width=57 style='width:43pt'>　</td>
  <td class=xl114 width=57 style='width:43pt'>　</td>
  <td class=xl113 width=35 style='width:26pt'>1..1</td>
  <td class=xl114 width=87 style='width:65pt'>string</td>
  <td class=xl280 width=359 style='border-top:none;border-left:none;width:269pt'>「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl160 width=195 style='width:146pt'>&quot;http://sample.jp/fhir/1311234567/ehr2020/medicationRequest/0008363939-2021082603948-0101&quot;</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl256 width=112 style='height:57.0pt;width:84pt'>identifier[+]</td>
  <td class=xl101 width=83 style='width:62pt'>system</td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl104 width=35 style='width:26pt'>1..1</td>
  <td class=xl101 width=87 style='width:65pt'>uri</td>
  <td class=xl101 width=359 style='width:269pt'>剤グループ（Rp）番号。剤グループ番号の名前空間を識別するURI。固定値。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl103 width=36 style='width:27pt'>固定値</td>
  <td class=xl121 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber&quot;</td>
 </tr>
 <tr height=103 style='height:77.0pt'>
  <td height=103 class=xl260 width=112 style='height:77.0pt;width:84pt'>identifier[=]</td>
  <td class=xl115 width=83 style='width:62pt'>value</td>
  <td class=xl115 width=65 style='width:49pt'>　</td>
  <td class=xl115 width=57 style='width:43pt'>　</td>
  <td class=xl115 width=57 style='width:43pt'>　</td>
  <td class=xl113 width=35 style='width:26pt'>1..1</td>
  <td class=xl115 width=87 style='width:65pt'>string</td>
  <td class=xl115 width=359 style='width:269pt'>剤グループ番号。この<ruby>医薬品<span
  style='display:none'><rt class=font21>イヤクヒン </rt></span></ruby>が<ruby>処方箋<span
  style='display:none'><rt class=font21>ショホウセン </rt></span></ruby>の<ruby>中<span
  style='display:none'><rt class=font21>ナカ </rt></span></ruby>のひとつの<ruby>医薬品<span
  style='display:none'><rt class=font21>イヤクヒン </rt></span></ruby><ruby>情報<span
  style='display:none'><rt class=font21>ジョウホウ </rt></span></ruby>として<ruby>記述<span
  style='display:none'><rt class=font21>キジュツ </rt></span></ruby>されたのではない<ruby>場合<span
  style='display:none'><rt class=font21>バアイ </rt></span></ruby>や、<ruby>元<span
  style='display:none'><rt class=font21>モト </rt></span></ruby>の<ruby>処方箋<span
  style='display:none'><rt class=font21>ショホウセン </rt></span></ruby><ruby>内<span
  style='display:none'><rt class=font21>&#127514;️</rt></span></ruby>での<ruby>番号<span
  style='display:none'><rt class=font21>バンゴウ </rt></span></ruby>などを<ruby>必要<span
  style='display:none'><rt class=font21>ヒツヨウ </rt></span></ruby>としない場合には、<ruby>常<span
  style='display:none'><rt class=font21>ツネ </rt></span></ruby>に&quot;1&quot;を<ruby>設定<span
  style='display:none'><rt class=font21>セッテイ </rt></span></ruby>する。</td>
  <td class=xl114 width=36 style='width:27pt'>例示</td>
  <td class=xl125 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl256 width=112 style='height:57.0pt;width:84pt'>identifier[+]</td>
  <td class=xl101 width=83 style='width:62pt'>system</td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl104 width=35 style='width:26pt'>1..1</td>
  <td class=xl101 width=87 style='width:65pt'>uri</td>
  <td class=xl101 width=359 style='width:269pt'>剤グループ内連番。剤グループ内番号の名前空間を識別するURI。固定値。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl103 width=36 style='width:27pt'>固定値</td>
  <td class=xl121 width=195 style='width:146pt'>&quot;urn:oid:1.2.392.100495.20.3.82&quot;</td>
 </tr>
 <tr height=103 style='height:77.0pt'>
  <td height=103 class=xl260 width=112 style='height:77.0pt;width:84pt'>identifier[=]</td>
  <td class=xl115 width=83 style='width:62pt'>value</td>
  <td class=xl115 width=65 style='width:49pt'>　</td>
  <td class=xl115 width=57 style='width:43pt'>　</td>
  <td class=xl115 width=57 style='width:43pt'>　</td>
  <td class=xl113 width=35 style='width:26pt'>1..1</td>
  <td class=xl115 width=87 style='width:65pt'>string</td>
  <td class=xl115 width=359 style='width:269pt'>剤グループ内連番。この医薬品が処方箋の中のひとつの医薬品情報として記述されたのではない場合や、元の処方箋内での剤グループ<ruby>内<span
  style='display:none'><rt>&#127514;️</rt></span></ruby>の番号などを必要としない場合には、常に&quot;1&quot;を設定する。</td>
  <td class=xl114 width=36 style='width:27pt'>例示</td>
  <td class=xl125 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=103 style='height:77.0pt'>
  <td height=103 class=xl261 width=112 style='height:77.0pt;width:84pt'>status</td>
  <td class=xl117 width=83 style='width:62pt'>　</td>
  <td class=xl117 width=65 style='width:49pt'>　</td>
  <td class=xl117 width=57 style='width:43pt'>　</td>
  <td class=xl117 width=57 style='width:43pt'>　</td>
  <td class=xl116 width=35 style='width:26pt'>1..1</td>
  <td class=xl117 width=87 style='width:65pt'>code</td>
  <td class=xl117 width=359 style='width:269pt'><ruby>一般<span style='display:
  none'><rt class=font21>イッパン </rt></span></ruby>に<ruby>処方<span
  style='display:none'><rt class=font21>ショホウ </rt></span></ruby><ruby>依頼<span
  style='display:none'><rt class=font21>イライ </rt></span></ruby><ruby>時<span
  style='display:none'><rt class=font21>ジ </rt></span></ruby>の<ruby>情報<span
  style='display:none'><rt class=font21>ジョウホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt class=font21>サクセイ </rt></span></ruby>した<ruby>時点<span
  style='display:none'><rt class=font21>ジテン </rt></span></ruby>では、その<ruby>調<span
  style='display:none'><rt class=font21>コウフ </rt></span></ruby>剤<ruby>が完<span
  style='display:none'><rt class=font21>カンリョウ </rt></span></ruby>了しているかどうかは不明であるが、交付<ruby>が完<span
  style='display:none'><rt class=font21>セッテイ </rt></span></ruby>了した処<ruby>方と<span
  style='display:none'><rt class=font21>チョウザイ </rt></span></ruby>し<ruby>て、<span
  style='display:none'><rt class=font21>カンリョウ </rt></span></ruby>&quot;completed&quot;
  <ruby>を<span style='display:none'><rt class=font21>フメイ </rt></span></ruby>固定で設定することとする。</td>
  <td class=xl118 width=36 style='width:27pt'>固定値</td>
  <td class=xl126 width=195 style='width:146pt'>&quot;completed&quot;</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl261 width=112 style='height:58.0pt;width:84pt'>intent</td>
  <td class=xl117 width=83 style='width:62pt'>　</td>
  <td class=xl117 width=65 style='width:49pt'>　</td>
  <td class=xl117 width=57 style='width:43pt'>　</td>
  <td class=xl117 width=57 style='width:43pt'>　</td>
  <td class=xl116 width=35 style='width:26pt'>1..1</td>
  <td class=xl117 width=87 style='width:65pt'>code</td>
  <td class=xl117 width=359 style='width:269pt'>投薬指示の意図。&quot;order&quot; を<ruby>固定<span
  style='display:none'><rt class=font21>コテイ </rt></span></ruby>で<ruby>設定<span
  style='display:none'><rt class=font21>セッテイ </rt></span></ruby>する。</td>
  <td class=xl118 width=36 style='width:27pt'>固定値</td>
  <td class=xl126 width=195 style='width:146pt'>&quot;order&quot;</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl253 width=112 style='height:38.0pt;width:84pt'>category[*]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl101 width=83 style='width:62pt'>　</td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl105 width=35 style='width:26pt'>0..*<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl101 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl101 width=359 style='width:269pt'><ruby>薬剤<span style='display:
  none'><rt class=font21>ショホウ </rt></span></ruby><ruby>使用<span
  style='display:none'><rt class=font21>ハッコウ </rt></span></ruby><ruby>区分<span
  style='display:none'><rt class=font21>クブン </rt></span></ruby></td>
  <td class=xl101 width=36 style='width:27pt'>　</td>
  <td class=xl121 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl159 width=112 style='height:38.0pt;width:84pt'>category[+]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=83 style='width:62pt'>coding[*]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>　</td>
  <td class=xl78 width=87 style='width:65pt'>Coding</td>
  <td class=xl78 width=359 style='width:269pt'>薬剤使用区分のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=177 style='height:133.0pt'>
  <td height=177 class=xl159 width=112 style='height:133.0pt;width:84pt'>category[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=83 style='width:62pt'>coding[+]</td>
  <td class=xl78 width=65 style='width:49pt'>system</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>1..1<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl78 width=359 style='width:269pt'><span
  style='mso-spacerun:yes'> </span>JP Core Medication Oral/External Category
  ValueSetとして、MERIT9コード：http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS、またはJHSP0007コード　http://jpfhir.jp/fhir/core/CodeSystem/JHSP0007　のいずれかを使用する。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS&quot;<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
 </tr>
 <tr height=177 style='height:133.0pt'>
  <td height=177 class=xl159 width=112 style='height:133.0pt;width:84pt'>category[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=83 style='width:62pt'>　</td>
  <td class=xl78 width=65 style='width:49pt'>code</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>1..1<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=87 style='width:65pt'>string</td>
  <td class=xl78 width=359 style='width:269pt'>MERIT9コードから、OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）<br>
    JHSP0007コードから、BDP:持参薬処方　などのコード<ruby>部分<span style='display:none'><rt
  class=font21>ブブン </rt></span></ruby>（&quot;OHP&quot;など）を使用することができる。</td>
  <td class=xl81 width=36 style='width:27pt'>例示<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl127 width=195 style='width:146pt'>&quot;OHI&quot;</td>
 </tr>
 <tr height=103 style='height:77.0pt'>
  <td height=103 class=xl212 width=112 style='height:77.0pt;width:84pt'>category[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl96 width=83 style='width:62pt'>　</td>
  <td class=xl96 width=65 style='width:49pt'>display<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl106 width=35 style='width:26pt'>0..1<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl96 width=87 style='width:65pt'>string</td>
  <td class=xl96 width=359 style='width:269pt'>コードに<ruby>対応<span
  style='display:none'><rt class=font21>タイオウ </rt></span></ruby>する<ruby>文字<span
  style='display:none'><rt class=font21>モジテレウ </rt></span></ruby><ruby>列<span
  style='display:none'><rt class=font21>レツ </rt></span></ruby><ruby>部分<span
  style='display:none'><rt class=font21>ブブン </rt></span></ruby>。（OHI:院内処方、OHO:院外処方、IHP:入院処方、DCG:退院時処方、ORD:定期処方、XTR:臨時処方、BDP:持参薬処方　の&quot;院内処方&quot;の<ruby>文字列<span
  style='display:none'><rt class=font21>モジレツ </rt></span></ruby>など）</td>
  <td class=xl91 width=36 style='width:27pt'>例示</td>
  <td class=xl128 width=195 style='width:146pt'>&quot;院内処方&quot;<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
 </tr>
 <tr height=177 style='height:133.0pt'>
  <td height=177 class=xl253 width=112 style='height:133.0pt;border-top:none;
  width:84pt'>medicationCodeableConcept</td>
  <td class=xl101 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl101 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl101 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl101 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl100 width=35 style='border-top:none;width:26pt'>1..1<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl101 width=87 style='border-top:none;width:65pt'>CodeableConcept</td>
  <td class=xl182 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品コードと医薬品名称。ひとつの
  必須のtext 要素と、複数の coding 要素を記述できる。本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず text
  要素に格納した上で、coding要素を繰り返すことでHOT9やYJコードなど複数のコード体系で医薬品コードを並記することが可能。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl101 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl121 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>medicationCodeableConcept</td>
  <td class=xl78 width=83 style='width:62pt'>coding[*]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=35 style='width:26pt'>1..*</td>
  <td class=xl78 width=87 style='width:65pt'>Coding</td>
  <td class=xl174 width=359 style='border-top:none;border-left:none;width:269pt'>コード化した情報を
  1 個以上の coding要素に記述する。<ruby><font class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=547 style='height:409.6pt'>
  <td height=547 class=xl159 width=112 style='height:409.6pt;width:84pt'>medicationCodeableConcept</td>
  <td class=xl78 width=83 style='width:62pt'>coding[+]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>system</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl174 width=359 style='border-top:none;border-left:none;width:269pt'>医薬品コードを識別するURI。<br>
    YJ（個別医薬品）コード: &quot;urn:oid:1.2.392.100495.20.1.73&quot;<br>
    派生コード（YJコードの末尾3桁をZZZに置き換えたコード表）:
  &quot;http://jpfhir.jp/fhir/core/mhlw/CodeSystem/YJ9ZZZ&quot;<br>
    HOT9:<span style='mso-spacerun:yes'>  </span>&quot;http://medis.or.jp/CodeSystem/master-HOT9&quot;<br>
    HOT7:<span style='mso-spacerun:yes'> 
  </span>&quot;http://medis.or.jp/CodeSystem/master-HOT7&quot;　(HOT9の末尾２桁である販社コードが不明の場合に限る)<br>
    厚労省一般名処方マスタコード: &quot;urn:oid:1.2.392.100495.20.1.81&quot;<br>
    標準コードなしコード：<br>
   
  &quot;http://jpfhir.jp/fhir/eCS/CodeSystem/MedicationCodeNocoded_CS&quot;<br>
    <br>
    電子カルテ共有サービスで使用する場合には、YJコード、または派生コードのいずれかのsystem値を必須とする。<br>
   
  これ以外に施設固有コードを追加する場合には、施設固有コード体系のsystem値は、&quot;http://jpfhir.jp/fhir/eCS/CodeSystem/DrugCode/医療機関10桁コード&quot;を使用すること。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl262 width=195 style='width:146pt'><a
  href="http://jpfhir.jp/fhir/core/mhlw/CodeSystem/YJ9ZZZ" target="_parent">http://jpfhir.jp/fhir/core/mhlw/CodeSystem/YJ9ZZZ</a></td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>medicationCodeableConcept</td>
  <td class=xl78 width=83 style='width:62pt'>coding[=]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>version</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl84 width=35 style='width:26pt'>0..1</td>
  <td class=xl78 width=87 style='width:65pt'>string</td>
  <td class=xl78 width=359 style='width:269pt'>コーディングに使用したコードシステムのバージョン文字列を設定することを<ruby>推奨<span
  style='display:none'><rt>スイショウ </rt></span></ruby>とする。</td>
  <td class=xl78 width=36 style='width:27pt'>例示</td>
  <td class=xl160 width=195 style='width:146pt'>&quot;20240601&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>medicationCodeableConcept</td>
  <td class=xl78 width=83 style='width:62pt'>coding[=]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>code</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl80 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>code</td>
  <td class=xl78 width=359 style='width:269pt'>医薬品コード。上記のコード表から選択したコード。<br>
    標準コードなしのコードを使う場合には、&quot;NOCODED&quot;を設定する。<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;1141007F3ZZZ&quot;</td>
 </tr>
 <tr height=127 style='height:95.0pt'>
  <td height=127 class=xl165 width=112 style='height:95.0pt;border-top:none;
  width:84pt'>medicationCodeableConcept</td>
  <td class=xl109 width=83 style='border-top:none;width:62pt'>coding[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl109 width=65 style='border-top:none;width:49pt'>display</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl108 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl109 width=87 style='border-top:none;width:65pt'>string</td>
  <td class=xl76 align=left width=359 style='border-top:none;border-left:none;
  width:269pt'>医薬品名称。コード表におけるコードに対応する表示文字列。.text要素とは異なる文字列となることがある。<br>
    標準コードなしのコードを使う場合には、&quot;標準コードなし&quot;を設定する。<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl110 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl129 width=195 style='border-top:none;width:146pt'>&quot;カロナール錠５００&quot;</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl212 width=112 style='height:58.0pt;width:84pt'>medicationCodeableConcept</td>
  <td class=xl96 width=83 style='width:62pt'>text</td>
  <td class=xl96 width=65 style='width:49pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl107 width=35 style='width:26pt'>1..1</td>
  <td class=xl96 width=87 style='width:65pt'>string</td>
  <td class=xl250 align=left width=359 style='border-left:none;width:269pt'>医薬品名称。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず<ruby>設定<span
  style='display:none'><rt class=font21>セッテイ </rt></span></ruby>する。</td>
  <td class=xl91 width=36 style='width:27pt'><a name="_ftnref1">例示</a></td>
  <td class=xl128 width=195 style='width:146pt'>&quot;カロナール錠５００mg&quot;</td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td height=152 class=xl71 width=112 style='height:114.0pt;width:84pt'>subject</td>
  <td class=xl72 width=83 style='width:62pt'>　</td>
  <td class=xl72 width=65 style='width:49pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl73 width=35 style='width:26pt'>1..1</td>
  <td class=xl72 width=87 style='width:65pt'>Reference(JP_Patient )</td>
  <td class=xl72 width=359 style='width:269pt'><ruby>対象<span style='display:
  none'><rt>タイショウ </rt></span></ruby>となる患者のFHIRリソースへの参照。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl160 width=195 style='width:146pt'>実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照）
  」に従う。</td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td height=152 class=xl71 width=112 style='height:114.0pt;width:84pt'>encounter</td>
  <td class=xl72 width=83 style='width:62pt'>　</td>
  <td class=xl72 width=65 style='width:49pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl286 width=35 style='width:26pt'>0..1</td>
  <td class=xl72 width=87 style='width:65pt'>Reference (JP_Encounter )</td>
  <td class=xl78 width=359 style='width:269pt'>この情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。<font
  class="font14">電子カルテ情報サービスでは必須。</font></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl160 width=195 style='width:146pt'>実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
 </tr>
 <tr height=153 style='height:115.0pt'>
  <td height=153 class=xl71 width=112 style='height:115.0pt;width:84pt'>requester</td>
  <td class=xl72 width=83 style='width:62pt'>　</td>
  <td class=xl72 width=65 style='width:49pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl72 width=57 style='width:43pt'>　</td>
  <td class=xl303 width=35 style='width:26pt'>0..1</td>
  <td class=xl72 width=87 style='width:65pt'>Reference(JP_Practitioner )</td>
  <td class=xl72 width=359 style='width:269pt'>処方者<ruby>情報<span
  style='display:none'><rt>ジョウホウ </rt></span></ruby>。この<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>を<ruby>作成<span
  style='display:none'><rt>サクセイ </rt></span></ruby>した<ruby>医療者<span
  style='display:none'><rt>イリョウシャ </rt></span></ruby>の情報への参照。<font
  class="font14">電子カルテ情報サービスでは必須。</font></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl160 width=195 style='width:146pt'>実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl252 width=112 style='height:58.0pt;width:84pt'>authoredOn</td>
  <td class=xl99 width=83 style='width:62pt'>　</td>
  <td class=xl99 width=65 style='width:49pt'>　</td>
  <td class=xl99 width=57 style='width:43pt'>　</td>
  <td class=xl99 width=57 style='width:43pt'>　</td>
  <td class=xl98 width=35 style='width:26pt'>1..1<ruby><font class="font9"><rt
  class=font9></rt></font></ruby></td>
  <td class=xl99 width=87 style='width:65pt'>dateTime</td>
  <td class=xl99 width=359 style='width:269pt'>処方指示が最初に作成された日時。秒の精度まで記録する。タイムゾーンも付与しなければならない。</td>
  <td class=xl92 width=36 style='width:27pt'>例示</td>
  <td class=xl120 width=195 style='width:146pt'>&quot;2020-08-21T12:28:17+09:00&quot;</td>
 </tr>
 <tr height=153 style='height:115.0pt'>
  <td height=153 class=xl261 width=112 style='height:115.0pt;border-top:none;
  width:84pt'>basedOn</td>
  <td class=xl117 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl117 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl117 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl117 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl135 width=35 style='border-top:none;width:26pt'>0..1</td>
  <td class=xl117 width=87 style='border-top:none;width:65pt'>Reference(JP_ServiceRequest)</td>
  <td class=xl117 width=359 style='border-top:none;width:269pt'><ruby>元<span
  style='display:none'><rt>モト </rt></span></ruby>の<ruby>処方<span
  style='display:none'><rt>ショホウ </rt></span></ruby>オーダ情報。処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl160 width=195 style='width:146pt'>実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
 </tr>
 <tr height=380 style='height:285.0pt'>
  <td height=380 class=xl253 width=112 style='height:285.0pt;width:84pt'>note[*]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl101 width=83 style='width:62pt'>　</td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl134 width=35 style='width:26pt'>0..1*<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl101 width=87 style='width:65pt'>Annotation</td>
  <td class=xl101 width=359 style='width:269pt'>薬剤単位の備考。単一の薬剤に対する調剤者に対する指示は、本要素ではなく、MedicationRequestリソースのdispenseRequest要素に対して本文書で定義した拡張「InstructionForDispense」（http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense）を使用する。<br>
    患者に対する補足指示や注意や、不均等投与指示などは、
  MedicationRequestリソースのdosageInstruction.additionalInstructionで記述する。<br>
    本要素は、それらでは伝えられない薬剤単位の備考や指示を記述する。このよ<ruby>うな<span style='display:none'><rt
  class=font21>ジョウホウ </rt></span></ruby>情<ruby>報が<span style='display:none'><rt
  class=font21>ソンザイ </rt></span></ruby>存在<ruby>する<span style='display:none'><rt
  class=font21>バアイ </rt></span></ruby>場合に<ruby>は<span style='display:none'><rt
  class=font21>ホン </rt></span></ruby><ruby>、本<span style='display:none'><rt
  class=font21>ヨウソ </rt></span></ruby>要<ruby>素に<span style='display:none'><rt
  class=font21>キジュツ </rt></span></ruby>記述するこ<ruby>とが<span style='display:none'><rt
  class=font21>スイショウ </rt></span></ruby>推奨される。</td>
  <td class=xl101 width=36 style='width:27pt'>　</td>
  <td class=xl121 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=103 style='height:77.0pt'>
  <td height=103 class=xl212 width=112 style='height:77.0pt;width:84pt'>note[+]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl96 width=83 style='width:62pt'>text</td>
  <td class=xl96 width=65 style='width:49pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl95 width=35 style='width:26pt'>1..1</td>
  <td class=xl96 width=87 style='width:65pt'>markdown</td>
  <td class=xl96 width=359 style='width:269pt'>備考の文字列。markdown記法ができる。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl91 width=36 style='width:27pt'>例示</td>
  <td class=xl128 width=195 style='width:146pt'>&quot;4月1日から4日間投与。2週間休薬後、4月19日から4日間投与。患者に書面にて説明済み。&quot;</td>
 </tr>
 <tr height=52 style='height:39.0pt'>
  <td height=52 class=xl252 width=112 style='height:39.0pt;border-top:none;
  width:84pt'>dosageInstruction[*]<ruby><font class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl99 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl99 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl99 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl99 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl98 width=35 style='border-top:none;width:26pt'>1..*<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl99 width=87 style='border-top:none;width:65pt'>Dosage</td>
  <td class=xl99 width=359 style='border-top:none;width:269pt'>用法や投与量を含む処方指示。表「dosageInstructionTable」を参照のこと。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl99 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl120 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=52 style='height:39.0pt'>
  <td height=52 class=xl261 width=112 style='height:39.0pt;border-top:none;
  width:84pt'>dispenseRequest</td>
  <td class=xl117 width=83 style='border-top:none;width:62pt'>　</td>
  <td class=xl117 width=65 style='border-top:none;width:49pt'>　</td>
  <td class=xl117 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl117 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl338 width=35 style='border-top:none;width:26pt'>0..1</td>
  <td class=xl117 width=87 style='border-top:none;width:65pt'>BackboneElement</td>
  <td class=xl117 width=359 style='border-top:none;width:269pt'>調剤（<ruby>薬局<span
  style='display:none'><rt>ヤッキョク </rt></span></ruby>での<ruby>払<span
  style='display:none'><rt>ハライ </rt></span></ruby>い<ruby>出<span
  style='display:none'><rt>ダシ </rt></span></ruby>し<ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>）情報</td>
  <td class=xl117 width=36 style='border-top:none;width:27pt'>　</td>
  <td class=xl126 width=195 style='border-top:none;width:146pt'>　</td>
 </tr>
 <tr height=52 style='height:39.0pt'>
  <td height=52 class=xl261 width=112 style='height:39.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl117 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl117 width=65 style='width:49pt'>　</td>
  <td class=xl117 width=57 style='width:43pt'>　</td>
  <td class=xl117 width=57 style='width:43pt'>　</td>
  <td class=xl135 width=35 style='width:26pt'>0..*</td>
  <td class=xl117 width=87 style='width:65pt'>Extension</td>
  <td class=xl117 width=359 style='width:269pt'>この薬剤に<ruby>対<span
  style='display:none'><rt class=font21>タイスル </rt></span></ruby>する調剤指示や<ruby>屯用<span
  style='display:none'><rt class=font21>トンヨウ </rt></span></ruby><ruby>回数<span
  style='display:none'><rt class=font21>カイスウ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt class=font21>シジ </rt></span></ruby>などを表す拡張。</td>
  <td class=xl117 width=36 style='width:27pt'>　</td>
  <td class=xl126 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl253 width=112 style='height:38.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl101 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl101 width=65 style='width:49pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl101 width=57 style='width:43pt'>　</td>
  <td class=xl134 width=35 style='width:26pt'>0..*</td>
  <td class=xl101 width=87 style='width:65pt'>Extension</td>
  <td class=xl101 width=359 style='width:269pt'>この薬剤に対する調剤指示を表す拡張「InstructionForDispense」。</td>
  <td class=xl101 width=36 style='width:27pt'>　</td>
  <td class=xl121 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=127 style='height:95.0pt'>
  <td height=127 class=xl159 width=112 style='height:95.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>url</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl78 width=359 style='width:269pt'>この薬剤に対する調剤指示<ruby>を表<span
  style='display:none'><rt class=font21>シテイ </rt></span></ruby>現する拡張を<ruby>識別<span
  style='display:none'><rt class=font21>シキベツ </rt></span></ruby>するURL。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRe<br>
    quest_DispenseRequest_InstructionForDispense&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl78 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>テキスト<ruby>表現<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl78 width=57 style='width:43pt'>coding</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..*</td>
  <td class=xl78 width=87 style='width:65pt'>Coding</td>
  <td class=xl78 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby><ruby>表現<span style='display:
  none'><rt>ヒョウゲン </rt></span></ruby>。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td height=152 class=xl159 width=112 style='height:114.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl78 width=57 style='width:43pt'>coding</td>
  <td class=xl78 width=57 style='width:43pt'>system</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>url</td>
  <td class=xl78 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>のコードsystem<ruby>値<span
  style='display:none'><rt>チ </rt></span></ruby>。<ruby>施設<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>固<ruby>有コ<span
  style='display:none'><rt>ヒッス </rt></span></ruby>ードを使用する場合には、&quot;http://jpfhir.jp/fhir/clins/CodeSystem/DrugDispensePreparationMethod/医療機関10桁コード&quot;を設定する。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>http://jami.jp/CodeSystem/DrugDispensePreparationMethod</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl78 width=57 style='width:43pt'>coding</td>
  <td class=xl78 width=57 style='width:43pt'>code</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>string</td>
  <td class=xl78 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ ヒョウゲン ヒッス </rt></span></ruby>のコード。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;C&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl78 width=57 style='width:43pt'>coding</td>
  <td class=xl78 width=57 style='width:43pt'>displpay</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>string</td>
  <td class=xl78 width=359 style='width:269pt'>この薬剤に対する調剤指示のコード化をする<ruby>場合<span
  style='display:none'><rt>バアイ </rt></span></ruby>のコードに<ruby>対応<span
  style='display:none'><rt>タイオウ </rt></span></ruby>する<ruby>表示<span
  style='display:none'><rt>ヒョウジ </rt></span></ruby><ruby>文字列<span
  style='display:none'><rt>モジレツ ヒョウゲン ヒッス </rt></span></ruby>。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;<ruby>粉砕<span
  style='display:none'><rt>フンサイ </rt></span></ruby><ruby>指示<span
  style='display:none'><rt>シジ </rt></span></ruby>&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl214 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl115 width=83 style='width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl115 width=65 style='width:49pt'>valueCodeableConcept</td>
  <td class=xl115 width=57 style='width:43pt'>text</td>
  <td class=xl115 width=57 style='width:43pt'>text</td>
  <td class=xl215 width=35 style='width:26pt'>1..1</td>
  <td class=xl115 width=87 style='width:65pt'>string</td>
  <td class=xl115 width=359 style='width:269pt'>この薬剤に対する調剤指示のテキスト<ruby>表現<span
  style='display:none'><rt>ヒョウゲン </rt></span></ruby>。コード<ruby>化<span
  style='display:none'><rt>カ </rt></span></ruby>するかどうかによらず<ruby>必須<span
  style='display:none'><rt>ヒッス </rt></span></ruby>。</td>
  <td class=xl114 width=36 style='width:27pt'>例示</td>
  <td class=xl125 width=195 style='width:146pt'>&quot;嚥下障害のため、粉砕のこと&quot;</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl165 width=112 style='height:38.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl109 width=83 style='width:62pt'>extension[*]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl109 width=65 style='width:49pt'>　</td>
  <td class=xl109 width=57 style='width:43pt'>　</td>
  <td class=xl109 width=57 style='width:43pt'>　</td>
  <td class=xl222 width=35 style='width:26pt'>0..1*</td>
  <td class=xl109 width=87 style='width:65pt'>Extension</td>
  <td class=xl109 width=359 style='width:269pt'>頓用回数を表現する拡張「ExpectedRepeatCount」。</td>
  <td class=xl109 width=36 style='width:27pt'>　</td>
  <td class=xl129 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>extension[+]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=65 style='width:49pt'>url</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl78 width=359 style='width:269pt'>頓用回数を表現する拡張を<ruby>識別<span
  style='display:none'><rt class=font21>シテイ </rt></span></ruby>するURL。</td>
  <td class=xl81 width=36 style='width:27pt'>固定<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl262 width=195 style='width:146pt'><a
  href="http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount"
  target="_parent">http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount</a></td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl165 width=112 style='height:38.0pt;border-top:none;
  width:84pt'>dispenseRequest</td>
  <td class=xl109 width=83 style='border-top:none;width:62pt'>extension[=]<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl109 width=65 style='border-top:none;width:49pt'>valueInteger</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl109 width=57 style='border-top:none;width:43pt'>　</td>
  <td class=xl222 width=35 style='border-top:none;width:26pt'>1..1</td>
  <td class=xl109 width=87 style='border-top:none;width:65pt'>integer</td>
  <td class=xl109 width=359 style='border-top:none;width:269pt'>頓用回数。値は例示。</td>
  <td class=xl110 width=36 style='border-top:none;width:27pt'>例示</td>
  <td class=xl129 width=195 style='border-top:none;width:146pt'>5</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>quantity</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl78 width=87 style='width:65pt'>SimpleQuantity</td>
  <td class=xl78 width=359 style='width:269pt'>調剤量。<ruby>内服<span
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
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl159 width=112 style='height:38.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>quantity</td>
  <td class=xl78 width=65 style='width:49pt'>value</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>decimal</td>
  <td class=xl78 width=359 style='width:269pt'>調剤量。値は例示。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>21</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl159 width=112 style='height:38.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>quantity</td>
  <td class=xl78 width=65 style='width:49pt'>unit</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>string</td>
  <td class=xl78 width=359 style='width:269pt'>単位文字列。値は例示。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;錠&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>quantity</td>
  <td class=xl78 width=65 style='width:49pt'>system</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl78 width=359 style='width:269pt'>医薬品単位略号を識別するURL。固定値。</td>
  <td class=xl81 width=36 style='width:27pt'>固定<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl127 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code&quot;</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl159 width=112 style='height:38.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>quantity</td>
  <td class=xl78 width=65 style='width:49pt'>code</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>code</td>
  <td class=xl78 width=359 style='width:269pt'>医薬品単位略号。値は例示。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;TAB&quot;</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl78 width=87 style='width:65pt'>Duration</td>
  <td class=xl78 width=359 style='width:269pt'>調剤日数</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl78 width=65 style='width:49pt'>value</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>decimal</td>
  <td class=xl78 width=359 style='width:269pt'>調剤日数。値は例示。</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>7</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl78 width=65 style='width:49pt'>unit</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>string</td>
  <td class=xl78 width=359 style='width:269pt'>調剤日数の単位。「日」<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl81 width=36 style='width:27pt'>固定<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl127 width=195 style='width:146pt'><font class="font17">&quot;</font><font
  class="font12">日&quot;</font></td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl78 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl78 width=65 style='width:49pt'>system</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl78 width=359 style='width:269pt'>UCUM単位コードを識別するURI。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl81 width=36 style='width:27pt'>固定<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl127 width=195 style='width:146pt'>&quot;http://unitsofmeasure.org&quot;</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl212 width=112 style='height:58.0pt;width:84pt'>dispenseRequest</td>
  <td class=xl96 width=83 style='width:62pt'>expectedSupplyDuration</td>
  <td class=xl96 width=65 style='width:49pt'>code</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl96 width=57 style='width:43pt'>　</td>
  <td class=xl95 width=35 style='width:26pt'>1..1</td>
  <td class=xl96 width=87 style='width:65pt'>code</td>
  <td class=xl96 width=359 style='width:269pt'>「日」を表すUCUM単位コード。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl91 width=36 style='width:27pt'>固定<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl128 width=195 style='width:146pt'>&quot;d&quot;</td>
 </tr>
 <tr height=51 style='height:38.0pt'>
  <td height=51 class=xl159 width=112 style='height:38.0pt;width:84pt'>substitution</td>
  <td class=xl78 width=83 style='width:62pt'>　</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>0..1</td>
  <td class=xl78 width=87 style='width:65pt'>BackboneElement</td>
  <td class=xl78 width=359 style='width:269pt'>後発医薬品への変更可否情報。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>substitution</td>
  <td class=xl78 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl78 width=65 style='width:49pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>CodeableConcept</td>
  <td class=xl78 width=359 style='width:269pt'>　</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl159 width=112 style='height:57.0pt;width:84pt'>substitution</td>
  <td class=xl78 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl78 width=65 style='width:49pt'>coding[*]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl78 width=57 style='width:43pt'>　</td>
  <td class=xl79 width=35 style='width:26pt'>1..1*</td>
  <td class=xl78 width=87 style='width:65pt'>Coding</td>
  <td class=xl78 width=359 style='width:269pt'>後発品変更不可コード。</td>
  <td class=xl78 width=36 style='width:27pt'>　</td>
  <td class=xl127 width=195 style='width:146pt'>　</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>substitution</td>
  <td class=xl78 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl78 width=65 style='width:49pt'>coding[+]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=57 style='width:43pt'>system</td>
  <td class=xl78 width=57 style='width:43pt'>system</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>uri</td>
  <td class=xl78 width=359 style='width:269pt'>後発品変更不可コードを識別するURI。<ruby><font
  class="font21"><rt class=font21></rt></font></ruby></td>
  <td class=xl81 width=36 style='width:27pt'>固定<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl127 width=195 style='width:146pt'>&quot;http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationSubstitutionProhibittedCategory&quot;</td>
 </tr>
 <tr height=101 style='height:76.0pt'>
  <td height=101 class=xl159 width=112 style='height:76.0pt;width:84pt'>substitution</td>
  <td class=xl78 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl78 width=65 style='width:49pt'>coding[=]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl78 width=57 style='width:43pt'>code</td>
  <td class=xl78 width=57 style='width:43pt'>code</td>
  <td class=xl79 width=35 style='width:26pt'>1..1</td>
  <td class=xl78 width=87 style='width:65pt'>code</td>
  <td class=xl78 width=359 style='width:269pt'>後発品変更不可コード。<br>
    1 : 後発品変更不可<br>
    2 : 剤形変更不可<br>
    3 : 含量規格変更不可</td>
  <td class=xl81 width=36 style='width:27pt'>例示</td>
  <td class=xl127 width=195 style='width:146pt'>&quot;1&quot;</td>
 </tr>
 <tr height=77 style='height:58.0pt'>
  <td height=77 class=xl212 width=112 style='height:58.0pt;width:84pt'>substitution</td>
  <td class=xl96 width=83 style='width:62pt'>allowedCodeableConcept</td>
  <td class=xl96 width=65 style='width:49pt'>coding[=]<ruby><font class="font21"><rt
  class=font21></rt></font></ruby></td>
  <td class=xl96 width=57 style='width:43pt'>display</td>
  <td class=xl96 width=57 style='width:43pt'>display</td>
  <td class=xl95 width=35 style='width:26pt'>0..1</td>
  <td class=xl96 width=87 style='width:65pt'>string</td>
  <td class=xl96 width=359 style='width:269pt'>値は例示。</td>
  <td class=xl91 width=36 style='width:27pt'>例示</td>
  <td class=xl128 width=195 style='width:146pt'>&quot;後発品変更不可&quot;</td>
 </tr>

</table