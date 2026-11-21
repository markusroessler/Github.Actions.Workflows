#!/bin/bash
set -e

echo "## TODOs"
echo "<pre>" 
git grep -n -E "(//|\*|#|--|<!--|;|/\*|^|^[ \t]*(-|\d+.))\s*(TODO|FIXME)"
echo "</pre>" 