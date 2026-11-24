#!/usr/bin/env bash
# Docs gate, runs in CI and locally: relative Markdown links and image
# references resolve, and no personal data is committed.
set -euo pipefail
cd "$(dirname "$0")/.."

fail=0

# Relative links: [text](path), href= and srcset= in tracked Markdown.
while IFS= read -r md; do
  dir=$(dirname "$md")
  refs=$( { grep -oE '\]\([^)#]+' "$md" | sed 's/^](//'
            grep -oE '(src|srcset|href)="[^"#]+' "$md" | sed -E 's/^[a-z]+="//'; } || true)
  while IFS= read -r ref; do
    [ -z "$ref" ] && continue
    case "$ref" in http:*|https:*|mailto:*) continue ;; esac
    if [ ! -e "$dir/$ref" ]; then
      echo "broken link in $md: $ref"
      fail=1
    fi
  done <<<"$refs"
done < <(git ls-files '*.md')

# No personal data in any tracked file other than this script.
if git grep -nIE '/Users/|/home/[a-z]|[A-Za-z0-9._-]+@(gmail|outlook|hotmail|icloud)\.' -- . ':!scripts/check-docs.sh' \
  | grep .; then
  echo "personal data found"
  fail=1
fi

# SVGs load nothing from outside themselves.
if git grep -nIE 'href="(https?:|\.\.?/)|url\(https?:' -- '*.svg' | grep .; then
  echo "external reference in an SVG"
  fail=1
fi

exit "$fail"
