#!/bin/bash
release_version=1.12.0-pre
version_date=-pre20251108
CURRENT_DATETIME=$(date '+%Y-%m-%dT%H:%M')

find input/fsh/profiles -type f -name '*.fsh' -exec sed -ibak "s/x.x.x-profile/${release_version}/g" {} \;
find input/fsh/instances -type f -name '*.fsh' -exec sed -ibak "s/x.x.x-instance/${release_version}/g" {} \;

sed 's/1.x.x-temp/${release_version}/g' sushi-config.yaml > sushi-config-temp.yaml
mv sushi-config-temp.yaml sushi-config.yaml

sed 's/.r4-1.x.x-temp/.r4-${release_version}/g' input/pagecontent/validationGuide.md > input/pagecontent/validationGuide-temp.md
mv input/pagecontent/validationGuide-temp.md input/pagecontent/validationGuide.md

sed 's/.r4-1.x.x-temp/.r4-${release_version}/g' input/pagecontent/index.md > input/pagecontent/index-temp.md
mv input/pagecontent/index-temp.md input/pagecontent/index.md
cd forPackageRelease
sed 's/1.x.x-temp/${release_version}/g' package-diff.json >package-diff-temp.json
sed 's/1.x.x-temp/${release_version}/g' package-snap.json >package-snap-temp.json
sed 's/"description": "/"description": "${CURRENT_DATETIME}UTC_/g' package-diff-temp.json > package-diff-temp2.json
sed 's/"description": "/"description": "${CURRENT_DATETIME}UTC_/g' package-snap-temp.json > package-snap-temp2.json
mv package-diff-temp2.json package-diff.json
mv package-snap-temp2.json package-snap.json
sed 's/1.x.x-temp/${release_version}/g' package-diffCLINS.json >package-diffCLINS-temp.json
sed 's/1.x.x-temp/${release_version}/g' package-snapCLINS.json >package-snapCLINS-temp.json
sed 's/"description": "/"description": "${CURRENT_DATETIME}UTC_/g' package-diffCLINS-temp.json > package-diffCLINS-temp2.json
sed 's/"description": "/"description": "${CURRENT_DATETIME}UTC_/g' package-snapCLINS-temp.json > package-snapCLINS-temp2.json
mv package-diffCLINS-temp2.json package-diffCLINS.json
mv package-snapCLINS-temp2.json package-snapCLINS.json
cd ..
sushi .
# create differential package 
cd fsh-generated
mkdir -p package
cp resources/StructureDefinition-* package/
cp resources/ValueSet-* package/
cp resources/CodeSystem-* package/
cp resources/ImplementationGuide-* package/
cp resources/NamingSystem-* package/
cp ../forPackageRelease/package-diff.json package/package.json
tar czf jp-eCSCLINS-package-diff.tgz package
cp jp-eCSCLINS-package-diff.tgz ../forPackageRelease/jp-eCSCLINS.r4-${release_version}${version_date}.tgz
# validate
java -Xmx4G -Djava.awt.headless=true -jar ../validator_cli.jar fsh-generated/resources/*.json -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig jp-core.r4-1.1.2-url-snap.tgz -ig jpfhir-periodic-terminology.r4-2025.7.0-dev.tgz -ig  jpfhir-terminology.r4-2.0.0-dev.tgz -tx n/a  -language ja > validate_log.txt
cat validate_log.txt

