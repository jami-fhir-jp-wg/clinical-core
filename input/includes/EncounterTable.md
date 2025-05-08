    <div class="segment">
        <div class="container">
            <div class="row">
                <div class="inner-wrapper">
                    <div class="col-12">
                        <div class="htmlTable">
                            <table style="border-collapse:collapse;table-layout:fixed;">
                                <colgroup>
                                    <col style="width:88pt">
                                    <col style="width:64pt">
                                    <col style="width:65pt">
                                    <col style="width:55pt">
                                    <col style="width:26pt">
                                    <col style="width:65pt">
                                    <col style="width:269pt">
                                    <col style="width:27pt">
                                    <col style="width:146pt">
                                </colgroup>
                                <tbody>
                                    <tr style="height:40pt">
                                        <td colspan="9" class="xl_1st"><a>多重度は、親要素が出現した場合の多重度。たとえばある子要素の多重度が1..1であっても親要素が出現しない場合にはその子要素は出現しない。逆に親要素が出現する場合には、この子要素は出現しなければならない。</a></td>
                                    </tr>
                                    <tr style="height:75pt">
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
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">resourceType</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold">Encounterリソースであることを示す。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Encounter"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:255pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">lastUpdated</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz
この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2015-02-07T13:28:17.239+09:00"</td>
                                    </tr>
                                    <tr style="height:35pt">
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
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">canonical(StructureDefinition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本プロファイルを識別するURLとバージョンを指定する。
http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Encounter_eCS|x.y.z　を設定する(|x.y.z は（U+007C）パイプ文字（縦棒文字）とバージョンx.y.zを指定する)。|x.y.z　のバージョン表記は省略可能で、省略した場合には、受信側により受信時点での最新バージョンに準拠しているとみなされる。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値(x.y.zは置き換える)</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Encounter_eCS|x.y.z"
</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">リソース一意識別ID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:35pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」のsystem値を固定で設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier</td>
                                    </tr>
                                    <tr style="height:62pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://sample.jp/fhir/1311234567/ehr2020/encounterImp/0008363939-20210822020301-0203"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">status</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この情報のステータス。EncounterStatus(http:// hl7.org/fhir/ValueSet/encouner-status)より"finished"を指定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"finished"</td>
                                    </tr>
                                    <tr style="height:34pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院または受診イベントの分類情報。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード体系v3.ActEncounterCodeを識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology. hl7.org/CodeSystem/v3-ActCode"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「IMP:入院(inpatient Encounter)」または、「AMB:外来受診(ambulatory)」。退院時サマリーで退院時を記述する場合には"IMP"を使用する。INPではなくIMPであることに注意。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"IMP"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">"IMP"に対応する"入院"、または"AMB"に対応する"外来"など。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"入院"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この入院期間までの外来受診履歴や入院履歴を記述したい場合にここに繰り返しで記述する。紹介先受診情報では不要。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:27pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:25pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">受診イベントの分類</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード体系v3.ActEncounterCodeを識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology. hl7.org/CodeSystem/v3-ActCode"</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「IMP:入院(inpatient Encounter)」または、「AMB:外来受診(ambulatory)」
退院時サマリーで退院時を記述する場合には"IMP"を使用する。
* INPではなくIMPであることに注意。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"IMP"</td>
                                    </tr>
                                    <tr style="height:27pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">class</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">"IMP"に対応する"入院"、または"AMB"に対応する"外来"など。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"入院"</td>
                                    </tr>
                                    <tr style="height:23pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院期間、外来受診日を記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">start</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">上記イベントの開始日時。入院の場合には入院日、外来受診の場合には外来受診日。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2020-08-21"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">classHistory[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">end</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">上記イベントの終了日時。入院の場合には退院日、外来受診の場合には不要。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2020-08-24"</td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Priod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院期間、受診イベント期間。退院時サマリーでは必須。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">start</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この入院の入院日時。外来受診の場合には外来受診日。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2020-09-01"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">end</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この入院の退院日時。外来受診の場合には不要。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2020-09-18"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">length</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Duration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この入院の在院日数。外来受診の場合には不要。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">length</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">在院日数。値は例示。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">7</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">length</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">在院日数の単位文字列。固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"日"</td>
                                    </tr>
                                    <tr style="height:29pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">length</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位コードUCUMのコード体系を識別するURI</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">length</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">日を意味する単位コード「d」。固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"d"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このEncounterが発生した事由、理由。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:111pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院時主訴・入院理由、外来受診理由、診療情報提供理由など。
診療情報提供書の場合、情報提供の理由（主訴・目的）。
コードで記述できる場合にはそのコード記述。

<span   class="font_red font_bold">診療情報提供書の場合、text要素で情報提供の理由を自由記述することが必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:51pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院時主訴・入院理由、外来受診理由、診療情報提供理由などのコード化情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:89pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード記述のコードシステムURL</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">MEDIS標準病名マスター病名交換用コードを使う場合のsystem値："持続腹痛"のコード。"http://medis.or.jp/CodeSystem/master-disease-exCode"</td>
                                    </tr>
                                    <tr style="height:24pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード記述のコード</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"BOEF"　</td>
                                    </tr>
                                    <tr style="height:24pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード記述のコードに対応する表示文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"持続腹痛"</td>
                                    </tr>
                                    <tr style="height:24pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">reasonCode[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院時主訴・入院理由、情報提供理由などのテキスト記述</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:24pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院期間中の診断情報。診療情報提供書では不要。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Condition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">condition</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Condition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">患者状態（病態・疾患名・症状）への参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">参照先のリソースの記述方式により、実装ガイド本文の「リソースへの参照方法」（１）または（２）を採用する。</td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">use</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診断の位置付け区分。
（DiagnosisRole）。これにより、入院時診断、退院時診断、などが区別される。入院中のすべての診断病名にこのコードが必須ではないが、少なくともAD:入院時診断、DD:退院時診断、CC:主訴、についてはそれぞれ1個以上はこのコードがついている必要がある。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">use</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">同じ診断名に複数の診断位置付けコードをつけることができる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">use</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:58pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">use</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診断位置付けValueSet（FHIR準拠の場合のコード表）からコードを使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/diagnosis-role"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">use</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">AD:入院時診断、DD:退院時診断、CC:主訴、CM:併存症診断、pre-op:術前診断、post-op:術後診断、billing:会計請求診断（FHIR準拠の場合のコード表）。値は例示。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"DD"</td>
                                    </tr>
                                    <tr style="height:26pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">use</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードに対する名称。値は例示。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"退院時診断"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">diagnosis[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rank</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">positiveInt</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">同じ診断位置付け内での順序数値（1から順）。順序は医療者の意図によりつけてよい。値は例示。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">1</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入退院詳細情報。診療情報提供書では不要。退院時サマリーでは必須。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">origin</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Location | Organization)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院前の所在場所または施設への参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">参照先のリソースの記述方式により、実装ガイド本文の「リソースへの参照方法」（１）または（２）を採用する。</td>
                                    </tr>
                                    <tr style="height:135pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">admitSource</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院経路を表すコード情報。値は例示。system値は固定値。
（出典：厚労省DPC導入影響評価調査）
0 院内の他病棟からの転棟
1 家庭からの入院
4 他の病院・診療所の病棟からの転院
5 介護施設・福祉施設に入所中
8 院内で出生
9 その他</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system値：固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/eCS/CodeSystem/admit-Source</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">reAdmission</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">再入院の場合の再入院種類。当面未使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">specialCourtesy</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">特別配慮を要する入院。VIP、職員、医療専門職といった区分。当面未使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">SpecialArrangement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">特別調整を要する入院。車椅子、増設ベッド、通訳、付き添い、盲導犬等の必要性。当面未使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">destination</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Location | Organization)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">退院先場所または施設への参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">参照先のリソースの記述方式により、実装ガイド本文の「リソースへの参照方法」（１）または（２）を採用する。</td>
                                    </tr>
                                    <tr style="height:135pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hospitalization</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dischargeDisposition</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">退院時転帰コード情報。コード表は暫定（出典：厚労省DPC導入影響評価調査）
1:傷病が治癒・軽快
3:傷病（白血病、潰瘍性大腸炎、クローン病等）が寛解
4:傷病が不変
5:傷病が増悪
6:傷病による死亡
7:傷病以外による死亡
9:その他（検査入院,正常分娩及び人間ドック含む）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system値：固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/eCS/CodeSystem/discharge-disposition</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院中の所在場所（病棟病室など）。診療情報提供書では不要。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">location</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Location)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院中の所在場所（病棟病室など）への参照。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">status</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">planned | active | reserved | completed のいずれかであるが、退院時サマリーの場合には、"completed"。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"completed"</td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">physicalType</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">所在場所のタイプ。system値は固定値。
bu: 建物
wa: 病棟
ro: 病室
bd: ベッド
area: エリア　など。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system値：固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/location-physical-type"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">preiod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">所在期間</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">preiod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">start</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">所在期間の開始日時</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:16pt">
                                        <td class="xl_last_l" style="color:#000000; background:#FFFFFF; font-weight: normal">location[=]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">preiod</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">end</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">所在期間の終了日時</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
