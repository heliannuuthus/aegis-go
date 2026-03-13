package guard

import (
	"github.com/heliannuuthus/aegis-go/service"
	"github.com/heliannuuthus/aegis-go/utilities/key"
)

var globalManager *service.Manager

// NewTokenManager 初始化全局 token Manager。应在服务启动时调用一次。
func NewTokenManager(endpoint string, seedProvider key.Provider) {
	globalManager = service.NewManager(endpoint, seedProvider)
}

// GetTokenManager 返回全局 token Manager。
func GetTokenManager() *service.Manager {
	return globalManager
}
