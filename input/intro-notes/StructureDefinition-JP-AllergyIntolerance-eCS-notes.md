

## 「薬剤アレルギー等」と「その他アレルギー等との区別

6情報のうち、「薬剤アレルギー等」 と「その他アレルギー等」とは同じAllergyIntoleranceリソースタイプを使用し、同じProfileに準拠してデータを作成する。<br>
両者の区別はAllergyIntoleranceリソースデータのcategory要素に設定される値の違いにより以下の表に従い処理される。


「薬剤アレルギー等」には、category要素にmedicationを必ず設定する。利用側（CLINS）は、この条件が満たされた場合にのみ「薬剤アレルギー等」として扱い、それ以外の場合には「その他アレルギー等」として取り扱う。なお、category要素に対するbiologicの設定は当面使用しない。

<div>
<table border="2"  style="border-collapse: collapse">
<tr><th>識別</th><th>category要素</th><th>説明</th></tr>
<tr><td>薬剤アレルギー等</td><td>medication</td><td>biologicは当面使用しない。</td></tr>
</tr>
<tr><td>その他アレルギー等</td><td>food, environment,または値なし（要素なし）</td><td>薬剤以外の原因物質に対する「その他アレルギー等」とみなされる。<br>「薬剤アレルギー等」としては扱われない。</td></tr>
</table>
</div>

## その他、参考文献・リンク等

特記事項なし


{% include markdown-link-references.md %}
