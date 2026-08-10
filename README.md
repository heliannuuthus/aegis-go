# Aegis Go

Go libraries for services and applications that integrate with Aegis. The repository is split into four modules so consumers can depend on the layer they need without pulling in the rest.

| Module | Purpose |
| --- | --- |
| `application` | Client-side application and token management |
| `guard` | Authentication middleware and authorization requirements |
| `service` | Token extraction, verification, and decryption |
| `utilities` | Keys, PASETO/PASERK, relations, issuers, and token types |

## Install

```bash
go get github.com/heliannuuthus/aegis-go/guard
```

Choose the module path that matches the package you use. The modules are versioned independently by their directory prefix.

## Development

```bash
make test
make lint
make tidy
```

The ReBAC client and guard model is described in [`docs/relation-design.md`](docs/relation-design.md).
