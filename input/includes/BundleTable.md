    <div class="segment">
        <div class="container">
            <div class="row">
                <div class="inner-wrapper">
                    <div class="col-12">
                        <div class="htmlTable">
                            <table style="border-collapse:collapse;table-layout:fixed;">
                                <colgroup>
                                    <col style="width:80pt">
                                    <col style="width:55pt">
                                    <col style="width:91pt">
                                    <col style="width:91pt">
                                    <col style="width:47pt">
                                    <col style="width:65pt">
                                    <col style="width:269pt">
                                    <col style="width:37pt">
                                    <col style="width:146pt">
                                </colgroup>
                                <tbody>
                                    <tr style="height:51pt">
                                        <td colspan="9" class="xl_1st"><a>多重度は、親要素が出現した場合の多重度。たとえばある子要素の多重度が1..1であっても親要素が出現しない場合にはその子要素は出現しない。逆に親要素が出現する場合には、この子要素は出現しなければならない。</a></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_2nd_l" style="background:#D9D9D9;">要素Lv1</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">要素Lv2</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">要素Lv3</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">要素Lv4</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">多重度</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">型</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">説明</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">固定値 
／ 例 示</td>
                                        <td class="xl_2nd_r" style="background:#D9D9D9;">固定値 または例示</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">resourceType</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleリソースであることを示す。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Bundle"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このリソースのメタ情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:255pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">lastUpdated</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz
この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2015-02-07T13:28:17.239+09:00"</td>
                                    </tr>
                                    <tr style="height:23pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">profile[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本プロファイルが従うプロファイル</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">profile[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">canonical(StructureDefinition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本プロファイルを識別するURLとバージョンを指定する。
http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Bundle_CLINS|x.y.z　を設定する(|x.y.z は（U+007C）パイプ文字（縦棒文字）とバージョンx.y.zを指定する)。|x.y.z　のバージョン表記は省略可能で、省略した場合には、受信側により受信時点での最新バージョンに準拠しているとみなされる。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値(x.y.zは置き換える)</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS|x.y.z</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本リソースのメタデータ。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報共有サービスでBundleリソースに含まれる６情報リソースタイプをmeta.tag要素に記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:63pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値 http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS　を設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS</td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleリソースに含まれる６情報リソースカテゴリーのいずれかをhhttp://jpfhir.jp/fhir/clins/ValueSet/BundleResourceType_VSのValuseSetから設定する。
具体的には、"AllergyIntolerance"、"Condition"、"Observation"、"MedicationRequest"　のいずれかの値を設定する。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Observation"</td>
                                    </tr>
                                    <tr style="height:131pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この文書Bundleの一意の識別子。Bundle作成時にシステムが設定する。
Bundleリソースのidentifier要素は、電子カルテ情報共有サービス側で保存される。送信側は、後続の送信においてこのidentifierを指定することで、受信側は過去に受信したBundleリソースを特定し、それに含まれていた全データについて削除、更新などの処理を行うためにこれを使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:42pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値　"http://jpfhir.jp/fhir/clins/bundle-identifier"を設定する。 </td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/clins/bundle-identifier</td>
                                    </tr>
                                    <tr style="height:36pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文 6情報送信仕様--Bundleリソースを識別するIdentifier要素-- に記載の[Bundle-ID]の仕様とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1311234567^2020^00123456"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleリソースのタイプ。本仕様では"collection"固定とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"collection"</td>
                                    </tr>
                                    <tr style="height:62pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timestamp</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2021-02-01T13:28:17.239+09:00"</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleに含まれる全リソースエントリを格納する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:34pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Patientリソース</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:94pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">fullUrl</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">エントリリスト内の各リソースを一意に識別するためのUUID。この要素は、第1リソースであるPatientリソースのentryのUUIDで、他のentryに記述されるリソースからこのPatientリソースを参照するときに、このUUIDを記述することで参照する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"urn:uuid:179f9f7f-e546-04c2-6888-a9e0b24e5720"</td>
                                    </tr>
                                    <tr style="height:225pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">resource</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Patient_eCS)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JP_Patient_eCS profileに準拠したPatientリソース。最初のリソースentryはこのPatientリソースであることが必須。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">{
        "resourceType": "Patient",
        "id": "InlineExample-Patient-standard",
        "meta": {
          "profile": [
            "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Patient_eCS"
          ]
        }, 
＜以降省略＞</td>
                                    </tr>
                                    <tr style="height:62pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">各リソースのエントリー。すでに送信済みのBundleリソースを削除するためにこのBundleリソースを送信する場合には、最初のentry(Patientリソース）だけを設定し、これ以降のリソースは不要である。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:44pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">fullUrl</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">エントリリスト内の各リソースを一意に識別するためのUUID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"urn:uuid:1304f64f-4e45-be12-ddd6-fab7895db0c3"</td>
                                    </tr>
                                    <tr style="height:226pt">
                                        <td class="xl_last_l" style="color:#000000; background:#FFFFFF; font-weight: normal">entry[=]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">resource</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Conditon_eCS|JP_Observation_LabResult_eCS|JP_AllergyIntorellance_eCS)</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このBundleリソースが格納するリソースのprofileに準拠したリソース。6情報のうち傷病名、薬剤アレルギー、その他アレルギー、検体のいずれか。処方は６情報送信においては送信対象となっていない。
同一のBundleリソースに格納されるすべてのentryは、Patientリソースを除き同一のリソース種別、同一のプロファイルに準拠していなければならない。</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_last_r" style="color:#000000; background:#FFFFFF; font-weight: normal">{
        "resourceType": "Observation",
        "id": "InlineExample-Patient-standard",
        "meta": {
          "profile": [
            "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS"
          ]
        }, 
＜以降省略＞</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
