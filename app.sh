#!/usr/bin/env bash
# fleet-sandbox-2: a tiny "web" side for the two-repo smoke PRD.
set -euo pipefail
greet() { echo "hello, $1"; }
[ "$(greet web)" = "hello, web" ]
echo ok
