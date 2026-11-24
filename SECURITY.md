# Security policy

## Supported versions

There is no release yet. Once there is one, only the latest release of aval
desktop receives security fixes.

## Reporting a vulnerability

Do **not** open a public issue. Use GitHub's
[private vulnerability reporting](https://github.com/alvaroofernaandez/aval-desktop/security/advisories/new)
with:

- affected version and platform,
- steps to reproduce,
- impact as you understand it.

You will get an acknowledgement within 7 days. Fixes are released as soon as
they are verified, and the advisory is published afterwards with credit unless
you prefer otherwise.

A problem in `aval core` or in the protocol belongs to the
[aval repository](https://github.com/alvaroofernaandez/aval/security/advisories/new).

## Scope

There is no code yet. Once there is, the area of interest is what the app does
with the `aval` process it starts: executing the wrong binary, untrusted input
from the protocol reaching a shell, and secrets leaking into logs.
