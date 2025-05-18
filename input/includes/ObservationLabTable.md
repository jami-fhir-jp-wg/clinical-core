    <div class="segment">
        <div class="container">
            <div class="row">
                <div class="inner-wrapper">
                    <div class="col-12">
                        <div class="htmlTable">
                            <table style="border-collapse:collapse;table-layout:fixed;">
                                <colgroup>
                                    <col style="width:79pt">
                                    <col style="width:69pt">
                                    <col style="width:55pt">
                                    <col style="width:91pt">
                                    <col style="width:35pt">
                                    <col style="width:65pt">
                                    <col style="width:269pt">
                                    <col style="width:27pt">
                                    <col style="width:146pt">
                                </colgroup>
                                <tbody>
                                    <tr style="height:49pt">
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
                                        <td class="xl_2nd_r" style="background:#D9D9D9;">値</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">resourceType</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold">Observationリソースであることを示す。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Observation"</td>
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
                                    <tr style="height:270pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">lastUpdated</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz (例. 2015-02-07T13:28:17.239+09:00)
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
http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.y.z　を設定する(|x.y.z は（U+007C）パイプ文字（縦棒文字）とバージョンx.y.zを指定する)。|x.y.z　のバージョン表記は省略可能で、省略した場合には、受信側により受信時点での最新バージョンに準拠しているとみなされる。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値(x.y.zは置き換える)</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.y.z"
</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[*]</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#FF0000; background:#FFFFFF; font-weight: bold">電子カルテ情報共有サービスで長期保存フラグの設定する場合に使用</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">meta</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">tag[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">長期保存フラグ</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"LTS"</td>
                                    </tr>
                                    <tr style="height:24pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Containedリソース</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:105pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Encounter )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">入院外来区分情報。encounter要素から参照されるJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分）を記述して使用する。<span   class="font_red font_bold">電子カルテ情報サービスでは必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Specimen )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">specimen要素(検体材料情報bの要素)から参照される場合には、そのJP_Specimenリソースの実体。JP_Specimenリソースにおける必要最小限の要素（type要素にJLAC10検体材料コード情報を設定するなど）だけが含まれればよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_Practitioner )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">performer要素から参照されるJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。検査オーダ医師のIDや氏名の情報などをこのリソースに記述する。<span   class="font_red font_bold">電子カルテ情報サービスでは必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:95pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">contained[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Resource(JP_ServiceRequest )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">basedOn要素から元のオーダ情報をServiceRequestとして記述してそれを参照する場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素、およびこの検査をオーダした医師の識別情報だけが含まれればよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">電子カルテ情報サービスでは、作成発行した医療機関番号や診療科情報を記述する拡張。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">本情報を作成発行した医療機関の識別番号を記述するために使用する拡張「eCS_InstitutionNumber」。
本情報は、ServiceRequestの要素として記述することも可能であるが、その場合もこの拡張で記述することとする。
<span   class="font_red font_bold">電子カルテ情報サービスでは、この拡張による記述は必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:67pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医療機関識別番号情報を記述するために使用する拡張を識別するURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueIdentifier</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医療機関１０桁番号。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1311234567"</td>
                                    </tr>
                                    <tr style="height:62pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診療科情報。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">診療科のコード化記述。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI 診療科コード表のURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI 診療科コード。2桁コード。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"08"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI 診療科コードでのコードに対応する表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"循環器科"</td>
                                    </tr>
                                    <tr style="height:73pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コード化の有無に関わらず、当該医療機関の情報システムのマスターで定められた診療科名称の文字列（文字数の長さにより複数ある場合には、最も短い文字列）。<span   class="font_red font_bold">電子カルテ情報サービスでは、この拡張による記述は必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"循内"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Identifier</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">このリソース情報の一意識別ID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:35pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」のsystem値を固定で設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">identifier[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://sample.jp/fhir/1311234567/ehr2020/observationLabo/0008363939-2021082603948-0006001"</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">basedOn</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(JP_ServiceRequest)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">元の検査オーダ情報。オーダ番号等の一意識別子を含む検査オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">status</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査・観察のステータス。使用するコード表："http://hl7.org/fhir/observation-status"から以下のみを使用することができる。
　registered : 結果未着
　preliminary : 暫定結果報告
　final : 最終結果報告
　corrected : 訂正報告
　cancelled : 検査中止</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"final"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果カテゴリー</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果カテゴリーのコーディング情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1*</td>
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
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果カテゴリーのコードシステム値で、固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果カテゴリーを表すコードで固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"laboratory"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">category[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果カテゴリーを表す表示名で固定値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"Laboratory"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査・観察の項目コード。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" rowspan="7" style="color:#000000; background:#FFFFFF; font-weight: normal">「医療機関から送信するFHIR仕様について」の「検体検査結果情報における検査項目のコーディング規則」を適用すること。電子カルテ情報共有サービス用でない場合も、特に他に明示的な理由がない限り、この規則を適用すること。また、versionを設定することを推奨する。</td>
                                        <td class="xl_m" rowspan="7" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" rowspan="7" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">version</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">subject</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(JP_Patient )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">対象となる患者のFHIRリソースへの参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照） 」に従う。</td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">encounter</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference (JP_Encounter )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。<span   class="font_red font_bold">電子カルテ情報サービスでは必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">effectiveDateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検体採取日または検体採取日時。
YYYY-MM-DD
YYYY-MM-DDThh:mm:ss+zz:zz</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">2021-09-05
日時を記述する場合には、2015-02-07T13:28:17+09:00 の形式。</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">issued</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">instant</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果提供システム日時（検査結果がシステムに格納された日時）　YYYY-MM-DDThh:mm:ss[.sss]+zz:zz (例. 2015-02-07T13:28:17.239+09:00) [  ]部分は省略可能。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">2022-02-07T13:28:17.239+09:00</td>
                                    </tr>
                                    <tr style="height:79pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">performer[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Practitioner)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果を責任を持つ医療者への参照。<span   class="font_red font_bold">電子カルテ情報サービスでは必須とし、オーダした医師（結果を確認した医師に相当）のPractitionerリソースへの参照を設定する。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:135pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">(value)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果や観察結果。
以下のvalueで始まる要素のひとつを選択して、それにより記述する。複数を選択はできない。
この項目自体は子項目をまとめるセット名（バッテリー名、例：血球算定など）の場合にはこの要素は出現しない。また、結果値が何らかの理由により得られなかった場合や、検査結果が未着（検査中または実施前）の場合にはこの要素は出現せず、dataAbsentReasonにその理由を記述する。それ以外では必ず出現する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Quantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果が数量で記述できる場合。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1.1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">数値(小数値、負数も可）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">193.04</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">comparator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">実際の値が、value要素値よりも大きい、あるいは小さい場合にその記号を記述する。"<"  "<="  ">="  ">" の
例：実際の値＜value要素値　の場合には "<"を記述する。"="は使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"<="</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"mg"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系 UCUMコード体系を推奨する（"http://unitsofmeasure.org"）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://unitsofmeasure.org</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位のコード記述による文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果がコード化されたコンセプトで記述できる場合。
定性検査値の場合などに使用する。質問項目の回答記号もコードと回答文字列とみなしてこの結果記述方法を使用することができる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果のコード化記述</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果のコード体系を表す。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果のコード</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueCodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果のコードに対応する結果文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"++"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">valueString</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果が可読文字列で記述できる場合。検体検査結果が文字列である場合に使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueBoolean</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">boolean</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が真偽値で記述できる場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueInteger</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">integer</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が整数値で記述できる場合。通常、検体検査結果には使用せず、valueQuantityで記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueRange</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">Range</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が数量の範囲で記述できる場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">Ratio</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が数量の比率で記述できる場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueSampleData</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">SampledData</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果がサンプリングデータの場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueTime</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">time</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が時刻・時間値の場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valueDateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が日時の場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#D0CECE; font-weight: normal">valuePeriod</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">0..0</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">Period</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal">結果が期間の場合。通常、検体検査結果には使用しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#D0CECE; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">dataAbsentReason</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value要素に結果を記述しない場合で検査結果値が欠落している場合には、その理由。コード化して設定することは一般に難しいのでcoding子要素は記述しなくてもよいが、text子要素は必須である。検査値が得られるはずの検査項目であるにもかかわらずvalue[x]要素に値がない場合には、この項目は必須。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">dataAbsentReason</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">理由の文字列。"検査中"、"未実施"、"検体凝固"、"検体量不足"、"溶血で実施できず"、"採血できず"、"検査機器エラー"などが想定される。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"検体量不足"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果値の評価コード情報。基準値よりHighなど。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果値の評価コード記述。基準値よりHighなど。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果値の評価コード表のsystem値で固定。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果値の評価コード。
H:High,L:Low,N:Normal のいずれかを使う。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"H"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果値の評価コードに対応する表示名</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"High"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">評価表示文字列</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"高"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">結果に関するコメントテキスト記述</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Annotation</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">author</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">記載者の情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">author</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">authorString</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">記載者氏名などの文字列。必ずしも氏名でなくてもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"検査室"</td>
                                    </tr>
                                    <tr style="height:26pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">time</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この追加的な情報が作成された日時。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">note[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">markdown</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。結果が報告されているが、結果コメントをつける場合に使用する。
"溶血"、"視算値"、"概算"、"参考値"などもこの要素で記述することができる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"溶血"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査手法を記述する必要がある場合に、Codingせずtext情報だけを必要に応じて記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査手法文字列。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">specimen</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(Specimen)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査における検体材料情報を記述しているSpecimenリソースへの参照。以下の方法でtypeとdisplayだけで記述することも可能である。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">containedリソースで記述した場合には、実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">specimen</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">参照するリソースタイプ　</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">例　"Specimen"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">specimen</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検体材料の文字列名称</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">例　"血清"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">推奨範囲として結果値を解釈するためのガイダンス。基準値範囲。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この患者のこの検査に対する基準値の下限値と上限値</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">SimpleQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">下限値と上限値を数値で別々に記述できる場合に使用。記述できない場合にはtext子要素で記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">下限値。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査下限値の単位。検査結果の単位と同じであること。単位のない数値結果の場合には省略する。電子カルテ情報共有サービスでの検査値の場合には、マスターに表示用単位があれば記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"mg/L"</td>
                                    </tr>
                                    <tr style="height:52pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位体系 UCUMコード体系。単位のない数値結果の場合には省略する。電子カルテ情報共有サービスでの検査値の場合には記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定値</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">low</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">検査結果単位コード。値は例示。単位のない数値結果の場合には省略する。電子カルテ情報共有サービスでの検査値の場合には、、マスターにXML単位コードがあれば記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"mg/L"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">high</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">impleQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">上限値。（low と同じ記述方法なので記載省略）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">markdown</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">markdownテキストで記述したい場合の検査結果・観察値の基準範囲など。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:64pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hasMember[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">この検査が複数の検査項目をグループ化したパネル検査もしくはバッテリー検査の場合に、このグループに含まれる個々の検査の参照へのリストである。この場合には、本Observationリソースのvalueは存在しない。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">hasMember[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Reference(JP_Observation_LabResult )</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Bundleリソースなどで本リソースから参照可能なObservationリソースが同時に存在する場合には、そのリソースの識別URIを参照する。
個々の子検査の結果Observationリソースを、このリソースにContainedリソースとして埋め込むのではなく、別の検査結果Observationリソースとして作成し、Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照）をとる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照） 」に従う。</td>
                                    </tr>
                                    <tr style="height:120pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">同じ検査・観察において、メソッドが1つ、観察が1つ、実行者が1つ、デバイスが1つ、時間が1つしかない１回の検査・観察で同時に複数の検査結果が得られる場合に、その各検査をcomponent とみなして、このObservationリソースのcomponent要素にそれぞれを記述する。たとえばこのObservationリソースが血圧である場合に、収縮期血圧値と拡張期血圧値の2つは、Observationリソース：血圧の2つのcomponentとして記述される。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">個々のcomponentを記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Observation.codeと同じ。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">(value)</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">3種類のデータタイプのいずれかひとつ。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Observation.(value)と同じ。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dataAbsentReason</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Observation.dataAbsentReasonと同じ。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">interpretation[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Observation. interpretationと同じ。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_last_l" style="color:#000000; background:#FFFFFF; font-weight: normal">component[=]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">referenceRange[*]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1*</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">BackboneElement</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Observation. referenceRangeと同じ。</td>
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
