#!/bin/bash
\rm -rf ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir
pkgVersion="1.11.0"
sushi -s .
