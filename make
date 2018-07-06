GO_REPO=github.com/future-architect/vuls

docker run --rm \
  --name dep \
  -v "$PWD":/go/src/$GO_REPO \
  -v "$HOME/.netrc":/root/.netrc \
  -w /go/src/$GO_REPO \
  golang:1.10 \
  make $@
