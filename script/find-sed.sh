#!/bin/bash
find input/fsh/profiles -type f -name '*.fsh' -exec sed -ibak "s/x.x.x-profile/$1/g" {} \;
find input/fsh/profiles -type f -name '*.fsh' -exec grep -l $1 {} \;