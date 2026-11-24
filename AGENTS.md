# Agent instructions for aval desktop

Read by any coding agent working in this repository (Claude Code loads it
through `CLAUDE.md`).

## Hard rules

- **No code before the toolchain ADR.** The GUI toolchain is chosen in
  `docs/adr/0001-*.md` first.
- **Client of core, never a fork.** aval desktop starts `aval` and speaks its
  versioned JSON-RPC protocol over stdio (aval ADR 0008). Do not vendor,
  copy or import aval's Go code.
- **Strict TDD.** RED first: a test that fails on its assertion. Then GREEN
  with the minimum code, then refactor.
- **Commits.** Conventional Commits, one reviewable unit each, with its tests.
  No `Co-Authored-By` or AI attribution.
- **Plan before execution.** Substantial work gets a plan in
  `odd/tasks/<feature>.md` before the first source edit.
- **Never push unasked.**

## Output contract

Every report of work states what ran (the exact command, exit code, pass,
fail and skip counts), what did not run and why, and the failing test with the
tail of its output. Never invent evidence.
