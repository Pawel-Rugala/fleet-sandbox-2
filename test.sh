#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/app.sh"

status=0

if ! diff <(greet "World") <(printf 'Hello, World!\n') >/dev/null; then
  echo "named-argument case mismatch: greet \"World\"" >&2
  status=1
fi

if ! diff <(greet) <(printf 'Hello, world!\n') >/dev/null; then
  echo "no-argument case mismatch: greet" >&2
  status=1
fi

exit "$status"
