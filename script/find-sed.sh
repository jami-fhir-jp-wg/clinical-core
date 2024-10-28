#!/bin/bash
#find sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' /home/runner/work/clinical-core/clinical-core/input/fsh/profiles -type f -name '*.fsh' -exec echo {} \;
#find sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' /home/runner/work/clinical-core/clinical-core/input/fsh/profiles -type f -name '*.fsh' -exec sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' {} \;
sed 's/x.x.x-profile/${{ env.release_version }}/g' input/fsh/profiles/extension/JP_eCS_OrgDept.fsh  > input/fsh/profiles/extension/JP_eCS_OrgDept.fsh_tmp
mv input/fsh/profiles/extension/JP_eCS_OrgDept.fsh_tmp input/fsh/profiles/extension/JP_eCS_OrgDept.fsh
echo '---0'
grep "profile" input/fsh/profiles/extension/JP_eCS_OrgDept.fsh
grep '1.5.3' input/fsh/profiles/extension/JP_eCS_OrgDept.fsh
grep "1.5.3" input/fsh/profiles/extension/JP_eCS_OrgDept.fsh
cat input/fsh/profiles/extension/JP_eCS_OrgDept.fsh
echo '---1'
sed -ibak 's/x.x.x-profile/${{ env.release_version }}/g' input/fsh/profiles/extension/JP_eCS_DignosticType.fsh
grep "profile" input/fsh/profiles/extension/JP_eCS_DignosticType.fsh
grep '1.5.3' input/fsh/profiles/extension/JP_eCS_DignosticType.fsh
ls -l input/fsh/profiles/extension/JP_eCS_DignosticType.fsh*
grep "profile" input/fsh/profiles/extension/JP_eCS_DignosticType.fshbak
grep '1.5.3' input/fsh/profiles/extension/JP_eCS_DignosticType.fshbak
echo '---2'