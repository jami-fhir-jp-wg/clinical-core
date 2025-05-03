
import sys
import csv

# JLAC10検査と感染、JLAC11検査と感染の4つのFSHファイルを作成する
# python3  本コマンド　　JLAC10-11_CSVファイル　FSHslice.csv codeSystem_output_path文字列（/で終わること）(= input/fsh/CodeSystems/ ) version文字列（yyyy.mm)  公開日(yyyy-mm-dd)
# 例）python3  script/generateJLAC10-11FSH.py reference/JLAC10-11_CodeTable_20241030.csv reference/FSHslice.csv input/fsh/CodeSystems/generated/ 2025.02　　2025-03-21
# 出力ファイル名は固定
# 修正履歴
# 2025.4.28
#  元ファイルでのカラム名が'単位'から'XML用単位'に変更されたため、item['単位']　を　item['XML用単位']に変更。
#  新たに'表示用単位'カラムが導入されたことに対応が必要か調査。
# 2025.4.29
#  引数4　バージョン文字列、引数5　公開日　を追加
#         
def writeCommonHeader(jlacMode,kubun,fout, versionString, updateDate ):
    if kubun == '2':    ## 感染症
        codeSystem = 'CodeSystem: JP_CLINS_CodeSystem_' + jlacMode + '_InfectionLabo_CS'
        id = 'Id: jp-clins-codesystem-' + jlacMode + '-infectionlabo-cs'
        title = 'Title: "CLINS 電子カルテ共有サービス用:'+jlacMode+'感染症検査項目セット"'
        description = 'Description: "CLINS 電子カルテ共有サービス用 '+jlacMode+'感染症検査項目セット"'
        url = '* ^url = $JP_CLINS_CodeSystem_' + jlacMode + '_InfectionLabo_CS'
    if kubun == '1':    ## 検査
        codeSystem = 'CodeSystem: JP_CLINS_CodeSystem_' + jlacMode + '_CoreLabo_CS'
        id = 'Id: jp-clins-codesystem-' + jlacMode + '-corelabo-cs'
        title = 'Title: "CLINS 電子カルテ共有サービス用:'+jlacMode+'検体検査項目セット"'
        description = 'Description: "CLINS 電子カルテ共有サービス用 '+jlacMode+'検体検査項目セット"'
        url = '* ^url = $JP_CLINS_CodeSystem_' + jlacMode + '_CoreLabo_CS'
    fout.write(codeSystem + '\n')
    fout.write(id + '\n')
    fout.write(title + '\n')
    fout.write(description + '\n')
    fout.write(url + '\n')
    fout.write('* ^meta.versionId = "1"' + '\n')
    fout.write('* ^meta.lastUpdated = "' + updateDate + 'T00:00:00.000+09:00"' + '\n')
    fout.write('* ^version = "'+ versionString + '"\n')
    fout.write('* ^status = #active' + '\n')
    fout.write('* ^content = #complete' + '\n')
    fout.write('* ^caseSensitive = true' + '\n')
    fout.write('* ^experimental = false' + '\n')
    fout.write('* ^date = "'+ updateDate + '"\n')
    fout.write('* ^publisher = "（一社）日本医療情報学会"' + '\n')
    fout.write('* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"' + '\n')
    fout.write('* ^hierarchyMeaning = #is-a' + '\n')

    fout.write('* ^property[+].code = #unitCode' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #unitDisplay' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #specimen' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #method' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #fullNumberOfDigits' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #integer' + '\n')

    fout.write('* ^property[+].code = #numberOfDecimalDigits' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #integer' + '\n')

    fout.write('* ^property[+].code = #oidOfValueSet' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_property"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')
    if kubun == '2':    ## 感染症
        fout.write('* #CORE-INFECTIONS' + '\n')    


if __name__ == '__main__':
    args = sys.argv
    filename = args[1]
    slice_filename = args[2]
    codeSystem_output_path = args[3]
    versionString = args[4] # yyyy.mm
    publishDate = args[5]   #  yyyy-mm-dd
    with open(slice_filename, encoding='utf-8', newline='' ) as f:
        slice_reader = csv.reader(f)
        slice = {}
        for row in slice_reader:
            slice[row[0]] = row[1]

    for fhir_id in slice.keys():
        print(fhir_id)

    # 検査区分の処理
    jlac_dict = {}
    with open(filename, encoding='utf-8', newline='' ) as f:
        dict_reader = csv.DictReader(f)
        rowlist = []
        for row in dict_reader:
            fhir_kubun = row['データ区分']
            fhir_id = row['FHIR識別文字列']
            if fhir_kubun[0:1] == '1':  # 検査
                if fhir_id in jlac_dict:
                    rowlist = jlac_dict[fhir_id]
                else:
                    rowlist = []
                rowlist.append(row)
                jlac_dict[fhir_id] = rowlist

    # 検査区分　JLAC10
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC10_CoreLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC10','1',fout, versionString, publishDate)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('* #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC10コード'].strip()
            item_name = fhir_id
            item_value = item['FHIR項目名称'].replace('"','').strip()
            item_unitCode = item['XML用単位'].replace('"','').strip()
            if item_unitCode == "":
                item_unitCode = "-"
            item_unitDisplay = item['表示用単位'].replace('"','').strip()
            if item_unitDisplay == "":
                item_unitDisplay = "-"
            item_specimen = item['材料(JLAC10)'].replace('"','').strip()
            if item_specimen == "":
                item_specimen = "-"
            item_method = item['検査方法(JLAC10-測定法)'].replace('"','').strip()
            if item_method == "":
                item_method = "-"
            item_unit = item['XML用単位'].replace('"','')
            if item_unit == "":
                item_unit = "-"
            #
            if jlac_code not in jlac_code_dict and jlac_code != "":
                fout.write('  * #' + jlac_code + '  "' + item_name + '"' + '\n')
                fout.write('    * ^designation.language = #ja' + '\n')
                fout.write('    * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('    * ^property[+].code = #unitCode' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_unitCode + '"' + '\n')
                fout.write('    * ^property[+].code = #unitDisplay' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_unitDisplay + '"' + '\n')
                fout.write('    * ^property[+].code = #specimen' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('    * ^property[+].code = #method' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_method + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
    fout.close()

    # 検査区分　JLAC11
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC11_CoreLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC11','1',fout, versionString, publishDate)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('* #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC11コード']
            if jlac_code == "":
                continue
            item_name = fhir_id
            item_value = item['FHIR項目名称'].replace('"','').strip()
            item_unitCode = item['XML用単位'].replace('"','').strip()
            if item_unitCode == "":
                item_unitCode = "-"
            item_unitDisplay = item['表示用単位'].replace('"','').strip()
            if item_unitDisplay == "":
                item_unitDisplay = "-"
            item_specimen = item['材料(JLAC11)'].replace('"','').strip()
            if item_specimen == "":
                item_specimen = "-"
            item_method = item['測定法(JLAC11)'].replace('"','').strip()
            if item_method == "":
                item_method = "-"
            item_unit = item['XML用単位'].replace('"','')
            if item_specimen == "":
                item_specimen = "-"
            #
            if jlac_code not in jlac_code_dict and jlac_code != "":
                fout.write('  * #' + jlac_code + '  "' + item_name + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
                fout.write('    * ^designation.language = #ja' + '\n')
                fout.write('    * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('    * ^property[+].code = #unitCode' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_unitCode + '"' + '\n')
                fout.write('    * ^property[+].code = #unitDisplay' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_unitDisplay + '"' + '\n')
                fout.write('    * ^property[+].code = #specimen' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('    * ^property[+].code = #method' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_method + '"' + '\n')
    fout.close()


    # 感染症区分の処理
    jlac_dict = {}
    with open(filename, encoding='utf-8', newline='' ) as f:
        dict_reader = csv.DictReader(f)
        rowlist = []
        for row in dict_reader:
            fhir_kubun = row['データ区分']
            fhir_id = row['FHIR識別文字列']
            if fhir_kubun[0:1] == '2': # 感染症
                if fhir_id in jlac_dict:
                    rowlist = jlac_dict[fhir_id]
                else:
                    rowlist = []
                rowlist.append(row)
                jlac_dict[fhir_id] = rowlist

    # 感染症区分　JLAC10
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC10_InfectionLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC10','2',fout, versionString, publishDate)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('  * #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC10コード'].strip()
            item_name = fhir_id
            item_value = item['FHIR項目名称'].replace('"','').strip()
            item_unitCode = item['XML用単位'].replace('"','').strip()
            if item_unitCode == "":
                item_unitCode = "-"
            item_unitDisplay = item['表示用単位'].replace('"','').strip()
            if item_unitDisplay == "":
                item_unitDisplay = "-"
            item_specimen = item['材料(JLAC10)'].replace('"','').strip()
            if item_specimen == "":
                item_specimen = "-"
            item_method = item['検査方法(JLAC10-測定法)'].replace('"','').strip()
            if item_method == "":
                item_method = "-"
            item_unit = item['XML用単位'].replace('"','')
            if item_unit == "":
                item_unit = "-"
            #
            if jlac_code not in jlac_code_dict and jlac_code != "":
                fout.write('    * #' + jlac_code + '  "' + item_name + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
                fout.write('      * ^designation.language = #ja' + '\n')
                fout.write('      * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('      * ^property[+].code = #unitCode' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_unitCode + '"' + '\n')
                fout.write('      * ^property[+].code = #unitDisplay' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_unitDisplay + '"' + '\n')
                fout.write('      * ^property[+].code = #specimen' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('      * ^property[+].code = #method' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_method + '"' + '\n')
    fout.close()

    # 感染症区分　JLAC11
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC11_InfectionLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC11','2',fout, versionString, publishDate)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('  * #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC11コード']
            item_name = fhir_id
            item_value = item['FHIR項目名称'].replace('"','').strip()
            item_unitCode = item['XML用単位'].replace('"','').strip()
            if item_unitCode == "":
                item_unitCode = "-"
            item_unitDisplay = item['表示用単位'].replace('"','').strip()
            if item_unitDisplay == "":
                item_unitDisplay = "-"
            item_specimen = item['材料(JLAC11)'].replace('"','').strip()
            if item_specimen == "":
                item_specimen = "-"
            item_method = item['測定法(JLAC11)'].replace('"','').strip()
            if item_method == "":
                item_method = "-"
            item_unit = item['XML用単位'].replace('"','').strip()
            if item_unit == "":
                itemitem_unit_specimen = "-"
            #
            if jlac_code not in jlac_code_dict and jlac_code != "":
                fout.write('    * #' + jlac_code + '  "' + item_name + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
                fout.write('      * ^designation.language = #ja' + '\n')
                fout.write('      * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('      * ^property[+].code = #unitCode' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_unitCode + '"' + '\n')
                fout.write('      * ^property[+].code = #unitDisplay' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_unitDisplay + '"' + '\n')
                fout.write('      * ^property[+].code = #specimen' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('      * ^property[+].code = #method' + '\n')
                fout.write('      * ^property[=].valueString = "' + item_method + '"' + '\n')
    fout.close()
'''
* #ALB
  * #3A015000002329101  "ALB"
    * ^designation.language = #ja
    * ^designation.value = "アルブミン"
    * ^property[+].code = #specimen
    * ^property[=].valueString = "血清"
    * ^property[+].code = #method
    * ^property[=].valueString = "反射測光法(レフラクトメトリー)"
'''