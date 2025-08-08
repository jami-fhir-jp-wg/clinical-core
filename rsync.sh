#!/bin/bash
# testtxサーバに同期をとる。
cd ..
rsync -avz --delete --exclude '.*/*' -e ssh clinical-core/ testtx:fhirPublisher/clinical-core/

