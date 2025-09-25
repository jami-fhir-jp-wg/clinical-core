    <div class="segment">
        <div class="container">
            <div class="row">
                <div class="inner-wrapper">
                    <div class="col-12">
                        <div class="htmlTable">
                            <table style="border-collapse:collapse;table-layout:fixed;">
                                <colgroup>
                                    <col style="width:73pt">
                                    <col style="width:62pt">
                                    <col style="width:55pt">
                                    <col style="width:91pt">
                                    <col style="width:91pt">
                                    <col style="width:33pt">
                                    <col style="width:65pt">
                                    <col style="width:269pt">
                                    <col style="width:27pt">
                                    <col style="width:146pt">
                                </colgroup>
                                <tbody>
                                    <tr style="height:46pt">
                                        <td colspan="10" class="xl_1st"><a>多重度は、親要素が出現した場合の多重度。たとえばある子要素の多重度が1..1であっても親要素が出現しない場合にはその子要素は出現しない。逆に親要素が出現する場合には、この子要素は出現しなければならない。</a></td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_2nd_l" style="background:#D9D9D9;">要素Lv1</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">要素Lv2</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;">要素Lv3</td>
                                        <td class="xl_2nd_m" style="background:#D9D9D9;"></td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold">Conditionリソースであることを示す。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Condition"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">canonical(StructureDefinition)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本プロファイルを識別するURLとバージョンを指定する。
http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|x.y.z　を設定する(|x.y.z は（U+007C）パイプ文字（縦棒文字）とバージョンx.y.zを指定する)。|x.y.z　のバージョン表記は省略可能で、省略した場合には、受信側により受信時点での最新バージョンに準拠しているとみなされる。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値(x.y.zは置き換える)</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|x.y.z"
</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本リソースのタグ情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報共有サービスで長期保存フラグの設定する場合に使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報共有サービスで長期保存フラグの設定する場合に使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">長期保存フラグ</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"LTS"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報サービスで未告知フラグを設定する場合に使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">未告知フラグ</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"UNINFORMED"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報サービスで未提供フラグを設定する場合に使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">未提供フラグ</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"UNDELIVERED"</td>
                                    </tr>
                                    <tr style="height:27pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Containedリソース</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Encounter_eCS)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院外来区分情報。encounter要素から参照されるJP_Encounter_eCSリソースの実体。JP_Encounter_eCSリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounter_eCSリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分）を記述して使用する。<span   class="font_red font_bold">電子カルテ情報サービスでは必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Practitioner  )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">傷病名登録者情報。recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">電子カルテ情報サービスでは、作成発行した医療機関番号や診療科情報を記述する拡張。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本情報を作成発行した医療機関の識別番号を記述するために使用する拡張「eCS_InstitutionNumber」。
本情報は、ServiceRequestの要素として記述することも可能であるが、その場合もこの拡張で記述することとする。
<span   class="font_red font_bold">電子カルテ情報サービスでは、この拡張による記述は必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本情報を作成発行した医療機関の識別番号を記述するための拡張を識別するURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber"</td>
                                    </tr>
                                    <tr style="height:35pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueIdentifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医療機関識別情報。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueIdentifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医療機関１０桁番号を示すURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueIdentifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医療機関１０桁番号。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1318814790"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本情報を作成発行した診療科または作成発行者の診療科情報を記述するために使用する拡張「eCS_Department」。<span   class="font_red font_bold">電子カルテ情報サービスでは、この拡張による記述は必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診療科情報を記述するために使用する拡張を識別するURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_Department"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診療科情報。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診療科のコード化記述。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI(SS-MIX2) 診療科コード表のURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI(SS-MIX2) 診療科コード。2桁コードだけを使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"08"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI(SS-MIX2) 診療科2桁コードでのコードに対応する表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"循環器科"</td>
                                    </tr>
                                    <tr style="height:71pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード化の有無に関わらず、当該医療機関の情報システムのマスターで定められた診療科名称の文字列（文字数の長さにより複数ある場合には、最も短い文字列）。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"循内"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">主傷病フラグのある傷病名であることを記述するための拡張「eCS_DiagnosisType」。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">主傷病であることを記述するために使用する拡張を識別するURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_DiagnosisType"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診断タイプ情報。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診断タイプのコード化記述。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:51pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">HL7 FHIR Claimリソースで用いられる診断タイプコードのURLを使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/ex-diagnosistype"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">主傷病コードとして、principal　を設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"principal"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このリソース情報の識別ID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">リソース一意識別ID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」のsystem値を固定で設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://sample.jp/fhir/1311234567/ehr2020/condition/0008363939-20210826-002"</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">臨床的状態。病名最終日（abatementDateTime)での状態（転帰）。コードでの記述は必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。<span   class="font_red font_bold">'entered-in-error'以外では、必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">臨床的状態のステータスのコード化情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードで記述が必須で、少なくともひとつのsystem値は固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/condition-clinical"</td>
                                    </tr>
                                    <tr style="height:105pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード表　http://terminology.hl7.org/CodeSystem/condition-clinical　から　active（存続）, remission(寛解), resolved (軽快または治癒) 、unknown（不明）のいずれかを選ぶ。<span   class="font_red font_bold">電子カルテ情報共有サービスでは、recurrence、relapse、inactiveは使用しない。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"active"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Active|Remission|Resolved|Unknownのいずれかの文字列。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Active"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">clinicalStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードだけでは記述できない情報がある場合にコードと併用してもよい。値が使用されない可能性はある。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コード化記述が必須。clinicalStatusとの制約条件を参照のこと。<span   class="font_red font_bold">疑い病名フラグとしても使用される。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">臨床的状態に対する検証状況のコード化情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードで記述が必須で、少なくともひとつのsystem値は固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/condition-ver-status"</td>
                                    </tr>
                                    <tr style="height:210pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">疑い病名フラグがない病名には、confirmed を設定するが、一度登録された病名を取り消した場合やそれが入力エラーであったことを明示したい場合には、refuted（取り消された病名）、entered-in-error（誤って登録された病名）のいずれかを設定することもできる。
疑い病名フラグのある病名には、unconfirmed を必ず設定する。<span   class="font_red font_bold">なお、電子カルテ情報共有サービスでは、confirmed、unconfirmed以外の病名に対してはその情報は保存されるが、利用されたり表示されたりすることはない。過去の登録病名情報に対して削除や取り消しなどの処理を行うために使われることもないため、refutedやentered-in-errorをつけて送信しても過去に送信した病名を取り消すことはできない。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"unconfirmed"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Unconfirmed|Confirmed|Refuted|EnteredinErrorのいずれかの文字列。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Unconfirmed"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">verificationStatus</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードだけでは記述できない情報がある場合や、コード化できない場合には本要素だけで記述してもよい。コードと併用してもよい</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:66pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">臨床的状態に割り当てられたカテゴリー。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:66pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">臨床的状態に割り当てられたカテゴリーで、problem-list-item （プロブレムリスト）| encounter-diagnosis （診察時点での診断名）のいずれかを設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">カテゴリーのコード記述</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">臨床的状態のカテゴリーを識別するURL。"http://terminology.hl7.org/CodeSystem/condition-category"を設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/condition-category"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報共有サービスでは、'encounter-diagnosis'を設定すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"encounter-diagnosis"</td>
                                    </tr>
                                    <tr style="height:80pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードencounter-diagnosisに対応するdisplay nameとしては、"Encounter Diagnosis"を設定する。（電子カルテ情報共有サービス以外で使用するコードproblem-list-itemに対応するのは"Problem List Item"）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Encounter Diagnosis"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">	傷病名のコードと名称。code.textには病名入力文字列を必ずそのまま設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名の前置修飾語または後置修飾語をあれば、それぞれ用の拡張を用いて記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名の前置修飾語があればその数だけ繰り返しで記述する。登録順序は原則として配列順とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名の前置修飾語を格納するための拡張(JP_Condition_DiseasePrefixModifier_eCS)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePrefixModifier"</td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">前置修飾語のコード記述。コード化できない修飾語の場合にはtext要素だけで記述してもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">前置修飾語のコード記述</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:176pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">前置修飾語のコードsystem値。MEDIS標準病名マスタの「修飾語管理番号」を必ず使用する。これ以外に他のコードを併用しても構わない。（参考：MEDIS標準病名マスタの「修飾語交換用コード」：http://medis.or.jp/CodeSystem/master-disease-modExCode
同「修飾語管理番号」: http://medis.or.jp/CodeSystem/master-disease-modKeyNumber
レセプト電算用修飾語コード: http://jpfhir.jp/fhir/core/mhlw/CodeSystem/masterZ-disease-modifier）
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://medis.or.jp/CodeSystem/master-disease-modKeyNumber"</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">version</td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードマスターのバージョン文字列。設定することを推奨する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"20240601"</td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">前置修飾語のコード</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">前置修飾語のコードに対応する文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">前置修飾語はコードに対応する文字列では不十分な場合や、コード化できない場合に、フルテキストを記述することができる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名の後置修飾語があればその数だけ繰り返しで記述する。登録順序は原則として配列順とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名の後置修飾語を格納するための拡張(JP_Condition_DiseasePostfixModifier_eCS)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier"</td>
                                    </tr>
                                    <tr style="height:47pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">後置修飾語のコード記述。コード化できない修飾語の場合にはtext要素だけで記述してもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">後置修飾語のコード記述</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">後置修飾語のコードsystem値
前置修飾語と同じ。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://medis.or.jp/CodeSystem/master-disease-modKeyNumber"</td>
                                    </tr>
                                    <tr style="height:44pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">version</td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードマスターのバージョン文字列。設定することを推奨する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"20240601"</td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">後置修飾語のコード</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:41pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">後置修飾語のコードに対応する文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">後置修飾語はコードに対応する文字列では不十分な場合やコード化できない場合に、フルテキストを記述することができる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:64pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名本体部分（extensionを使用して記述した前置修飾語、後置修飾語を除く部分）のコード記述。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:64pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:188pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">MEDIS標準病名マスター「病名管理番号」（system値は"http://medis.or.jp/CodeSystem/master-disease-keyNumber"）を必ず使用する。なお、病名のコード化ができない場合には、病名管理番号と同じ桁数の全桁9の文字列を設定する。これに加えて、病名管理番号以外のコード記述を併用しても構わない。(参考：MEDIS 標準病名マスター「病名交換コード」：http://medis.or.jp/CodeSystem/master-disease-exCode、ICD10分類コード：http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full、レセプト電算処理用傷病名コード：http://jpfhir.jp/fhir/core/mhlw/CodeSystem/masterB-disease）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://medis.or.jp/CodeSystem/master-disease-keyNumber"</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">version</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">電子カルテ情報共有サービスに送信する場合には、コーディングに使用したコードシステムのバージョン文字列（電子カルテ情報共有サービス運用者から公開される）を設定することを原則とする。設定していない場合には、送信時の最新版を使用しているとみなされて検証される。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"20240601"</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">病名本体部分のコード。前置修飾語と後置修飾語については前出の拡張を用いて記述する。なお、新出現病態や特殊な疾患で適切な既存コードが存在しないなどのためにコード化ができない例外的な場合には、同一桁数でオール9のコードを使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"20064049"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードに対応する表示名。オール９のコードの場合には"未コード化傷病名"という文字列を固定で設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"十二指腸潰瘍"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">傷病名の元の入力文字列。前置修飾語、後置修飾語も含めて電子カルテ上での表示（入力）文字列全体を設定する。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"十二指腸潰瘍・H1期"</td>
                                    </tr>
                                    <tr style="height:105pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">bodySite[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">(CodeableConceptの子要素の仕様を省略)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">該当する状態が現れている解剖学的な場所を示す。
system値はMEDIS標準病名マスター修飾語交換用コードを使用する場合の例示。"1244"は、MEDIS標準病名マスター修飾語交換用コードで"腹部"のコード。"腹部"はそのテキスト記述の例。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">.coding[+].system = .coding[=]."http://medis.or.jp/CodeSystem/master-disease-modExCode"
.coding[=].code = "1244"
.coding[=].display ="腹部"
.text"腹部"</td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">subject</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(JP_Patient )
電子カルテ情報サービスでは、Reference(JP_Patient_eCS)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">患者のFHIRリソースへの参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照） 」に従う。</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">encounter</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference (JP_Encounter_eCS )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。<span   class="font_red font_bold">電子カルテ情報サービスでは必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:270pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">(onset)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">（dateTime、Age、Period、Range、string）のいずれかの型をとる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この傷病名情報が同定された時期。患者にこの傷病が出現した時期、あるいはなんらかのエビデンスによりこの傷病が患者にあると確認できた時期を記述する。電子カルテシステムの病名開始日をdateTime型で記述するのが一般的な方法である。<span   class="font_red font_bold">電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名開始日をdateTime型で記述する。</span>
記録を登録した日時は、別途recordedDateに記述する。記述方法として、1時点の日時、患者の年齢（曖昧な年齢時期の記述も可能）、開始時期と終了時期による期間、年齢の区間、（なんらかの出来事を引用して記述するような）文字列で時期を記述、の5通りのいずれかの要素（onsetDateTime、onseAge、onsetPeriod、onsetRange、onsetString）からひとつの記述方法を選択して、それにより記述する。複数を選択はできない。onset要素は記述しないで、直接onsetDateTime要素などonsetXXXXの要素により記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:138pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetDateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">一時点の記述方式：
日付または日時。年や年月だけでもよい。例：2018,1973-06,1905-08-23,2015-02-07T13:28:17+09:00。
時刻に24:00の使用はできない。
<span   class="font_red font_bold">電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名開始日をdateTime型で記述することが必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2018"
"1973-06"
"1989-08-23"
"2015-02-07T13:28:17+09:00"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetAge</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Age</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">年齢や年齢を基準にして記述する方式：
患者の申告による、状態が出現し始めた年齢。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">50歳 の例 、50歳 以上 の例 を以下 に示 す。</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetAge</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">年齢の値。月齢や週齢なども可能。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"50"</td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetAge</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">comparator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueの値と等しい年齢を表現したい場合には、=は不要でこの要素は出現しない。
そうでない指定をしたい場合には、<、<=、>=、>のいずれか。
要素valueの値の解釈方法。例では、「50歳以上で」と記述したい場合には、>=を記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">">="</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetAge</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位表現。文字列で単位文字列を記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"歳"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetAge</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系UCUMコード体系。固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetAge</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"a"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetPeriod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Preiod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">期間。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetPeriod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">start</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">期間の開始日時</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetPeriod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">end</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">期間の終了日時</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Range</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">曖昧な時期を最小値と最大値とで記述する。以下の記述例は50歳台。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">SimpleQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">下限値表現</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">年齢の値。月齢や週齢なども可能</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"50"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位表現</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"歳"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系UCUMコード体系。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"a"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">high</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">SimpleQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">high</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">年齢の値。月齢や週齢なども可能</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"59"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">high</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位表現</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"歳"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">high</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系UCUMコード体系。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetRange</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">high</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系における単位コード。min：minutes、h：hours、d：days、wk：weeks、mo：months、a：years</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"a"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">onsetString</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">｀</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"70歳台"</td>
                                    </tr>
                                    <tr style="height:210pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">（abatement）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">（dateTime、Age、Period、Range、string）のいずれかの型をとる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この傷病名情報による患者状態が終了したと同定された時期。患者にこの傷病のある状態が終了した時期、あるいはなんらかのエビデンスによりこの傷病のある状態が改善もしくはある状態になったと確認できた時期を記述する。<span   class="font_red font_bold">電子カルテシステムの病名終了日をdateTime型で記述するのが一般的な方法である。電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名終了日をdateTime型で記述する。この終了日における転帰情報をclinicalStatus要素に記述すること。この日付がある場合のclinicalStatus要素は"active","unknown"以外の値でなければならない。</span>
abatement要素は記述しないで、直接abatementDateTime要素などabatementXXXXの要素により記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:135pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">abatementDateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">一時点の記述方式：
日付または日時。年や年月だけでもよい。例：2018,1973-06,1905-08-23,2015-02-07T13:28:17+09:00。
時刻に24:00の使用はできない。
dateTime以外の方法で記述したい場合には、oncet要素の説明を参照のこと。<span   class="font_red font_bold">電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合には、病名終了日をdateTime型で記述することが必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1989-08-23"
</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">recordedDate</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この状態が記録された日時。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1989-08-23"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">recorder</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2EFDA; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(JP_Practitioner )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この状態を記録した人の情報への参照。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:105pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">asserter</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(JP_Patient| JP_Practitioner| |RelatedPerson|)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この状態があると確認（主張）した人の情報を記述しているJP_Patient、JP_Practitioner、RelatedPersonのいずれかのリソースへの参照。
本仕様ではこの情報を記録しないが、記録したい場合にはPractitionerへの参照におけるdisplay子要素だけとし、別のリソースへの参照をしない。（新たなリソースによる追加記述を避けるため）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">{
    "type": "Practitioner",  
    "display": "患者の母"
}</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">stage[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この状態の臨床的ステージやグレード表現。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:48pt">
                                        <td class="xl_l" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">stage</td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">summary</td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">(CodeableConceptの子要素の仕様を省略)</td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">system値はMEDIS標準病名マスター修飾語交換用コードを使用する場合の例示。"1244"は、MEDIS標準病名マスター修飾語交換用コードで"第１期"のコード。"第１期"はそのテキスト記述の例。</td>
                                        <td class="xl_m" rowspan="3" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://medis.or.jp/CodeSystem/master-disease-modExCode"</td>
                                    </tr>
                                    <tr style="height:48pt">
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"32GR"</td>
                                    </tr>
                                    <tr style="height:48pt">
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"第１期"</td>
                                    </tr>
                                    <tr style="height:108pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">stage</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">assessment[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(ClinicalImpression | DiagnosticReport | Observation)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">ステージ情報の根拠となる診断レポートや検査結果、または臨床評価情報への参照する。記述方法は、「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">「診療情報・サマリー汎用リソース外部参照仕様」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">stage</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">(CodeableConceptの子要素の仕様を省略)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">ステージ分類の種類。病理学的分類、臨床分類、TNM肺癌分類、など。当面コーディングをせず、text記述だけ必要に応じて行う。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">evidence[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">状態を確認または反駁した証拠など、状態の検証ステータスの基礎となる裏付けとなる証拠/兆候。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">evidence[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">(CodeableConceptの子要素の仕様を省略)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">状態を裏付ける症状や所見。system値はMEDIS標準病名マスター病名交換用コードを使用する場合の例示。"BOEF"は、MEDIS標準病名マスター病名交換用コードで"持続腹痛"のコード。"持続腹痛"はそのテキスト記述の例。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://medis.or.jp/CodeSystem/master-disease-exCode"
"B0EF"
"持続腹痛"
"長く続く腹部の痛み"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">患者状態に関する追加的な情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">author</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">author</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">authorString</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"病理検査担当者"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">time</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この追加的な情報が作成された日時。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_last_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">markdown</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。</td>
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
