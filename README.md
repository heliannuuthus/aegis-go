<p align="center">
  <img src="./assets/brand/hero-ice.png" width="256" alt="Aegis Go logo" />
</p>

<h1 align="center">Aegis Go</h1>

Aegis Go 是一组跟 Aegis 打交道的 Go 库。没有单一入口，而是按用途拆成四个各自独立发版的 module——`application`（应用侧注册与令牌管理）、`guard`（认证中间件与鉴权 requirement）、`service`（令牌的提取、校验、解密）、`utilities`（密钥、PASETO/PASERK、issuer 等基础能力）。需要哪一层就只依赖哪一层，不必把整套都拉进来。

Aegis Go is a set of Go libraries for working with Aegis. Rather than a single entry point, it's split into four independently versioned modules — `application`, `guard`, `service`, and `utilities` — so you only depend on the layer you actually use.