#!/bin/bash

if [ $# -eq 0 ]; then
	>&2 echo "Usage: $0 test_names"
	exit 1
fi

TEST_NAMES=$@

for TEST in $TEST_NAMES; do
	make $TEST.test UNIT=$TEST
done

for TEST in $TEST_NAMES; do
	./$TEST.test
done
