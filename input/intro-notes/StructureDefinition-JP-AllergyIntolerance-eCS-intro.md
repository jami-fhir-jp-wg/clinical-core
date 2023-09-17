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
<tr><td>要素<br>Lv1</td>
<td>要素<br>Lv2</td>
<td>要素<br>Lv3</td>
<td>要素<br>Lv4</td>
<td>多重度</td>
<td>型</td>
<td>値</td>
<td>説明</td>
</tr>


<tr><td>resourceType</td>
<td></td>
<td></td>
<td></td>
<td>1..1</td>
<td>string</td>
<td>"AllergyIntolerance"</td>
<td>AllergyIntoleranceリソースであることを示す</td>
</tr>


<tr><td>resourceType</td>
<td>要素2</td>
<td>要素3</td>
<td>要素4</td>
<td>多重度</td>
<td>型</td>
<td>値</td>
<td>説明</td>
</tr>


</table>


##　次の表は作成中です

<table border=0 cellpadding=0 cellspacing=0 width=1919 style='bord=er-collapse: collapse;table-layout:fixed;width:1440pt'> <col width=100 span=4 style='width:75pt'> <col width=232 style='mso-width-source:userset;mso-width-alt:6363;width=:174pt'> <col width=53 style='mso-width-source:userset;mso-width-alt:1462;width:=40pt'> <col width=57 style='mso-width-source:userset;mso-width-alt:1572;width:=43pt'> <col width=52 style='mso-width-source:userset;mso-width-alt:1426;width:=39pt'> <col width=100 style='width:75pt'> <col width=199 style='mso-width-source:userset;mso-width-alt:5449;width=:149pt'> <col width=389 style='mso-width-source:userset;mso-width-alt:10678;widt=h:292pt'> <col width=437 style='mso-width-source:userset;mso-width-alt:11995;widt=h:328pt'> <tr height=27 style='height:20.0pt'>  <td height=27 class=xl63 width=100 style='height:20.0pt;width:75pt='><a  name="Print_Area">要素Lv1</a></td>
  <td class=xl64 width=100 style='border-left:none;width:75pt'>要素L=v2</td>
  <td class=xl64 width=100 style='border-left:none;width:75pt'>要素L=v3</td>
  <td class=xl64 width=100 style='border-left:none;width:75pt'>要素L=v4</td>
  <td class=xl64 width=232 style='border-left:none;width:174pt'><ruby>=要素<span  style='display:none'><rt>ヨウソ </rt></span></ruby>パス</td>
  <td class=xl65 width=53 style='border-left:none;width:40pt'>FHIR</td=>  <td class=xl65 width=57 style='border-left:none;width:43pt'>JP_Core<=/td>  <td class=xl65 width=52 style='border-left:none;width:39pt'>多重=度</td>
  <td class=xl64 width=100 style='border-left:none;width:75pt'>型</td=>  <td class=xl64 width=199 style='border-left:none;width:149pt'><ruby>=設定<span  style='display:none'><rt>コテイ </rt></span></ruby>す<ruby>る<span  style='display:none'><rt>セッテイ </rt></span></ruby><ruby>場合<sp=an  style='display:none'><rt>バアイ </rt></span></ruby>の<ruby>固定値=<span  style='display:none'><rt>コテイチ </rt></span></ruby></td>
  <td class=xl64 width=389 style='border-left:none;width:292pt'><ruby>=設定<span  style='display:none'><rt>セッテイ </rt></span></ruby>する<ruby>値=<span  style='display:none'><rt>アタイ </rt></span></ruby>の<ruby>例示<sp=an  style='display:none'><rt>&#128347;</rt></span></ruby></td>
  <td class=xl66 width=437 style='border-left:none;width:328pt'>説明=</td>
 </tr>
 <tr height=27 style='height:20.0pt'>  <td height=27 class=xl67 width=100 style='height:20.0pt;border-top=:none;  width:75pt'>resourceType</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>resourceType</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>　</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>　</td>
  <td class=xl70 width=52 style='border-top:none;border-left:none;widt=h:39pt'>1..1</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>&quot;AllergyIntolerance&quot;</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl71 width=437 style='border-top:none;border-left:none;wid=th:328pt'>AllergyIntolerance<font  class="font6">リソースであることを示す</font></td>
 </tr>
 <tr height=27 style='height:20.0pt'>  <td height=27 class=xl67 width=100 style='height:20.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..1</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..1</td>
  <td class=xl70 width=52 style='border-top:none;border-left:none;widt=h:39pt'>1..1</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>Meta</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>　</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl72 width=437 style='border-top:none;border-left:none;wid=th:328pt'>　</td>
 </tr>
 <tr height=27 style='height:20.0pt'>  <td height=27 class=xl67 width=100 style='height:20.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>lastUpdated</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta.lastUpdated</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..1</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..1</td>
  <td class=xl70 width=52 style='border-top:none;border-left:none;widt=h:39pt'>1..1</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>instant</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>　</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>&quot;2015-02-07T13:28:17.239+09:00&quot;</td>
  <td class=xl72 width=437 style='border-top:none;border-left:none;wid=th:328pt'>最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz</td>
 </tr>
 <tr height=80 style='height:60.0pt'>  <td height=80 class=xl67 width=100 style='height:60.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>profile[+}</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta.profile[+}</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..*</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..*</td>
  <td class=xl73 width=52 style='border-top:none;border-left:none;widt=h:39pt'>0..*</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>canonical(StructureDefinition)</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>&quot;http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/J=P_AllergyIntolerance_eClinicalSummary&quot;</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl72 width=437 style='border-top:none;border-left:none;wid=th:328pt'>準拠しているプロファイルを受信側に通知したい=場合には、本文書のプロファイルを識別するURLを指定す=る。</td>
 </tr>
 <tr height=27 style='height:20.0pt'>  <td height=27 class=xl67 width=100 style='height:20.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>tag[*]</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta.tag[*]</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..*</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..*</td>
  <td class=xl73 width=52 style='border-top:none;border-left:none;widt=h:39pt'>0..*</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>Coding</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>　</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl72 width=437 style='border-top:none;border-left:none;wid=th:328pt'>　</td>
 </tr>
 <tr height=60 style='height:45.0pt'>  <td height=60 class=xl67 width=100 style='height:45.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>tag[+]</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>system</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta.tag[+].system</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..1</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..1</td>
  <td class=xl73 width=52 style='border-top:none;border-left:none;widt=h:39pt'>1..1</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>uri</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&=quot;</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl74 width=437 style='border-top:none;border-left:none;wid=th:328pt'>電子カルテ情報共有サービスで長期保存情報フラ=グの設定する場合に使用</td>
 </tr>
 <tr height=27 style='height:20.0pt'>  <td height=27 class=xl67 width=100 style='height:20.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>tag[=]</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>code</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta.tag[=].code</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..1</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..1</td>
  <td class=xl73 width=52 style='border-top:none;border-left:none;widt=h:39pt'>1..1</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>code</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>&quot;LTS&quot;</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl72 width=437 style='border-top:none;border-left:none;wid=th:328pt'>長期保存情報フラグ</td>
 </tr>
 <tr height=80 style='height:60.0pt'>  <td height=80 class=xl67 width=100 style='height:60.0pt;border-top=:none;  width:75pt'>meta</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>tag[+]</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>system</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>　</td>
  <td class=xl68 width=232 style='border-top:none;border-left:none;wid=th:174pt'>meta.tag[+].system</td>
  <td class=xl69 width=53 style='border-top:none;border-left:none;widt=h:40pt'>0..1</td>
  <td class=xl69 width=57 style='border-top:none;border-left:none;widt=h:43pt'>0..1</td>
  <td class=xl73 width=52 style='border-top:none;border-left:none;widt=h:39pt'>1..1</td>
  <td class=xl68 width=100 style='border-top:none;border-left:none;wid=th:75pt'>uri</td>
  <td class=xl68 width=199 style='border-top:none;border-left:none;wid=th:149pt'>&quot;http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication&=quot;</td>
  <td class=xl68 width=389 style='border-top:none;border-left:none;wid=th:292pt'>　</td>
  <td class=xl74 width=437 style='border-top:none;border-left:none;wid=th:328pt'>電子カルテ情報共有サービスで未告知情報または=<ruby>未説明<span  style='display:none'><rt>ミセツメイ </rt></span></ruby><ruby>フ<sp=an  style='display:none'><rt>ホン </rt></span></ruby>ラグを設<ruby>定=す<span  style='display:none'><rt>シュベツ </rt></span></ruby>る<ruby>場合=<span  style='display:none'><rt>シヨウ </rt></span></ruby>に使用（本<ru=by>リソ<span  style='display:none'><rt>キョカ </rt></span></ruby>ース種別で使=用することが許可されているか、あるいは<ruby>設定<span  style='display:none'><rt>セッテイ </rt></span></ruby>した<ruby>情=報<span  style='display:none'><rt>ジョウホウ </rt></span></ruby>が<ruby>利=用<span  style='display:none'><rt>リヨウ </rt></span></ruby>されるかどう=かについては、電子カルテ情報共有サービスの<ruby>運用<=span  style='display:none'><rt>&#0;&#22;&#3;&#6;&#25;&#1;	&#30;&#2;&#14;!&#2;&=#18;(&#2;&#22;C&#2;&#27;</rt></span></ruby>仕様によって確認するこ=とが必要）</td>
 </tr>


  </table>

<link rel="stylesheet" href="sample.css">
<br>

{% include markdown-link-references.md %}