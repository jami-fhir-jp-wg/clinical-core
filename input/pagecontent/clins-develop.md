
<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }
  th, td {
    border: 2px solid black;
    padding: 4px;
    text-align: center;
  }
  .left {
　  text-align: left;
  }
  .top {
    vertical-align: top;
  }
  .ul_flush {
    list-style: none;
    padding-left: 0;
    display: table;
  }
  .ul_flush li:after {
    content: "";
    display: block;
    margin-bottom: 0.5em;
  }
  
  .ul_flush li {
    display: table-row;
  }
  .ul_flush li:before {
    content: "•";
    display: table-cell;
    padding-right: 0.4em;
  }
  
  li {
    margin-bottom: 0.5em;
  }
</style>

### リリース版に対する開発者向け参考情報

本ページで提供されるIGおよびパッケージは、各情報欄に記載した開発者向け情報を反映したものです。<br>
公式リリースではなく、開発者が自己責任で必要に応じて利用可能とするために掲載しています。<br>
ここに記載している情報は、公式リリース版では未修正の調査中情報、仕様ではない情報、不確定な情報を含んでいることがあります。<br>

<table>
  <tr>
    <th>対象仕様の<br>バージョン</th>
    <th>開発者向け参考情報<br>提供日付</th>
    <th>IGページへのリンク</th>
    <th>パッケージVersion</th>
  </tr>

  <tr>
    <td rowspan=2 class="top">1.10.0</td>
    <td rowspan=2 class="top">2025-02-08</td>
    <td><a href="https//jpfhir.jp/fhir/clins/ig1.10.0-20250208">ig1.10.0-20250208</a></td>
    <td><a href="https//jpfhir.jp/fhir/clins/ig1.10.0-20250208/p-eCSCLINS.r4-1.10.0-20250208.tgz">jp-eCSCLINS.r4-1.10.0-20250208.tgz</a></td>
  </tr>

  <tr>
    <td colspan="2"  class="left">
    <ul>
    <li>未記載の履歴情報
    <ul><li>
  検体検査結果プロファイル（JP_Observation_LabResult_eCS）のcode.codingの全スライスに適用されるall slicesで表示されていたcode.coding.system、code.coding.code、code.coding.displayの多重度（1..1）を、各スライスのところに表示されるように表示を移動した。これにともない、all slicesでのこれらの表示が0..0になってしまう（実装ガイド生成過程の問題と思われる）ため、これが表示上の問題であって多重度は仕様通り1..1のままであることを記載追加した。
    </li>
    <li>
  処方情報リソース　MedicationRequestの　6.1の表「MedicationRequest」および　7.1詳細プロファイルにおいて、note要素の多重度を0..1から0..*（規定仕様およびJP-Coreの仕様）に戻した。
    </li>
    </ul>
    <li>今後リリースする可能性のある修正
    <ul>
  患者情報プロファイル　JP_Patient_eCSで、生活保護受給者識別子の制約チェックに関する修正。
  <li>
  診療情報提供書のデータ作例（以下の２件：Composition.sectionにentryが無く、text要素にだけ内容を記述する例）において、仕様書に従い section[compositionSection].emptyReason　および　section[compositionSection].section[xxx].emptyReason にunavailableを記述するよう修正。（ただしValidationではemptyReasonが無くてもエラーにならない）
  <ul>
  <li>Bundle-CLINS-Referral-NoEntry-Example-01</li>
  <li>Bundle-CLINS-Referral-NoEntry-Example-01-RefText</li>
  </ul>
  </li>
  <li>検体検査結果プロファイル（JP_Observation_LabResult_eCS）のcode.coding.versionは、6.1の表で推奨要素となっているため、MustSpportを設定する修正。 </li>

  </ul>
  </ul>
  </td>
  
  </tr>
  
</table>

