
# eCS 診療情報・サマリー汎用：【アレルギー情報・薬剤禁忌情報】

## 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療情報提供書や退院時サマリーなどの2文書や、診療６情報・サマリー用に、「アレルギー情報と薬剤禁忌情報」を記述するためのものである。
電子カルテ情報共有サービスに送信する情報に含まれる場合には、派生プロファイルである[CLINS電子カルテ情報共有サービス用: 【アレルギー情報と薬剤禁忌情報　JP_AllergyIntolerance_CLINS_eCS][JP_AllergyIntolerance_CLINS_eCS]　を使用すること。】

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
  - code : アレルギー・不耐反応の対象物の情報
  - patient : このアレルギー不耐症を有する患者のFHIRリソースへの参照。３文書６情報の作成では、 contained (JP_Patient)リソースへのリテラル参照を設定する。

### 条件により必須
  - meta.tag : 電子カルテ情報共有サービスで長期保存フラグの設定する場合に必須。
  - meta.profile : 電子カルテ情報共有サービスでは必須
  - extension (eCS_InstitutionNumber) : 電子カルテ情報共有サービスでは必須。医療機関番号１０桁
  - clinicalStatus : 臨床的状態のステータスのコード化情報。コード化必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。
  - category : 電子カルテ情報共有サービス、薬剤禁忌情報として本リソース種別を使用する場合には、必ず本要素は"medication"として存在しなければならず、criticality要素は"high"を設定しなければならない。
  - criticality :  同上

### 推奨要素
  - contained (JP_Encounter) : アレルギー登録時の入院外来区分情報
  - contained (JP_Practitioner) : アレルギー登録者の情報
  - verificationStatus : 入力された臨床的状態に対する検証状況。コード化必須。
  - encounter : アレルギー登録時の入院外来区分情報。
  - recordedDate : この状態が記録された日時
  - recorder : アレルギー登録者の情報。
  - asserter : この状態があると確認（主張）した人情報への参照。

### MustSupport要素
　- 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。
  - 該当なし。

## 要素の説明とプロファイル
  - 多重度欄の背景色：
    - 濃い黄色＝「必須要素」に対応する。
    - 薄い黄色＝「条件により必須要素」に対応する。
    - 薄い緑＝「推奨要素」に対応する。
    - 無色＝本要素を記述する場合の説明を参考までに記載しているが多重度は0..1または0..*であるため出現してもしなくてもよい。ただし、MustSupport要素の場合には、MustSupport要素としての仕様を満たす必要がある。MustSupport要素でなければ、データ設定と送信は任意であり、送信しても受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい（多重度が0..1または0..*の）要素は、データ設定と送信は任意であり、送信しても受信側では無視（破棄）されるかもしれないことに注意すること。
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

<h3>表「AllergyIntolerance」</h3>
<button id="mrc" type="button" onclick="details_open(true,'TableDetails','mrc')">表「AllergyIntolerance」開く</button>
<details id="TableDetails">
<button type="button" onclick="details_open(false,'TableDetails', 'mrc')">閉じる</button>
<summary></summary>


<div id="Table_16675" class="htmlTable" align=center x:publishsource="Excel">

{% include AllergyIntoleranceTable.md %}

</div>


<button type="button" onclick="details_open(false,'TableDetails','mrc')">閉じる</button>

</details>
<br>

## プロファイル

{% include markdown-link-references.md %}