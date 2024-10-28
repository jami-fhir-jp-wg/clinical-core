#!/bin/bash
#find sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' /home/runner/work/clinical-core/clinical-core/input/fsh/profiles -type f -name '*.fsh' -exec echo {} \;
#find sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' /home/runner/work/clinical-core/clinical-core/input/fsh/profiles -type f -name '*.fsh' -exec sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' {} \;
sed 's/x.x.x-profile/${{ env.release_version }}/g' input/fsh/profiles/extension/JP_eCS_OrgDept.fsh  > input/fsh/profiles/extension/JP_eCS_OrgDept.fsh_tmp
mv input/fsh/profiles/extension/JP_eCS_OrgDept.fsh_tmp input/fsh/profiles/extension/JP_eCS_OrgDept.fsh
sed 's/x.x.x-profile/${{ env.release_version }}/g' input/fsh/profiles/extension/JP_eCS_DignosticType.fsh >input/fsh/profiles/extension/JP_eCS_DignosticType.fsh_tmp
mv input/fsh/profiles/extension/JP_eCS_DignosticType.fsh_tmp input/fsh/profiles/extension/JP_eCS_DignosticType.fsh