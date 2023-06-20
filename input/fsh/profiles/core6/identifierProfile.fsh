
// RuleSet:  IdentifierProfileForInstanceOf6CoreSetSliced(namedIdentifier)
// RuleSet:  IdentifierProfileForInstanceOf6CoreSet

RuleSet:  IdentifierProfileForInstanceOf6CoreSetSlidecCommon

RuleSet:  IdentifierProfileForInstanceOf6CoreSetSliced(namedIdentifier)
* {namedIdentifier} 1..* MS
* {namedIdentifier} ^short = "当該検査項目に対して、施設内で割り振られる一意の識別子"
* {namedIdentifier} ^definition = "この検査項目に割り当てられた一意の識別子で64バイト以内。リソースの識別子やシステム的なシーケンスではなく、当該施設内で割り振られる一意の識別キー。"
* {namedIdentifier} ^comment = "当該施設内で割り振られる一意の識別子があればそれを使用する。すくなくともひとつのidentifierは、当該施設で作成された全診療データのなかからこの検査結果を一意に識別でき、削除や更新が可能な論理キーとなる。それ以外に追加で当該施設または別の施設が別のsystem値との組み合わせによる異なるidentifierを1個以上設定してもよい。\r\nSS-MIX2から生成する場合には、次のルールを参考に一意となる識別子を生成し設定してもよい。\r\nアプリケーション側のデータベースにおけるフィールド長の定義については、最低64バイトを確保すること。\r\n\r\n--- 参考 ---\r\n\r\n次の項目を順にセパレータ「_(アンダースコア)」で連結し、 identifier.value に設定する。グループ項目でない場合など、該当コード／番号がない場合はセパレータを連続で連結する。各コードはローカルコードを使用し、必ず設定できること。\r\n\r\n　１．ORC-2(依頼者オーダ番号)　SS-MIX2の15桁前ゼロ形式の番号\r\n\r\n　２．OBR-4(検査項目ID)　検査セットの識別コード\r\n\r\n　３．SPM-4(検体タイプ)\r\n\r\n　４．OBX-3(検査項目)\r\n\r\n　５．OBX-4(検査副ID)・・・オプション。必要に応じて使用。\r\n\r\n形式：[ORC-2]_[OBR-4]_[SPM-4]_[OBX-3]（_[OBX-4]）"
  * id ..1   MS
  * use 0..1   MS
  * use ^short = "この識別子の設定・利用目的を表すコード。"
  * use ^definition = "この識別子の設定・利用目的コード。当該施設における一意のキーには 'official'を設定する。この要素が存在しない場合にもofficialとみなす。"
  * use ^comment = "追加されたidentifierには必ずofficial以外のコードを設定するものとし、通常は'secondary'を設定する。目的に応じてhttp://hl7.org/fhir/identifier-useに定義される他のコード（usual, temp, old）も利用してもよい。"
  * system 1..1 MS
  * system ^short = "このidebtifierの番号体系を識別するurl"
  * system ^definition = "このidentifierの番号体系を識別するurl"
  * system ^comment = "identifier.useが'official'の場合には、http://jpfhir.jp/fhir/eClinicalSummary/IdSystem/システム識別文字列/医療機関識別ID　を設定する。システム識別文字列が、当該施設でこの識別子の一意性を確保できるシステム識別文字列、たとえばMEDEMR2023など。医療機関識別IDは原則として、数字1の後ろに都道府県番号2桁、施設区分1桁（医科：1、歯科：3、調剤：4）、 機関番号7桁を連結した11桁とする。"
  * value 1..1 MS
  * value ^short = "システムのコンテキスト内で一意の識別子となるidentifierの文字列を設定。"
  * value ^definition = "システムのコンテキスト内で一意の識別子となるidentifierの文字列を設定。"
  * assigner
  * ^comment = "当面、コア情報ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。（新たなcontainedリソースの記述を避けるため）"


RuleSet:  IdentifierProfileForInstanceOf6CoreSet
* identifier 1..* MS
* identifier ^short = "当該リソースインスタンス（データ）に対して、施設内で割り振られる一意の識別子"
* identifier ^definition = "このリソースインスタンス（データ）に割り当てられた一意の識別子で64バイト以内。リソースの識別子やシステム的なシーケンスではなく、当該施設内で割り振られる一意の識別キー。"
* identifier ^comment = "当該施設内で割り振られる一意の識別子があればそれを使用する。すくなくともひとつのidentifierは、当該施設で作成された全診療データのなかからこのリソースインスタンスが表す情報を一意に識別でき、その削除や更新が可能な論理キーとなる。それ以外に追加で当該施設または別の施設が別のsystem値との組み合わせによる異なるidentifierを1個以上設定してもよい。\r\nSS-MIX2から生成する場合には、次のルールを参考に一意となる識別子を生成し設定してもよい。\r\nアプリケーション側のデータベースにおけるフィールド長の定義については、最低64バイトを確保すること。\r\n\r\n--- 参考 ---\r\n\r\n次の項目を順にセパレータ「_(アンダースコア)」で連結し、 identifier.value に設定する。グループ項目でない場合など、該当コード／番号がない場合はセパレータを連続で連結する。各コードはローカルコードを使用し、必ず設定できること。\r\n\r\n　１．ORC-2(依頼者オーダ番号)　SS-MIX2の15桁前ゼロ形式の番号\r\n\r\n　２．OBR-4(検査項目ID)　検査セットの識別コード\r\n\r\n　３．SPM-4(検体タイプ)\r\n\r\n　４．OBX-3(検査項目)\r\n\r\n　５．OBX-4(検査副ID)・・・オプション。必要に応じて使用。\r\n\r\n形式：[ORC-2]_[OBR-4]_[SPM-4]_[OBX-3]（_[OBX-4]）"
  * id ..1   MS
  * use 0..1   MS
  * use ^short = "この識別子の設定・利用目的を表すコード。"
  * use ^definition = "この識別子の設定・利用目的コード。当該施設における一意のキーには 'official'を設定する。この要素が存在しない場合にもofficialとみなす。"
  * use ^comment = "追加されたidentifierには必ずofficial以外のコードを設定するものとし、通常は'secondary'を設定する。目的に応じてhttp://hl7.org/fhir/identifier-useに定義される他のコード（usual, temp, old）も利用してもよい。"
  * system 1..1 MS
  * system ^short = "このidebtifierの番号体系を識別するurl"
  * system ^definition = "このidentifierの番号体系を識別するurl"
  * system ^comment = "identifier.useが'official'の場合には、http://jpfhir.jp/fhir/eClinicalSummary/IdSystem/システム識別文字列/医療機関識別ID　を設定する。システム識別文字列が、当該施設でこの識別子の一意性を確保できるシステム識別文字列、たとえばMEDEMR2023など。医療機関識別IDは原則として、数字1の後ろに都道府県番号2桁、施設区分1桁（医科：1、歯科：3、調剤：4）、 機関番号7桁を連結した11桁とする。"
  * value 1..1 MS
  * value ^short = "システムのコンテキスト内で一意の識別子となるidentifierの文字列を設定。"
  * value ^definition = "システムのコンテキスト内で一意の識別子となるidentifierの文字列を設定。"
  * assigner
  * ^comment = "当面、コア情報ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。（新たなcontainedリソースの記述を避けるため）"


