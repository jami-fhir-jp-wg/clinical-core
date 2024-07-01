

## 「薬剤アレルギー等」と「その他アレルギー等との区別

6情報のうち、「薬剤アレルギー等」 と「その他アレルギー等」とは同じAllergyIntoleranceリソースタイプを使用し、同じProfileに準拠してデータを作成する。<br>
両者の区別はAllergyIntoleranceリソースデータのcategory要素に設定される値の違いにより以下の表に従い処理される。


「薬剤アレルギー等」には、category要素にmedicationを必ず設定する。利用側（CLINS）は、この条件が満たされた場合にのみ「薬剤アレルギー等」として扱い、それ以外の場合には「その他アレルギー等」として取り扱う。なお、category要素に対するbiologicの設定は当面使用しない。


<div>
<table border="2"  style="border-collapse: collapse">
<tr><th>情報区分</th><th>category要素</th><th>説明</th></tr>
<tr><td>薬剤アレルギー等</td><td>medication</td><td>biologicは当面使用しない。</td></tr>

<tr><td>その他アレルギー等</td><td>food, environment,または値なし（要素なし）</td><td>薬剤以外の原因物質に対する「その他アレルギー等」とみなされる。<br>「薬剤アレルギー等」としては扱われない。</td></tr>
</table>
</div>
<br>

## アレルギーのコード AllergyIntolerance.code の仕様
AllergyIntolerance.code は以下に従うこと。<br>

<div>
<table border="2"  style="border-collapse: collapse">

<tr>
<th rowspan="2">情報区分</th>
<th rowspan="2">category要素</th>
<th rowspan="2">適用条件</th>
<th rowspan="1" colspan="2">AllergyIntolerance.code.<br>coding.code</th>
<th  rowspan="1" colspan="1">AllergyIntolerance.code.<br>coding.system</th>
</tr>

<tr>
<th>先頭3桁<br>（メタコード）</th>
<th>後続コード</th>
<th>コードシステム</th>
</tr>

<tr>
<td  rowspan="3">薬剤アレルギー等</td>
<td  rowspan="3">medication（薬剤）</td>

<td>個別医薬品YJコード使用可</td>
<td>　YCM　　 </td>
<td>YJコード<br>12桁</td>
<td rowspan="3">JFAGY-Medコード　(*注2）<br>[JP_JfagyMedicationAllergen_CS](JP_JfagyMedicationAllergen_CS)</td>
</tr>

<tr>
<td>販社不明の医薬品一般名派生コード(*注1）で指定可</td>
<td>　GCM　　 </td>
<td>YJコードの最後の3桁を"ZZZ"に置き換えた12桁(*注1）</td>
</tr>

<tr>
<td>コード指定不可(*注3)</td>
<td>　D9M　　 </td>
<td>ダミーコード<br>"000000000"<br>　9桁のゼロ</td>
</tr>

<tr>
<td  rowspan="4">その他アレルギー等</td>
<td  rowspan="2">food（食品）</td>
<td>JFAGY(食品)コード使用可</td>
<td>　J9F　　 </td>
<td>JFAGY(食品)コード<br>9桁</td>
<td rowspan="2">JFAGY-Foodコード　(*注4）<br>[JP_JfagyFoodAllergen_CS](JP_JfagyFoodAllergen_CS)</td>
</tr>

<tr>
<td>コード指定不可(*注3)</td>
<td>　D9F　　 </td>
<td>ダミーコード<br>"000000000"<br>　9桁のゼロ</td>
</tr>

<tr>
<td  rowspan="2">environment（非食品・非医薬品）</td>
<td>JFAGY（非食品・非医薬品）コード使用可</td>
<td>　J9N　　 </td>
<td>JFAGY（非食品・非医薬品）コード<br>9桁</td>
<td rowspan="2">JFAGY-NonFoodNonMedコード　(*注5）<br>[JP_JfagyNonFoodNonMedicationAllergen_CS](JP_JfagyNonFoodNonMedicationAllergen_CS)</td>
</tr>

<tr>
<td>コード指定不可(*注3)</td>
<td>　D9N　　 </td>
<td>ダミーコード<br>"000000000"<br>　9桁のゼロ</td>
</tr>

</table>
</div>

  - 注1:　派生コード（仮称）とは、YJコードの最後の3桁を"ZZZ"に置き換えた12桁をいう。個別医薬品（YJ)コードの細かさでは記述できないが、販社等の情報を区別するYJコードの最後の3桁を無視して一般名医薬品を指定するレベルであれば記述可能な場合に使用することができる。
  - 注2:　JFAGY-MedコードのURL "http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS"
  - 注3:　コード指定ができない場合には、ダミーコード（"000000000"
　9桁のゼロ）をコードとして必ず設定する。この場合には、AllergyIntolerance.code.textに必ずアレルゲンの情報を電子カルテに登録されているテキストで記述する。ダミーコードに対応する表示名(AllergyIntolerance.code.coding.display)は不要。
  - 注4:　JJFAGY-FoodコードのURL "http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS"
  - 注5:　JFAGY-NonFoodNonMedコードのURL "http://jpfhir.jp/fhir/core/CodeSystem/"




## その他、参考文献・リンク等

特記事項なし


{% include markdown-link-references.md %}
