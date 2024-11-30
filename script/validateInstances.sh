#!/bin/bash
mkdir -p validateLog
mkdir -p validateLog/json
cp fsh-generated-backup/resources/*Example*.json validateLog/json/
java -Xmx12G -Djava.awt.headless=true -jar validator_cli.jar validateLog/json/*.json -version 4.0.1  -language ja  -ig jp-core.r4#1.1.2-clins -ig jpfhir-terminology.r4#1.2.4-url -ig fsh-generated-backup/jp-eCSCLINS-package-diff.tgz -locale ja-JP -tx n/a  -want-invariants-in-messages  -no-extensible-binding-warnings  -display-issues-are-warnings   -level warnings -best-practice ignore >validateLog/$1_$2.log
return 0