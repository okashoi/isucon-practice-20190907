all: build

.PHONY: clean
clean:
	rm -rf torb

# 本番用
deps:
	gb vendor restore
.PHONY: build
build:
	GOPATH=`pwd`:`pwd`/vendor go build -v torb

# 開発用
dev: setup dev-build

setup:
	go get github.com/go-sql-driver/mysql
	go get github.com/gorilla/sessions
	go get github.com/labstack/echo
	go get github.com/labstack/echo-contrib/session
	go get github.com/labstack/echo/middleware

dev-build:
	go build -o torb src/torb/app.go
