    <div class="segment">
        <div class="container">
            <div class="row">
                <div class="inner-wrapper">
                    <div class="col-12">
                        <div class="htmlTable">
                            <table style="border-collapse:collapse;table-layout:fixed;">
                                <colgroup>
                                    <col style="width:112pt">
                                    <col style="width:103pt">
                                    <col style="width:43pt">
                                    <col style="width:89pt">
                                    <col style="width:269pt">
                                    <col style="width:38pt">
                                    <col style="width:146pt">
                                </colgroup>
                                <tbody>
                                    <tr style="height:51pt">
                                        <td colspan="7" class="xl_1st"><a>多重度は、親要素が出現した場合の多重度。たとえばある子要素の多重度が1..1であっても親要素が出現しない場合にはその子要素は出現しない。逆に親要素が出現する場合には、この子要素は出現しなければならない。</a></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_2nd_l" style="background:#D9D9D9;">要素Lv1</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">要素Lv2</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">多重度</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">型</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">説明</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">固定値
／例示</td>
                                        <td class="xl_2nd_r" style="background:#D9D9D9;">固定値 または例示</td>
                                    </tr>
                                    <tr style="height:36pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">resourceType</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleリソースであることを示す</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundle</td>
                                    </tr>
                                    <tr style="height:34pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このリソースのメタ情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:56pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">lastUpdated</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz (例. 2015-02-07T13:28:17.239+09:00)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:23pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">profile[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本プロファイルが従うプロファイル</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:126pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">profile[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">canonical(StructureDefinition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本プロファイルを識別するURLとバージョンを指定する。
http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Bundle_ePCS|x.y.z　を設定する(|x.y.z は（U+007C）パイプ文字（縦棒文字）とバージョンx.y.zを指定する)。|x.y.z　のバージョン表記は省略可能で、省略した場合には、受信側により受信時点での最新バージョンに準拠しているとみなされる。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値(x.y.zは置き換える)</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS|x.y.z"</td>
                                    </tr>
                                    <tr style="height:131pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この文書Bundleの一意の識別子。Bundle作成時にシステムが設定する。本文参照のこと。本文書を電子カルテ情報共有サービスに送信する場合は、その仕様に従うこと。
Bundleリソースのidentifier要素は、電子カルテ情報共有サービス側で保存される。送信側は、後続の送信においてこのidentifierを指定することで、受信側は過去に受信したBundleリソースを特定し、それに含まれていた全データについて削除、更新などの処理を行うためにこれを使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:42pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値　"http://jpfhir.jp/fhir/clins/bundle-identifier"を設定する。 </td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/clins/bundle-identifier</td>
                                    </tr>
                                    <tr style="height:36pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文 6情報送信仕様--Bundleリソースを識別するIdentifier要素-- に記載の[Bundle-ID]の仕様とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1311234567^2020^00123456"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BundleリソースがDocumentタイプであることを示す</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">document</td>
                                    </tr>
                                    <tr style="height:56pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timestamp</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。値は例示。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">2021-02-01T13:28:17.239+09:00</td>
                                    </tr>
                                    <tr style="height:36pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleに含まれる全リソースエントリを格納する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Compositionリソース（Bundleに含まれる全リソースエントリの参照リスト）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Compositionリソース(JP_Composition_ePCS)</td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">fullUrl</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">リソースを外部から参照するためのURL形式のUUID</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:94pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">resource</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">resource(Composition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">リソースそのものを{…}で記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">{"resourceType": "Composition",
"id" : "compositionPCSExample01Inline",… }</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">患者情報エントリ</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Patientリソース(JP_Patient_eCS)</td>
                                    </tr>
                                    <tr style="height:38pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">上と同様（以降、省略）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">作成者の情報（医師情報）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Practitionerリソース(JP_Practitioner_eCS)</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">文書作成医療機関（診療科情報を拡張に含む）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Organizationリソース(JP_Organization_eCS)</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">文書作成時の受診時状況（外来、入院の区分）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Encounterリソース(JP_Encounter_eCS)</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">療養計画の情報（内容はテキストで記述）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">CarePlanリソース(JP_CarePlan_ePCS)</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_last_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..*</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">傷病名（主傷病名、副傷病名の別情報を含む）</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_r" style="color:#000000; background:#FFFFFF; font-weight: normal">Conditionリソース(JP_Condition_eCS)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
