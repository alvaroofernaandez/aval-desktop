# Contributing

1. Open an issue with a template. It starts as `status:needs-review`.
2. Work starts when the issue is labelled `status:approved`.
3. One pull request per reviewable unit, linked with `Closes #N`.

## Rules

- **Conventional Commits**, in English. No `Co-Authored-By` or AI attribution
  trailers.
- **Strict TDD.** A failing test first (it fails on an assertion, not on a
  build error), then the minimum code, then refactor.
- **Decisions are recorded** in `docs/adr/`, never rewritten: a changed
  decision gets a dated amendment or a new ADR.
- **The protocol belongs to aval.** Never copy aval's code here; anything this
  app needs from core goes through the protocol, and a missing call is an issue
  in the aval repository.

## Before you push

Run `scripts/check-docs.sh`. It is what the `docs` workflow runs: relative
links and images resolve, no personal data (home paths, emails) is committed,
and SVGs load nothing from outside themselves.

Images in `docs/assets/` are named by content (`name.<hash>.svg`). Change the
file, rename it to its new hash and update the references; the check fails on
a stale one. They follow the brand of the
[aval repository](https://github.com/alvaroofernaandez/aval) (`.agents/DESIGN.md`
there): pure ink, monoline marks drawn as paths, no external URLs.

Report vulnerabilities as described in [SECURITY.md](SECURITY.md), and follow
the [Code of Conduct](CODE_OF_CONDUCT.md).
