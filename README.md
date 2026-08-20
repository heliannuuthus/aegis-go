<p align="center">
  <img src="./assets/brand/hero-ice.png" width="256" alt="Aegis Go logo" />
</p>

<h1 align="center">Aegis Go</h1>

Aegis Go 是一组跟 Aegis 打交道的 Go 库。没有单一入口，仓库按目录拆成四个各自独立发版的 module——你只需要依赖你用得到的那一层，不必把整套东西都拉进来。

Aegis Go is a set of Go libraries for working with Aegis, split into four independently versioned modules so you only depend on the layer you actually use.

| Module | 用途 |
| --- | --- |
| `application` | 应用侧注册与令牌管理 |
| `guard` | 认证中间件与鉴权 requirement 组合 |
| `service` | 令牌的提取、校验、解密 |
| `utilities` | 密钥、PASETO/PASERK、issuer、relation、token 类型等基础能力 |

Each module lives in its own directory and is versioned independently; pick the path for the package you use.

## 安装

```bash
go get github.com/heliantheon/aegis-go/guard
```

替换成你实际用到的那层路径即可。

## 开发

```bash
make test
make lint
make tidy
```

ReBAC 客户端与 guard 模型的设计写在 [`docs/relation-design.md`](docs/relation-design.md)。