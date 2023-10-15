#!/bin/bash
sushi -s .
cd fsh-generated
mv resources package
cp ../forPackageRelease/package.json package/package.json
mkdir -p ../ExampleJson
rm -rf ../ExampleJson
mkdir ../ExampleJson
mv package/*Example* ../ExampleJson/
gtar czf jp-clins.tgz package
mv jp-clins.tgz ../packages_snapshot
cd ..
rm -rf fsh-generated