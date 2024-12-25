#!/bin/bash
mkdir -p validateLog
mkdir -p validateLog/json
rm -f validateLog/json/*
rm -rf fsh-generated-backup
cp -r fsh-generated fsh-generated-backup
cp fsh-generated-backup/resources/Bundle*.json validateLog/json/
cd fsh-generated-backup
mkdir -p package
cp resources/StructureDefinition-* package/
cp resources/ValueSet-* package/
cp resources/CodeSystem-* package/
cp resources/ImplementationGuide-* package/
cp resources/NamingSystem-* package/
cp ../forPackageRelease/package-diff.json package/package.json
tar czf jp-eCSCLINS-package-diff.tgz package
cd ..   
java -Xmx12G -Djava.awt.headless=true -jar ../work/validator_cli.jar validateLog/json/*.json -version 4.0.1  -language ja  -ig jp-core.r4#1.1.2-clins -ig jpfhir-terminology.r4#1.2.5 -ig fsh-generated-backup/jp-eCSCLINS-package-diff.tgz -locale ja-JP -tx n/a  -want-invariants-in-messages  -no-extensible-binding-warnings  -display-issues-are-warnings   -level warnings -best-practice ignore >validateLog/$1_$2.log
#ls -l validateLog
#cat validateLog/$1_$2.log
exit 0