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
