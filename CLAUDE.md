# Aegis Go

Go 认证 SDK/库集合，提供 Aegis 相关的 token、验证、guard、service 抽象。该仓库是多 module 布局，不是单个根 module。

## 目录结构

| 目录 | 说明 |
|------|------|
| `application/` | 应用侧管理能力 |
| `guard/` | 鉴权 guard、Gin 集成、requirement 组合 |
| `service/` | token extractor / verifier / decryptor 等服务抽象 |
| `utilities/` | PASETO、PASERK、issuer、key、relation、token 等通用能力 |

## 常用命令

```bash
# 单 module 验证
cd guard && go test ./...
cd service && go test ./...
cd utilities && go test ./...
cd application && go test ./...

# 全仓库验证
for m in application guard service utilities; do (cd "$m" && go test ./...); done
for m in application guard service utilities; do (cd "$m" && go fmt ./...); done
```

## 开发规则

- 保持各 module 可独立发布，避免无意引入跨 module 循环依赖。
- token、key、PASETO/PASERK 相关逻辑优先复用 `utilities/`，不要在上层复制实现。
- Guard 层只做认证上下文提取、requirement 判断与框架适配，不要嵌入业务授权策略。
- 错误类型和 token claim 变更需要同步 README 示例与测试。

## 验证 Checklist

1. 修改哪个 module，就在该 module 下运行 `go test ./...`。
2. 公共 utilities 变更后，至少跑 `guard`、`service`、`utilities` 三个 module 测试。
3. 涉及 token/key 语义时补充测试用例，避免只靠编译通过。
