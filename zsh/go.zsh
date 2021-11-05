export GOROOT="$(/usr/local/bin/brew --prefix go)/libexec"
export GOPATH="$HOME/workspace/go"

export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export GO111MODULE=on
