APP_NAME = gofm
GOARCH = amd64
GOOS = linux

build:
	go build -o ./bin/$(APP_NAME)-$(GOOS)-$(GOARCH) .
