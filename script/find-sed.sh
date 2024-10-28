#!/bin/bash
# パラメータ version文字列
find input/fsh/profiles -type f -name '*.fsh' -exec sed -ibak "s/x.x.x-profile/$1/g" {} \;
find input/fsh/instances -type f -name '*.fsh' -exec sed -ibak "s/x.x.x-instance/$1/g" {} \;

sed 's/1.x.x-temp/$1/g' sushi-config.yaml > sushi-config-temp.yaml
mv sushi-config-temp.yaml sushi-config.yaml

sed 's/.r4-1.x.x-temp/.r4-$1/g' input/pagecontent/validationGuide.md > input/pagecontent/validationGuide-temp.md
mv input/pagecontent/validationGuide-temp.md input/pagecontent/validationGuide.md

sed 's/.r4-1.x.x-temp/.r4-$1/g' input/pagecontent/index.md > input/pagecontent/index-temp.md
mv input/pagecontent/index-temp.md input/pagecontent/index.md

cd forPackageRelease
sed 's/1.x.x-temp/$1/g' package-diff.json >package-diff-temp.json
sed 's/1.x.x-temp/$1/g' package-snap.json >package-snap-temp.json
sed 's/"description": "/"description": "${{ env.CURRENT_DATETIME }}UTC_/g' package-diff-temp.json > package-diff-temp2.json
sed 's/"description": "/"description": "${{ env.CURRENT_DATETIME }}UTC_/g' package-snap-temp.json > package-snap-temp2.json
mv package-diff-temp2.json package-diff.json
mv package-snap-temp2.json package-snap.json
sed 's/1.x.x-temp/$1/g' package-diffCLINS.json >package-diffCLINS-temp.json
sed 's/1.x.x-temp/$1/g' package-snapCLINS.json >package-snapCLINS-temp.json
sed 's/"description": "/"description": "${{ env.CURRENT_DATETIME }}UTC_/g' package-diffCLINS-temp.json > package-diffCLINS-temp2.json
sed 's/"description": "/"description": "${{ env.CURRENT_DATETIME }}UTC_/g' package-snapCLINS-temp.json > package-snapCLINS-temp2.json
mv package-diffCLINS-temp2.json package-diffCLINS.json
mv package-snapCLINS-temp2.json package-snapCLINS.json
cd ..
