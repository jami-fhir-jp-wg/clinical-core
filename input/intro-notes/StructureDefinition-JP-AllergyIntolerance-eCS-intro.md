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


<table border=0 cellpadding=0 cellspacing=0 width=1919 style='bord=er-collapse: collapse;table-layout:fixed;width:1440pt'> <col width=100 span=4 style='width:75pt'> <col width=232 style='mso-width-source:userset;mso-width-alt:6363;width=:174pt'> <col width=53 style='mso-width-source:userset;mso-width-alt:1462;width:=40pt'> <col width=57 style='mso-width-source:userset;mso-width-alt:1572;width:=43pt'> <col width=52 style='mso-width-source:userset;mso-width-alt:1426;width:=39pt'> <col width=100 style='width:75pt'> <col width=199 style='mso-width-source:userset;mso-width-alt:5449;width=:149pt'> <col width=389 style='mso-width-source:userset;mso-width-alt:10678;widt=h:292pt'> <col width=437 style='mso-width-source:userset;mso-width-alt:11995;widt=h:328pt'> <tr height=27 style='height:20.0pt'>  
<td height=27 class=xl63 width=100 style='height:20.0pt;width:75pt='><a  name="Print_Area">要素Lv1</a></td>

  </table>

<link rel="stylesheet" href="sample.css">
<br>

{% include markdown-link-references.md %}