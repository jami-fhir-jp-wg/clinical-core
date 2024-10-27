
import sys
import csv

# JLAC10検査と感染、JLAC11検査と感染の4つのFSHファイルを作成する
# python3  本コマンド　　JLAC10-11_CSVファイル　sliceFile.csv codeSystem_output_path文字列（/で終わること）(= /input/fsh/CodeSystems )
# 出力ファイル名は固定

def writeCommonHeader(jlacMode,kubun,fout):
    if kubun == '感染症':
        codeSystem = 'CodeSystem: JP_CLINS_CodeSystem_' + jlacMode + '_InfectionLabo_CS'
        id = 'Id: jp-clins-codesystem-' + jlacMode + '-infectionlabo-cs'
        title = 'Title: "CLINS 電子カルテ共有サービス用:感染症検査項目セット"'
        description = 'Description: "CLINS 電子カルテ共有サービス用 感染症検査項目セット"'
        url = '* ^url = $JP_CLINS_CodeSystem_' + jlacMode + '_InfectionLabo_CS'
    if kubun == '検査':
        codeSystem = 'CodeSystem: JP_CLINS_CodeSystem_' + jlacMode + '_CoreLabo_CS'
        id = 'Id: jp-clins-codesystem-' + jlacMode + '-corelabo-cs'
        title = 'Title: "CLINS 電子カルテ共有サービス用:検体検査項目セット"'
        description = 'Description: "CLINS 電子カルテ共有サービス用 検体検査項目セット"'
        url = '* ^url = $JP_CLINS_CodeSystem_' + jlacMode + '_CoreLabo_CS'
    fout.write(codeSystem + '\n')
    fout.write(id + '\n')
    fout.write(title + '\n')
    fout.write(description + '\n')
    fout.write(url + '\n')
    fout.write('* ^meta.versionId = "1"' + '\n')
    fout.write('* ^meta.lastUpdated = "2024-10-27T00:45:56.836+09:00"' + '\n')
    fout.write('* ^url = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS' + '\n')
    fout.write('* ^version = "1.5.3"' + '\n')
    fout.write('* ^status = #active' + '\n')
    fout.write('* ^content = #complete' + '\n')
    fout.write('* ^caseSensitive = true' + '\n')
    fout.write('* ^experimental = false' + '\n')
    fout.write('* ^publisher = "（一社）日本医療情報学会"' + '\n')
    fout.write('* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"' + '\n')
    fout.write('* ^hierarchyMeaning = #is-a' + '\n')

    fout.write('* ^property[+].code = #unit' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_unitProperty"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #specimen' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_specimenProperty"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #method' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_methodProperty"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')

    fout.write('* ^property[+].code = #fullNumberOfDigits' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_ndigitsProperty"' + '\n')
    fout.write('* ^property[=].type = #integer' + '\n')

    fout.write('* ^property[+].code = #numberOfDecimalDigits' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_ddigitsProperty"' + '\n')
    fout.write('* ^property[=].type = #integer' + '\n')

    fout.write('* ^property[+].code = #oidOfValueSet' + '\n')
    fout.write('* ^property[=].uri = "http://jpfhir.jp/fhir/eCS/CodeSystem/laboItem_oidVSProperty"' + '\n')
    fout.write('* ^property[=].type = #string' + '\n')


if __name__ == '__main__':
    args = sys.argv
    filename = args[1]
    slice_filename = args[2]
    codeSystem_output_path = args[3]
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
            if fhir_kubun[0:2] == '検査':
                if fhir_id in jlac_dict:
                    rowlist = jlac_dict[fhir_id]
                else:
                    rowlist = []
                rowlist.append(row)
                jlac_dict[fhir_id] = rowlist

    # 検査区分　JLAC10
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC10_CoreLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC10','検査',fout)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('* #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC10コード']
            item_name = fhir_id
            item_value = item['FHIR項目名称']
            item_specimen = item['材料(JLAC10)']
            item_method = item['検査方法(JLAC10-測定法)']
            item_unit = item['単位']
            #
            if jlac_code not in jlac_code_dict:
                fout.write('  * #' + jlac_code + '  "' + item_name + '"' + '\n')
                fout.write('    * ^designation.language = #ja' + '\n')
                fout.write('    * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('    * ^property[+].code = #specimen' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('    * ^property[+].code = #method' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_method + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
    fout.close()

    # 検査区分　JLAC11
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC11_CoreLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC11','検査',fout)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('* #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC11コード']
            item_name = fhir_id
            item_value = item['FHIR項目名称']
            item_specimen = item['材料(JLAC11)']
            item_method = item['測定法(JLAC11)']
            item_unit = item['単位']
            #
            if jlac_code not in jlac_code_dict:
                fout.write('  * #' + jlac_code + '  "' + item_name + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
                fout.write('    * ^designation.language = #ja' + '\n')
                fout.write('    * ^designation.value = "' + item_value + '"' + '\n')
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
            if fhir_kubun[0:3] == '感染症':
                if fhir_id in jlac_dict:
                    rowlist = jlac_dict[fhir_id]
                else:
                    rowlist = []
                rowlist.append(row)
                jlac_dict[fhir_id] = rowlist

    # 感染症区分　JLAC10
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC10_InfectionLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC10','感染症',fout)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('* #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC10コード']
            item_name = fhir_id
            item_value = item['FHIR項目名称']
            item_specimen = item['材料(JLAC10)']
            item_method = item['検査方法(JLAC10-測定法)']
            item_unit = item['単位']
            #
            if jlac_code not in jlac_code_dict:
                fout.write('  * #' + jlac_code + '  "' + item_name + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
                fout.write('    * ^designation.language = #ja' + '\n')
                fout.write('    * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('    * ^property[+].code = #specimen' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('    * ^property[+].code = #method' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_method + '"' + '\n')
    fout.close()

    # 感染症区分　JLAC11
    fout = open(codeSystem_output_path+'JP_CLINS_CodeSystem_JLAC11_InfectionLabo.fsh', 'w', encoding='utf-8')
    writeCommonHeader('JLAC11','感染症',fout)
    for fhir_id in jlac_dict.keys():
        if fhir_id == "" :
            continue
        jlac_code_dict = {}
        print("fhir_id",fhir_id)
        fout.write('* #' + slice[fhir_id] + '\n')
        for item in jlac_dict[fhir_id]:
            jlac_code = item['JLAC11コード']
            item_name = fhir_id
            item_value = item['FHIR項目名称']
            item_specimen = item['材料(JLAC11)']
            item_method = item['測定法(JLAC11)']
            item_unit = item['単位']
            #
            if jlac_code not in jlac_code_dict:
                fout.write('  * #' + jlac_code + '  "' + item_name + '"' + '\n')
                jlac_code_dict[jlac_code] = jlac_code
                fout.write('    * ^designation.language = #ja' + '\n')
                fout.write('    * ^designation.value = "' + item_value + '"' + '\n')
                fout.write('    * ^property[+].code = #specimen' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_specimen + '"' + '\n')
                fout.write('    * ^property[+].code = #method' + '\n')
                fout.write('    * ^property[=].valueString = "' + item_method + '"' + '\n')
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