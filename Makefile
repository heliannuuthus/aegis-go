MODULES := application guard service utilities
GOLANGCI_LINT ?= golangci-lint

.PHONY: test lint fmt tidy

test:
	@for module in $(MODULES); do (cd $$module && go test ./...); done

lint:
	@for module in $(MODULES); do (cd $$module && $(GOLANGCI_LINT) run ./...); done

fmt:
	@for module in $(MODULES); do (cd $$module && go fmt ./...); done

tidy:
	@for module in $(MODULES); do (cd $$module && go mod tidy); done
