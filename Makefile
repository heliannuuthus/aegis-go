MODULES := application guard service utilities
GOLANGCI_LINT ?= golangci-lint

.PHONY: test lint fmt tidy

test:
	@set -e; for module in $(MODULES); do (cd $$module && go test ./...); done

lint:
	@set -e; for module in $(MODULES); do (cd $$module && $(GOLANGCI_LINT) run ./...); done

fmt:
	@set -e; for module in $(MODULES); do (cd $$module && go fmt ./...); done

tidy:
	@set -e; for module in $(MODULES); do (cd $$module && go mod tidy); done
