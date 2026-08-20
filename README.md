<p align="center">
  <img src="./assets/brand/hero-ice.png" width="256" alt="Aegis emblem suspended in a clear ice block" />
</p>

<h1 align="center">Aegis Go</h1>

<p align="center">
  <strong>Composable Go libraries for services and applications protected by Aegis.</strong><br />
  面向 Aegis 服务与应用的可组合 Go 认证库。
</p>

## Overview / 项目简介

Aegis Go provides token, key, guard, service, and application abstractions. Four independently versioned modules let consumers depend only on the layer they need.

Aegis Go 提供令牌、密钥、Guard、服务和应用侧抽象，并通过四个独立 module 控制依赖边界。

| Module | Purpose |
| --- | --- |
| `application` | Client-side application and token management |
| `guard` | Authentication middleware and authorization requirements |
| `service` | Token extraction, verification, and decryption |
| `utilities` | Keys, PASETO/PASERK, relations, issuers, and token types |

## Install

```bash
go get github.com/heliantheon/aegis-go/guard
```

Choose the module path matching the package you use. Modules are versioned independently by directory prefix.

## Development

```bash
make test
make lint
make tidy
```

The ReBAC client and guard model is described in [`docs/relation-design.md`](docs/relation-design.md).
