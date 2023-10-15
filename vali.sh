#!/bin/bash
java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/*.json -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig packages_snapshot/jp-core.r4-1.1.2-dev.tgz -ig packages_snapshot/jpfhir-terminology-1.1.1.tgz -ig  packages_snapshot/jp-clins.tgz -tx n/a
