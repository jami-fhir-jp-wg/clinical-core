### 必須要素
次の要素は必須である。

  - contained : JP_Patient_eCS_Containedプロファイルに従ったPatientリソース
  - identifier : このインスタンスを一意、または一括指定して削除や更新ができるリソースインスタンスID
    - type : リソースインスタンスID指定の種類
    - system : リソースインスタンスIDの当該施設での当該システム固有のID体系を表すurl
    - value : リソースインスタンスIDの値
  - code : アレルギー・不耐反応の対象物の情報。アレルギー・不耐反応の対象物の情報。薬剤禁忌情報の場合には、医薬品情報のコード
  - 

このプロファイルにもとづくAllergyIntoleranceリソースは、次の要素をサポートしなければならない。

### Extensions定義

Medication リソースで使用される拡張は次の通りである。

### 用語定義

### 項目の追加

## 利用方法

### サンプル

### 各種コメントの記述方法

## その他、参考文献・リンク等

{% include markdown-link-references.md %}
