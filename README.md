# aval desktop

A native window over [`aval core`](https://github.com/alvaroofernaandez/aval)
with an embedded terminal: the last stage of the aval roadmap
([v0.9.0](https://github.com/alvaroofernaandez/aval/milestone/5)).

Status: **not started.** This repository holds no code yet.

## How it relates to aval

aval desktop is a client of `aval core`. It starts the `aval` binary and talks
to it over a versioned JSON-RPC protocol on stdio; it never imports aval's Go
code. The decision and its reasons are in
[ADR 0008](https://github.com/alvaroofernaandez/aval/blob/main/docs/adr/0008-process-boundary-core-memory-desktop.md).

- The protocol specification and its conformance suite live in the aval
  repository. A change that needs a core change is two pull requests, linked
  by protocol version.
- The GUI toolchain is not chosen yet; it is decided in an ADR in this
  repository before the first line of code.

## Contributing

Open an issue first; work starts once it is labelled `status:approved`. See
[CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE)
