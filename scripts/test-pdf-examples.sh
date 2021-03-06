#!/bin/bash

EXAMPLES="\
minimal \
styled \
cover \
fonts \
toc \
header-footer \
figures \
revisions \
numbering \
"

set -e
cd "$(dirname "$(readlink -f "${0}")")/.."

python3 -m pip install . --user

cd examples/pdf

for EXAMPLE in $EXAMPLES
do
  cd $EXAMPLE
  doker --pdf $EXAMPLE
  cd ..
done
