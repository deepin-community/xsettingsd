#!/bin/sh

UPSTREAM_BRANCH=upstream
FAKE_EPOCH=0.0

DATE=$(git log --date=short -1 --pretty=format:%cd ${UPSTREAM_BRANCH} | tr -d -- -)
COUNT=$(git rev-list ${UPSTREAM_BRANCH} | wc -l)
HASH=$(git rev-parse --short ${UPSTREAM_BRANCH})

echo ${FAKE_EPOCH}.${DATE}+${COUNT}+g${HASH}
