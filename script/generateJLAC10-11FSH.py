
import sys
import csv

# JLAC10検査と感染、JLAC11検査と感染の4つのFSHファイルを作成する
# python3  本コマンド　　JLAC10-11_CSVファイル　
# 出力ファイル名は固定

if __name__ == '__main__':
    args = sys.argv
    filename = args[1]
    with open(filename, encoding='utf-8', newline=None ) as f:
        dict_reader = csv.DictReader(f)
        
        csvInput = csv.reader(f, quotechar='"')
        sline=-1
        for rowArchive in csvInput:   # 1行目がYYYYMM形式
            sline += 1
            if sline > 0:
                #　* #1112700X1ZZZ	"【成分名(規格)】ハロタン(１ｍＬ)"
                lineString = '* #' + rowArchive[0] +'   "' + rowArchive[1] + '"'
                if rowArchive[4] != "":
                    lineString = lineString + '    // 除外登録日付：' + rowArchive[4]
                print(lineString)
            else:
                updateYM = rowArchive[0]
                print('CodeSystem: JP_MedicationCodeKYS_CS')
                print('Id: jp-medicationcode-kys-cs')
                print('Title: "JP Core 規格別薬剤成分コード"')
                print('Description: " 規格別薬剤成分コード: YJコードの末尾3桁をZZZとし、成分名（規格別）の粒度にしたもの。"')
                print('* ^meta.lastUpdated = "' + updateYM[0:4] + '-' + updateYM[4:6] + '-01T00:00:00.000+09:00"')
                print('* ^url = $JP_MedicationCodeKYS_CS')
                print('* ^version = "' + updateYM + '01"')
                print('* ^status = #active')
                print('* ^content = #complete')
                print('* ^caseSensitive = true')
                print('* ^experimental = false')
                print('* ^date = "' + updateYM[0:4] + '-' + updateYM[4:6] + '-01"')
                print('* ^copyright = "Copyright © 株式会社医薬情報研究所. All Rights Reserved.　https://www.iyaku.info/company/"')
