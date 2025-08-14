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
                                    <tr style="height:46pt">
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
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与開始日や実投与日数を明示するために使用する拡張を記述。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:76pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与開始日を明示するために使用する拡張「PeriodOfUse」。投与開始日を明示しない処方の場合には、処方箋発行日を投与開始日として設定する。電子カルテ情報サービスにおいては、本要素を必須とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:84pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与開始日を明示するために使用する拡張を識別するURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valuePeriod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Period</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与期間を表す</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:21pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valuePeriod</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">start</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与期間（または処方）の開始日</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2020-08-21"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Extension</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">隔日投与など、投与開始日から終了日までの日数と実投与日数が異なる場合に、実投与日数を明示したい場合に使用する拡張 「UsageDuration」。詳細は処方情報HL７FHIR記述仕様も参照すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:84pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">url</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">実投与日数を明示したい場合に使用する拡張を識別するためのURL。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_UsageDuration</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Duration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与期間とは別に投与実日数を表現したい場合にこの拡張を使用し、Duration 型で開始日を記載する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">実投与日数。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">7</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位「日」。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"日"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位コード UCUMを識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">extension[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">valueDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位コードUCUMにおける実投与日数の単位を表すコード。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"d"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dosageInstructionが表す処方指示の文字列表現。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"内服・経口・１日３回朝昼夕食後　１回１錠　７日分"</td>
                                    </tr>
                                    <tr style="height:29pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">補足的な処方または投与指示。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:210pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">不均等投与を1日用法として記載する場合に、補足用法コードを記録するために使用する。不均等な投与指示の場合には、additionalInstruction要素に、1 日の投与回数分だけ繰り返し、JAMI補足用法コードを使用し記述する。また、隔日投与、曜日指定投与の場合にも、JAMI補足補足用法コードを使用して記述する。 本要素は繰り返し記述が可能であり、どのように薬剤を内服するかについての患者への補足指示（たとえば、「食事と一緒に」や「30分から1時間前に内服」）や薬剤についての注意書き（たとえば、「眠くなることがある」や「日光や紫外線が皮膚にあたららないようにすること」）なども記述するのに使用できる。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI補足用法コードを使用し記述。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI補足用法８桁コードを識別するURI（固定値参照）。やむを得ず施設固有コードを使用する場合には、"http://jpfhir.jp/fhir/clins/CodeSystem/MedicationUsageAdditional/医療機関10桁コード"を設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jami.jp/CodeSystem/MedicationUsageAdditional</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI補足用法コード指定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"V14NNNNN"</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コードの表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"不均等・１回目・４錠"</td>
                                    </tr>
                                    <tr style="height:76pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">additionalInstruction[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">補足的な処方または投与指示の表現文字列。不均等な投与指示の場合には、additionalInstruction要素に、1 日の投与回数分だけ繰り返し、JAMI補足用法コードを使用し記述する仕様であるが、コード化できるかどうかにかかわらず常にテキストでも記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">１日３回　毎食後　７錠（４錠－２錠－１錠）</td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与タイミングや投与期間と期間中の投与用法を記録する。
投与期間と期間中の投与用法を指定する場合には通常、code子要素とrepeant子要素とで記述する。投与タイミングを直接具体的な日時で指定する場合には、event子要素を使用することができる。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">event[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">dateTime</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与タイミングを具体的な日時で指定する場合に使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"2020-08-21"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">repeat</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Element</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与期間と期間中の投与の繰り返し方法を記述する要素。このrepeat子要素で投与期間の全日数、code子要素でこの期間中の投与方法を記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:105pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">repeat</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">boundsDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Duration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投薬期間（投与開始日から投与終了日まで）の全日数。実投与（投与）日数ではないことに注意する。すなわち、実際に投与しない日も１日と数える。詳細は処方情報HL７FHIR記述仕様も参照。なお、この実投与（投与）日数を別に記述したい場合には、実投与日数を明示したい場合に使用する拡張を使用して記述すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">repeat</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">boundsDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投薬期間（投与開始日から投与終了日まで）の全日数。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">7</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">repeat</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">boundsDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投薬期間（投与開始日から投与終了日まで）の全日数の単位文字列。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"日"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">repeat</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">boundsDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">単位コードUCUMのコード体系を識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">repeat</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">boundsDuration</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">日を意味する単位コード「d」。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"d"</td>
                                    </tr>
                                    <tr style="height:72pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">用法。コード化をする（コード化できない場合にもダミーコードを使用してコード化する）。また用法の完全な文字列をtext子要素に設定する。用法記載を不要とする処方の場合もダミーコードを記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">用法のコード化情報。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:166pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI標準用法コード、または厚生労働省電子処方箋用法コードによりコード化し、コード化できない場合にもダミーコードを使用してコード化する。施設固有のコード化による記述も可能であるが、できる限り上記標準コードと併用することは望ましい。
<span   class="font_red font_bold">電子カルテ情報共有サービスでは、厚生労働省電子処方箋用法コードによりコード化するかダミーコードを使用することが必須。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:234pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI標準用法コード(http://jami.jp/CodeSystem/MedicationUsage)、または厚生労働省電子処方箋用法コードを識別するURI（固定値参照）。電子カルテ情報共有サービスでは、厚生労働省電子処方箋用法コードを表すsystem値、またはダミーコードのsystem値を設定する。
内部利用などで施設固有コードを使用する場合には、"http://jpfhir.jp/fhir/clins/CodeSystem/MedicationUsage/医療機関10桁コード"を設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI表標準用法コード："http://jami.jp/CodeSystem/MedicationUsage"
厚生労働省電子処方箋用法コード: ：　"http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription"
ダミーコードを使用する場合："http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_MedicationUsage_Uncoded_CS"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">version</td>
                                        <td class="xl_m" style="color:#000000; background:#E2F0D9; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">コーディングに使用したコードシステムのバージョン文字列（電子カルテ情報共有サービス運用者から公開される）を設定することを推奨する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"20240601"</td>
                                    </tr>
                                    <tr style="height:76pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">用法コード。<span   class="font_red font_bold">電子カルテ情報共有サービスでは、厚生労働省電子処方箋用法コード、またはダミーコード "0X0XXXXXXXXX0000"を設定する。</span></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1013044400000000"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFC000; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">使用した用法コードに対応する表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"１日３回朝昼夕食後　服用"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">timing</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFBF00; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">用法のコード化の有無にかかわらず、用法の完全な文字列を設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"内服・経口・１日３回朝昼夕食後"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">asNeededBoolean</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">boolean</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">頓用型の用法を指定する場合に"true"を指定する。詳細は処方情報HL７FHIR記述仕様も参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">外用薬で部位を指定する場合に使用する。詳細は処方情報HL７FHIR記述仕様も参照。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">外用部位をコード化するか、text子要素で記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI外用部位３桁コードを識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jami.jp/CodeSystem/MedicationBodySiteExternal"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI部位コード。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"950"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI部位コードの表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"膝"</td>
                                    </tr>
                                    <tr style="height:21pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">site</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">部位のテキスト表現。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"膝"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">route</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与経路</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">route</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与経路をコード化するか、text子要素で記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:48pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">route</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与経路コード表のsystemを設定する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">http://jpfhir.jp/fhir/core/CodeSystem/route-codes</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">route</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与経路コード表で規定するコード。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"PO"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">route</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与経路コード表で規定するコードの表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"口"</td>
                                    </tr>
                                    <tr style="height:31pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">route</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与経路の文字列表現。コードで指定できない場合、本要素で文字列として指定してもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"経口"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与方法の基本用法区分（1 : 内服、2 : 外用、3 : 注射、4 : 注入の区分）、またはさらに1段階詳しい用法区分（10：経口、11：舌下、…など）を記述する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:90pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与方法区分をコード化するか、text子要素で記述する。2桁で出せる場合には必ず2桁粒度で出力すること。
1桁出力しかできない場合には、必ず詳細投与方法をmethod.textに記載すること。
</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:75pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与方法の区分に対応するJAMI用法コード表基本用法１桁コードを識別するURI（固定値参照）。同2桁コード（"http://jami.jp/CodeSystem/MedicationMethodDetailUsage"）を使用してもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jami.jp/CodeSystem/MedicationMethodBasicUsage"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI用法コード表基本用法１桁コード。同2桁コード（"http://jami.jp/CodeSystem/MedicationMethodDetailUsage"）を使用してもよい。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1"</td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">JAMI用法コード表基本用法１桁コードの表示名または同2桁コード（"http://jami.jp/CodeSystem/MedicationMethodDetailUsage"）を使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"内服"</td>
                                    </tr>
                                    <tr style="height:76pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">method</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">text</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFF2CC; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与方法のテキスト表現。コードで指定できない場合、本要素で文字列として指定してもよい。記法用法コードを1桁コードでしか出力できない場合で、詳細投与方法の指示がある場合には、それを含めた投与方法文字列をmethod.textに記載すること。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"内服"</td>
                                    </tr>
                                    <tr style="height:166pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与量を記録する。
内服１回量、外用１回量は、doseAndRate.doseQuantityに記述する。処方期間の中で 1 日量が常に一定となる場合場合は、内服１日量、外用１日量は、doseAndRate.rateRatioの分子で指定する。
外用の全量指定（２本など）の場合は、調剤量として、MedicationRequestリソースのdispenseRequest.quantity 要素に、SimpleQuantity 型で記録するので、その1回量を併せて指定するのでなければこの要素は出現しない。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Element</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与量の情報</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">CodeableConcept</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">力価区分。用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。本要素は、安全性のため、外用薬の全量処方指示を除き省略せずに必須とする。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[*]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[+]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1*</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Coding</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:60pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">力価区分コードのコード体系を識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">力価区分コード。（1：製剤量　2：原薬量）</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"1"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">type</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">coding[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">display</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">力価区分コードの表示名。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"製剤量"</td>
                                    </tr>
                                    <tr style="height:105pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">doseQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">SimpleQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1回投与量。 1回投与量の記録を基本とし、doseQuantity 要素 に SimpleQuantity 型で記述する。単位コードには、医薬品単位略号（http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code）を使用する。内服、外用ともに１回投与量を指定する場合にはこの要素を使用する。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">doseQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1回投与量。doseAndRate.typeで指定される力価区分に対応した量であることが必須である。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">1</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">doseQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与量の単位。doseAndRate.typeで指定される力価区分に対応した単位であることが必須である。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"錠"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">doseQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医薬品単位略号を識別するOID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">doseQuantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医薬品単位略号。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"TAB"</td>
                                    </tr>
                                    <tr style="height:240pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">0..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Ratio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1日投与量を表す。処方期間の中で 1 日量が常に一定となる場合には、1 回量に加えて 1 日量の
記録も可能とし、rateRatio 要素に Ratio 型で記録す
る。Ratio 型は比を扱うデータ型で、分母にあたる
rateRatio.denominator 要素には、投与量の基準となる期間、つまり、1 日量の場合は「1 日」を Quantity 型で指定する。単位には、単位コードUCUM（http://unitsofmeasure.org）で定義されている「日」を表す単位コード「d」を使用する。
分子にあたる rateRatio.numerator 要素には、1 回量と同様の記法で、1 日投与量を Quantity 型で指定する。内服、外用ともに１日量を指定する場合にはこの要素を使用する。
doseAndRate.typeで指定される力価区分に対応した量であることが必須である。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: bold"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">numerator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Quantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1日投与量の分子の情報を表す。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">numerator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1日投与量。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">3</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">numerator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">投与量の単位。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"錠"</td>
                                    </tr>
                                    <tr style="height:45pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">numerator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医薬品単位略号を識別するOID。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code"</td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">numerator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">医薬品単位略号。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">例示</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"TAB"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">denominator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">Quantity</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1日投与量の分母である「1日」を表す。混乱を避けるため、「1日」以外の分母は指定しないこと。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal"></td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">denominator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">value</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">decimal</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">分母である「1日」の日数「1」</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">1</td>
                                    </tr>
                                    <tr style="height:28pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">denominator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">unit</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">string</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">分母である「1日」の単位「日」</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"日"</td>
                                    </tr>
                                    <tr style="height:30pt">
                                        <td class="xl_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">denominator</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">system</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">uri</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">UCUM単位コードを識別するURI。</td>
                                        <td class="xl_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"http://unitsofmeasure.org"</td>
                                    </tr>
                                    <tr style="height:29pt">
                                        <td class="xl_last_l" style="color:#000000; background:#FFFFFF; font-weight: normal">doseAndRate[=]</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">rateRatio</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">denominator</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">1..1</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">code</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">「日」を表すUCUM単位コード。</td>
                                        <td class="xl_last_m" style="color:#000000; background:#FFFFFF; font-weight: normal">固定</td>
                                        <td class="xl_last_r" style="color:#000000; background:#FFFFFF; font-weight: normal">"d"</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
