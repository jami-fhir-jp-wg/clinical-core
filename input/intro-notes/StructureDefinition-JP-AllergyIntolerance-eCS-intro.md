<style type="text/css">

</style>

<style id="testsheet_12153_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
@page
	{margin:.75in .7in .75in .7in;
	mso-header-margin:.3in;
	mso-footer-margin:.3in;}
.font5
	{color:#333333;
	font-size:15.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Helvetica Neue";
	mso-generic-font-family:auto;
	mso-font-charset:0;}
.font6
	{color:#333333;
	font-size:15.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Helvetica Neue";
	mso-generic-font-family:auto;
	mso-font-charset:0;}
tr
	{mso-height-source:auto;
	mso-ruby-visibility:none;}
col
	{mso-width-source:auto;
	mso-ruby-visibility:none;}
br
	{mso-data-placement:same-cell;}
.style0
	{mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	white-space:nowrap;
	mso-rotate:0;
	mso-background-source:auto;
	mso-pattern:auto;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:游ゴシック;
	mso-generic-font-family:auto;
	mso-font-charset:128;
	border:none;
	mso-protection:locked visible;
	mso-style-name:標準;
	mso-style-id:0;}
td
	{mso-style-parent:style0;
	padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:游ゴシック;
	mso-generic-font-family:auto;
	mso-font-charset:128;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:none;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:locked visible;
	white-space:nowrap;
	mso-rotate:0;}
.xl63
	{mso-style-parent:style0;
	color:#333333;
	font-size:15.0pt;
	font-family:"Helvetica Neue";
	mso-generic-font-family:auto;
	mso-font-charset:0;
	border:.5pt solid windowtext;
	white-space:normal;}
.xl64
	{mso-style-parent:style0;
	border:.5pt solid windowtext;
	white-space:normal;}
.xl65
	{mso-style-parent:style0;
	color:#333333;
	font-size:15.0pt;
	font-weight:700;
	font-family:"Helvetica Neue";
	mso-generic-font-family:auto;
	mso-font-charset:0;
	border:.5pt solid windowtext;
	background:#D0CECE;
	mso-pattern:black none;
	white-space:normal;}
ruby
	{ruby-align:left;}
rt
	{color:windowtext;
	font-size:6.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:游ゴシック;
	mso-generic-font-family:auto;
	mso-font-charset:128;
	mso-char-type:katakana;
	display:none;}
-->
</style>


# 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療情報コアサマリー用にアレルギー情報や不耐性情報、薬剤禁忌情報を記述するためのものである。
# スコープ
## 対象
### 以下のような医学的、もしくは健康上の情報。
 - アレルギー情報：食品、薬剤、金属、環境、そのほかあらゆる接触または非接触に生体が受ける物質や刺激によって、通常の多くの人には見られない好ましくない生体反応が観察されたという情報。あるいは観察されるかもしれないというリスクが存在するという情報。いずれもその生体内での機序の種類を問わない。
 ただし、薬剤禁忌情報に該当する情報を除く。
 - 不耐(性)情報：本来ならば代謝することが可能な物質に対する代謝能力が弱い、または代謝過程に異常があるなどの理由で、その物質に対して通常では見られない生体反応が観察されたという情報。あるいは観察されるかもしれないというリスクが存在するという情報。いずれもその生体内での機序の種類を問わない。例）乳糖不耐症）
 ただし、アレルギー情報と区別がつけられないことも多い。
 - 薬剤禁忌情報：薬剤使用に際して通常では見られない好ましくない生体反応が観察されたという情報があるために、その薬剤を使用しないように注意すべきとする情報。また、本人の状態や条件が、その薬剤の適用条件に合わないために使用すべきでないという場合を含む。例）妊婦にとっての、催奇形性の可能性があるために妊婦への投与を控えるようにされている薬剤。
## 対象としないこと
以下のような明らかに本人の嗜好や習慣に起因すると考えられる情報。
 - 辛いものが嫌いで食べたくない。
 - タバコは吸わない。
 - 思想や感情上の理由で金のピアスはつけない。
ただし、「カレーを含む食品を食べると腹痛が起こりやすいので嫌い」、といった場合には、不耐情報またはアレルギー情報なのか嗜好に過ぎないのか区別できないので、対象として記述することはありうる。
# プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい要素（多重度が0..1または0..*の要素）については、その要素は存在しても構わない。ただし、受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表で多重度が、0..1* または 1..1* となっている要素は、上位プロファイル（派生元のプロファイル）で多重度の最大値が１を超える要素である。したがって、JSONデータでは、値が１個であっても、リスト型で記述しなければならない。

 <a id="tbl-1">**AllergyIntoleranceリソース　アレルギー・不耐情報／薬剤禁忌情報**</a>

<table>
<tr><td>要素<br>Lv1</td><td>要素<br>Lv2</td><td>要素<br>Lv3</td><td>要素<br>Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>resourceType</td><td></td><td></td><td></td><td>1..1</td><td>string</td><td>"AllergyIntolerance"</td><td>AllergyIntoleranceリソースであることを示す</td></tr>

<tr><td>resourceType</td><td>要素2</td><td>要素3</td><td>要素4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

</table>

##　次の表は作成中です

<table border=0 cellpadding=0 cellspacing=0 width=1718 style='border-collapse:
 collapse;table-layout:fixed;width:1288pt;box-sizing: border-box;border-spacing: 0px;
 max-width:100%;font-variant-ligatures: normal;font-variant-caps: normal;
 orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-width: 0px;
 text-decoration-thickness: initial;text-decoration-style: initial;text-decoration-color: initial'>
 <col class=xl64 width=100 span=5 style='width:75pt'>
 <col class=xl64 width=251 style='mso-width-source:userset;mso-width-alt:6875;
 width:188pt'>
 <col class=xl64 width=404 style='mso-width-source:userset;mso-width-alt:11081;
 width:303pt'>
 <col class=xl64 width=563 style='mso-width-source:userset;mso-width-alt:15433;
 width:422pt'>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl65 align=left width=100 style='height:20.0pt;
  width:75pt'>要素</td>
  <td class=xl65 align=left width=100 style='border-left:none;width:75pt'>要素</td>
  <td class=xl65 align=left width=100 style='border-left:none;width:75pt'>要素</td>
  <td class=xl65 align=left width=100 style='border-left:none;width:75pt'>要素</td>
  <td rowspan=2 class=xl65 align=left width=100 style='width:75pt'>多重度</td>
  <td rowspan=2 class=xl65 align=left width=251 style='width:188pt'>型</td>
  <td rowspan=2 class=xl65 align=left width=404 style='width:303pt'>値</td>
  <td rowspan=2 class=xl65 align=left width=563 style='width:422pt'>説明</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl65 align=left width=100 style='height:20.0pt;
  border-top:none;width:75pt'>Lv1</td>
  <td class=xl65 align=left width=100 style='border-top:none;border-left:none;
  width:75pt'>Lv2</td>
  <td class=xl65 align=left width=100 style='border-top:none;border-left:none;
  width:75pt'>Lv3</td>
  <td class=xl65 align=left width=100 style='border-top:none;border-left:none;
  width:75pt'>Lv4</td>
 </tr>
 <tr height=53 style='height:40.0pt'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>resourceType</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>“AllergyIntolerance”</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 align=left width=100 style='height:20.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>meta</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Meta</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>lastUpdated</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>instant</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz
  (例. 2015-02-07T13:28:17.239+09:00)</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=4 height=108 class=xl63 width=100 style='height:80.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>profile</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..*</td>
  <td rowspan=4 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>canonical(StructureDefinition)</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://jpfhir.jp/fhir</td>
  <td rowspan=4 class=xl63 align=left width=563 style='border-top:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。値は固定。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/eClinicalSummary</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/StructureDefinition</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/JP_AllergyIntolerance_eClinicalSummary”</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>text</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Narrative</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>本リソースをテキストで表現したものを入れてもよい。入れる場合には、以降のリソースからシステムにより自動生成されたものに限ること。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>status</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“generated”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>div</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>xhtml</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>&lt;div
  xmlns=”http://www.w3.org/1999/xhtml”&gt;xxx&lt;/div&gt;</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>値は例示。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>contained</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>1..1*</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>Resource</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>Resource(JP_Patient_eCS_Contained)</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>contained</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>0..1*</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>Resource</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>Resource(JP_Encounter_OW_eCS_Contained)</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>contained</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>0..1*</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>Resource</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>Resource(JP_Practitioner_eCS_Contained)</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>identifier</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>Identifier</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=2 height=54 class=xl63 width=100 style='height:40.0pt;border-top:
  none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>type</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td rowspan=2 class=xl63 width=251 style='border-top:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://jpfhir.jp/fhir</td>
  <td rowspan=2 class=xl63 width=563 style='border-top:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/core/IdSystem/resourceInstance-identifier”</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>system</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://terminology.hl7.org/CodeSystem/v2-0203”</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=3 height=133 class=xl63 width=100 style='height:100.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>value</td>
  <td rowspan=3 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td rowspan=3 class=xl63 width=251 style='border-top:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 align=left width=404 style='border-top:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“ACSN”,”PLAC”,”FILL”
  のいずれか</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>“ACSN”:特定の1つのリソースを常に確実に指示可能なID</td>
 </tr>
 <tr height=53 style='height:40.0pt'>
  <td height=53 class=xl63 align=left width=563 style='height:40.0pt;
  border-top:none;border-left:none;width:422pt'>“PLAC”:オーダ依頼時の番号。一括処理時に指定可能な複数のリソースを指定するID</td>
 </tr>
 <tr height=53 style='height:40.0pt'>
  <td height=53 class=xl63 align=left width=563 style='height:40.0pt;
  border-top:none;border-left:none;width:422pt'>“FILL”:報告番号、実施番号。一括処理時に指定可能な複数のリソースを指定するID</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=2 height=54 class=xl63 width=100 style='height:40.0pt;border-top:
  none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>system</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td rowspan=2 class=xl63 width=251 style='border-top:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://jpfhir.jp/fhir</td>
  <td rowspan=2 class=xl63 width=563 style='border-top:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/core/IdSystem/resourceInstance-identifier”</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>value</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“1311234567-2020-00123456”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>アレルギー情報IDの文字列。値は例示。</td>
 </tr>
 <tr height=107 style='height:80.0pt;box-sizing: border-box'>
  <td height=107 class=xl63 align=left width=100 style='height:80.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>&lt;tr
  bgcolor=&quot;lightYellow&quot;&gt;</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>identifier</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>0..*</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>Identifier</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=2 height=54 class=xl63 width=100 style='height:40.0pt;border-top:
  none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>type</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td rowspan=2 class=xl63 width=251 style='border-top:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://jpfhir.jp/fhir</td>
  <td rowspan=2 class=xl63 width=563 style='border-top:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/core/IdSystem/resourceInstance-identifier”</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=2 height=54 class=xl63 width=100 style='height:40.0pt;border-top:
  none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>system</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td rowspan=2 class=xl63 width=251 style='border-top:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://jpfhir.jp/fhir</td>
  <td rowspan=2 class=xl63 width=563 style='border-top:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>/core/IdSystem/resourceInstance-identifier”</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>value</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“1311234567-2020-00123456”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>アレルギー情報IDの文字列。値は例示。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td rowspan=2 height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>clinicalStatus</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td rowspan=2 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>CodeableConcept</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical”</td>
  <td rowspan=2 class=xl63 align=left width=563 style='border-top:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>臨床的状態のステータス。コードで記述する場合にはsyetem値は固定値。clinicalStatus.text
  のみで記述することもできる。。active | inactive | resolved現存、非現存、解消</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“active”</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td rowspan=2 height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>verificationStatus</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=2 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td rowspan=2 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>CodeableConcept</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://terminology.hl7.org/CodeSystem/allergyintolerance-verification”</td>
  <td rowspan=2 class=xl63 align=left width=563 style='border-top:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コードで記述する場合にはsystem値は固定値。verificationStatus.text
  のみで記述することもできる。。unconfirmed | confirmed | refuted |
  entered-in-error未確認、確認ずみ、否定、エラー</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“confirmed”</td>
 </tr>
 <tr height=107 style='height:80.0pt;box-sizing: border-box'>
  <td height=107 class=xl63 align=left width=100 style='height:80.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>type</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“allergy”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）。記述する場合は、コード表：”http://hl7.org/fhir/allergy-intolerance-type”allergy
  | intoleranceアレルギー反応、不耐性反応</td>
 </tr>
 <tr height=107 style='height:80.0pt;box-sizing: border-box'>
  <td height=107 class=xl63 align=left width=100 style='height:80.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>category</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1*</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“food”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>特定された原因物質のカテゴリ。記述を可能な限り推奨する。コード表：”http://hl7.org/fhir/allergy-intolerance-category”food
  | medication | environment | biologic食物、医薬品、環境、生物学的</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>cliticality</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..*</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“high”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>潜在的な臨床的危険性、致命度。記述する場合は、コード表：”http://hl7.org/fhir/allergy-intolerance-criticality”low
  | high | unable-to-assess低、高、評価不能</td>
 </tr>
 <tr height=107 style='height:80.0pt;box-sizing: border-box'>
  <td rowspan=4 height=347 class=xl63 align=left width=100 style='height:260.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td rowspan=4 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>CodeableConcept</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>http://jpfhir.jp/fhir</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>アレルギー・不耐反応の対象物の情報。jp-coreで定めるallergy-substanceコード表のコードを推奨する。コード化できない場合には、code.text
  のみで記述する。code.textは必須である。</td>
 </tr>
 <tr height=53 style='height:40.0pt'>
  <td height=53 class=xl63 align=left width=404 style='height:40.0pt;
  border-top:none;border-left:none;width:303pt'>/core/CodeSystem/JP_JfagyFoodAllergen_CS
  “J7F7311990”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt'>使用するコード表（推奨）：</td>
 </tr>
 <tr height=160 style='height:120.0pt'>
  <td height=160 class=xl63 align=left width=404 style='height:120.0pt;
  border-top:none;border-left:none;width:303pt'>“牛乳・乳製品（詳細不明）”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt'>http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS
  　（食物アレルギー）http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS　（医薬品アレルギー）http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS　（その他のアレルギー）</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 width=404 style='height:20.0pt;border-top:none;
  border-left:none;width:303pt'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt'>のいずれかを使用できる。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 align=left width=100 style='height:20.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>patient</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Reference(Patient)</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“urn: …..”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>対象となる患者リソースへの参照。</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>encounter</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Reference
  (Encounter)</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“urn: …..”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>このアレルギ情報が確認され記録された受診情報（入院詳細情報または外来受診情報）への参照.Encounterリソースのインスタンスを参照することでよい。</td>
 </tr>
 <tr height=133 style='height:100.0pt;box-sizing: border-box'>
  <td height=133 class=xl63 align=left width=100 style='height:100.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>(onset)</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>（dateTime、Age、Period、Range、string）のいずれかの型をとる。</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>このアレルギー・不耐性状態が同定された時期。5通りのいずれかの要素（onsetDateTime、onseAge、onsetPeriod、onsetRange、onsetString）ひとつを選択して、それにより記述する。複数を選択はできない。onset要素は記述しないで、直接onsetDateTime要素のレベルを記述する。</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td height=80 class=xl63 width=100 style='height:60.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>onsetDateTime</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>dateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>日付または日時。年や年月だけでもよい。例：2018,
  1973-06, 1905-08-23, 2015-02-07T13:28:17+09:00。時刻に24:00 の使用はできない。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>onseAge</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Age</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>年齢。患者の申告による、状態が出現し始めた年齢。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>value</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>decimal</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“50”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>年齢の値。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=3 height=133 class=xl63 width=100 style='height:100.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>comparator</td>
  <td rowspan=3 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=3 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td rowspan=3 class=xl63 align=left width=404 style='border-top:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“&gt;=”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>要素valueの値の解釈方法。</td>
 </tr>
 <tr height=53 style='height:40.0pt'>
  <td height=53 class=xl63 align=left width=563 style='height:40.0pt;
  border-top:none;border-left:none;width:422pt'>等しい場合には、=
  は不要。そうでない指定をしたい場合には、&lt; 、 &lt;=、 &gt;= 、 &gt;　のいずれか。</td>
 </tr>
 <tr height=53 style='height:40.0pt'>
  <td height=53 class=xl63 align=left width=563 style='height:40.0pt;
  border-top:none;border-left:none;width:422pt'>例では、「50歳以上で」と記述したい場合には、&gt;=
  を記述する。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>unit</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“歳”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位表現</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>system</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>uri</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://unitsofmeasure.org”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位体系
  UCUMコード体系。固定値。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“a”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位体系における単位コード。コードと意味min：minutesh：hoursd：dayswk：weeksmo：monthsa：years</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>onsetPeriod</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Preiod</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>期間。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>start</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>DateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>期間の開始日時</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>end</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>DateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>期間の終了日時</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>onsetRange</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Range</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>曖昧な時期を最小値と最大値とで記述する。以下の記述例は50歳台。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>low</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>value</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>decimal</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“50”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>年齢の値。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>unit</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“歳”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位表現</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>system</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>uri</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://unitsofmeasure.org”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位体系
  UCUMコード体系。固定値。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“a”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位体系における単位コード。コードと意味a：years</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>high</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>value</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>decimal</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“59”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>年齢の値。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>unit</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“歳”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位表現</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>system</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>uri</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“http://unitsofmeasure.org”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位体系
  UCUMコード体系。固定値。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“a”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>単位体系における単位コード。コードと意味a：years</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>onsetString</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“50歳台”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>文字列表現</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 align=left width=100 style='height:40.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>recordedDate</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>dateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>この状態が最初に記録された日時。</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>recorder</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Reference(Practitioner
  | PractitionerRole | Patient | RelatedPerson)</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>この状態を記録した人情報への参照。</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td height=80 class=xl63 align=left width=100 style='height:60.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>asserter</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>Reference(Practitioner
  | PractitionerRole | Patient | RelatedPerson)</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>この状態があると確認（主張）した人情報への参照。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 align=left width=100 style='height:40.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>lastOccurrence</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>dateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>最後（直近）に知られている発生日時</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 align=left width=100 style='height:40.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>note</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..*</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>状態に関する追加的な情報で他の要素で記述できないような情報。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>author</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>authorString</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“看護担当者”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>time</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>dateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>この追加的な情報が作成された日時。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>text</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>markdown</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 align=left width=100 style='height:20.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>reaction</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..*</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>BackboneElement</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>対象物質に暴露したことに関連した有害反応の情報</td>
 </tr>
 <tr height=80 style='height:60.0pt;box-sizing: border-box'>
  <td rowspan=4 height=481 class=xl63 width=100 style='height:360.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>substance</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td rowspan=4 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>CodeableConcept</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>http://jpfhir.jp/fhir</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>有害反応イベントの原因であると考えられる特定の物質（または医薬品）。jp-coreで定めるallergy-substanceコード表のコードの使用で表現できる場合にはその使用を推奨する。</td>
 </tr>
 <tr height=347 style='height:260.0pt'>
  <td height=347 class=xl63 align=left width=404 style='height:260.0pt;
  border-top:none;border-left:none;width:303pt'>/core/CodeSystem/JP_JfagyFoodAllergen_CS</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt'>注：特定の反応の物質は、リスクの原因として特定された物質とは異なる場合があるが、それと一貫性がある必要がある。例えば、「reaction.substance」の物質は、<font
  class="font5">AllergyIntolerance</font><font class="font6">&nbsp;.code要素と比べて、より具体的な物質（例えば、ブランド薬）または特定された物質を含む複合製品であり得る。&nbsp;</font><font
  class="font5">AllergyIntolerance</font><font class="font6">&nbsp;.code要素の記述（アレルギー・不耐反応の対象物の情報要素）のみを処理して「reaction.substance」の情報を無視しても、臨床的に安全でなければならない。このリソースを受信して処理するシステムが、もし「reaction.substance」と</font><font
  class="font5">AllergyIntolerance</font><font class="font6">&nbsp;.code要素の記述物質との意味的な包含関係を処理できないのであれば、システムはこの「reaction.substance」要素を無視しなければならない。</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“J7F7311154”</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“モッツァレラチーズ”</td>
  <td class=xl63 width=563 style='border-top:none;border-left:none;width:422pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=4 height=108 class=xl63 width=100 style='height:80.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>manifestation</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..*</td>
  <td rowspan=4 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>CodeableConcept</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“urn:oid:1.2.392.200119.4.101.6”</td>
  <td rowspan=4 class=xl63 align=left width=563 style='border-top:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>アレルギー反応に関連する症状や所見。system値はMEDIS標準病名マスター病名交換用コードを使用する場合の例示。”BOEF”は、MEDIS標準病名マスター病名交換用コードで”持続腹痛”のコード。”持続腹痛”はそのテキスト記述の例。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“B0EF”</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“持続腹痛”</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“長く続く腹部の痛み”</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>description</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“チーズを食べて1時間後から激しい腹痛と下痢がながく続いた。”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>イベントの全体的な記述。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>onset</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>dateTime</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“2010-01-02”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>関連する症状や所見が見られた日時。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>severity</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>code</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“severe”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>反応の激しさ程度。コード表：http://hl7.org/fhir/reaction-event-severitymild
  | moderate | severe軽度、中等度、強度</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td rowspan=4 height=108 class=xl63 width=100 style='height:80.0pt;
  border-top:none;width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>exposureRoute</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 width=100 style='border-top:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td rowspan=4 class=xl63 align=left width=100 style='border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td rowspan=4 class=xl63 align=left width=251 style='border-top:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>CodeableConcept</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“urn:oid:1.2.392.200250.2.2.20.40”</td>
  <td rowspan=4 class=xl63 align=left width=563 style='border-top:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>物質の摂取経路の情報。JAMI標準用法の投与経路コード表（JAMI
  用法コード表基本用法2桁コードに相当）を使用する。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“10”</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“内服経口”</td>
 </tr>
 <tr height=27 style='height:20.0pt'>
  <td height=27 class=xl63 align=left width=404 style='height:20.0pt;
  border-top:none;border-left:none;width:303pt'>“経口摂取”</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>note</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..*</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>他のフィールドで記述できないイベントに関するテキスト記述</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>author</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 width=251 style='border-top:none;border-left:none;width:188pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>記載者の情報</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>authorString</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>string</td>
  <td class=xl63 align=left width=404 style='border-top:none;border-left:none;
  width:303pt;box-sizing: border-box;overflow-wrap: break-word'>“患者の母親”</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
 </tr>
 <tr height=27 style='height:20.0pt;box-sizing: border-box'>
  <td height=27 class=xl63 width=100 style='height:20.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>time</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>0..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>dateTime</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>この追加的な情報が作成された日時。</td>
 </tr>
 <tr height=53 style='height:40.0pt;box-sizing: border-box'>
  <td height=53 class=xl63 width=100 style='height:40.0pt;border-top:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>text</td>
  <td class=xl63 width=100 style='border-top:none;border-left:none;width:75pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=100 style='border-top:none;border-left:none;
  width:75pt;box-sizing: border-box;overflow-wrap: break-word'>1..1</td>
  <td class=xl63 align=left width=251 style='border-top:none;border-left:none;
  width:188pt;box-sizing: border-box;overflow-wrap: break-word'>markdown</td>
  <td class=xl63 width=404 style='border-top:none;border-left:none;width:303pt;
  box-sizing: border-box;overflow-wrap: break-word'>　</td>
  <td class=xl63 align=left width=563 style='border-top:none;border-left:none;
  width:422pt;box-sizing: border-box;overflow-wrap: break-word'>追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。</td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=100 style='width:75pt'></td>
  <td width=100 style='width:75pt'></td>
  <td width=100 style='width:75pt'></td>
  <td width=100 style='width:75pt'></td>
  <td width=100 style='width:75pt'></td>
  <td width=251 style='width:188pt'></td>
  <td width=404 style='width:303pt'></td>
  <td width=563 style='width:422pt'></td>
 </tr>
 <![endif]>
</table>


<table>
<tr><td>要素<br>Lv1</td><td>要素<br>Lv2</td><td>要素<br>Lv3</td><td>要素<br>Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>resourceType</td><td></td><td></td><td></td><td>1..1</td><td>string</td><td>"AllergyIntolerance"</td><td>**AllergyIntolerance**リソースであることを示す。</td></tr>

<tr><td>contained</td><td></td><td></td><td></td><td>1..1*</td><td>Resource</td><td>Resource(JP_Patient_eCS_Contained | JP_Patient)</td><td>診療情報コアサマリーにおける患者情報をコンパクトに格納したPatientリソースを埋め込む。JP_Patient_eCS_Containedプロファイル、またはJP_Patientプロファイルに準拠したリソースであること。</td></tr>

<tr><td></td><td></td><td></td><td></td><td>0..1*</td><td>Resource</td><td>Resource(JP_Encounter_OW_eCS_Contained | JP_Encounter)</td><td>診療情報コアサマリーにおける入院外来区分情報をコンパクトに格納したEncounterリソースを埋め込む。JP_Encounter_OW_eCS_Containedプロファイル、またはJP_Encounterプロファイルに準拠したリソースであること。</td></tr>

<tr><td></td><td></td><td></td><td></td><td>0..1*</td><td>Resource</td><td>Resource(JP_Practitioner_eCS_Contained | JP_Practitioner)</td><td>診療情報コアサマリーにおける登録医療者情報をコンパクトに格納したPractitionerリソースを埋め込む。JP_Practitioner_eCS_Containedプロファイル、またはJP_Practitionerプロファイルに準拠したリソースであること。</td></tr>

<tr><td>clinicalStatus</td><td></td><td></td><td></td><td>0..1</td><td>CodeableConcept</td><td>値</td><td>臨床的状態のステータス。コードで記述する場合にはsyetem値は固定値。clinicalStatus.text のみで記述することもできる。<br>Binding:[AllergyIntoleranceClinicalStatusCodes]  (http://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)(:target="_blank") (required)<br>active | inactive | resolved現存、非現存、解消</td></tr>

<tr><td>verificationStatus</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>type</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>category</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>criticality</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>


<tr><td>code</td><td></td><td></td><td></td><td>1..1</td><td>CodeableConcept</td><td>http://jpfhir.jp/fhir
/core/CodeSystem/JP_JfagyFoodAllergen_CS <br>"J7F7311990"<br>
"牛乳・乳製品（詳細不明）"</td><td>アレルギー・不耐反応の対象物の情報。<br>jp-coreで定めるallergy-substanceコード表のコードを推奨する。<br>コード化できない場合には、code.text のみで記述する。code.textは必須である。<br>
使用するコード表（推奨）：<br>
http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS 　（食物アレルギー）<br>
http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS　（医薬品アレルギー）<br>
http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS　（その他のアレルギー）<br>
のいずれかを使用できる。</td></tr>

<tr><td>patient</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>encounter</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>onsetDateTime</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>onsetString</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>recordedDate</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>recorder</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>asserter</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

<tr><td>note</td><td>要素Lv2</td><td>要素Lv3</td><td>要素Lv4</td><td>多重度</td><td>型</td><td>値</td><td>説明</td></tr>

</table>



|要素<br>Lv1|要素<br>Lv2|要素<br>Lv3 |要素<br>Lv4 |多重度|型|値|説明||
|---|---|---|---|---|---|---|---|---|
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