#!/bin/sh

NODE_VERSION="16.13.0"
GO_VERSION="1.17.3"
RUBY_VERSION="3.0.3"

# TODO find another way of re login shell

# set anyenv
brew install anyenv
anyenv init
exec "$SHELL" -l
anyenv install --init

# set nodenv
anyenv install nodenv
exec "$SHELL" -l
nodenv install "$NODE_VERSION"
nodenv global "$NODE_VERSION"

# set goenv
anyenv install goenv
exec "$SHELL" -l
goenv install "$GO_VERSION"
goenv global "$GO_VERSION"

# set rbenv
anyenv install rbenv
exec "$SHELL" -l
rbenv install "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"

# set jenv
# research it
