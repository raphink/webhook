#!/bin/sh

if [ -n $HOOKS_URI ]; then
  git clone "$HOOKS_URI" /etc/webhook
fi

exec /go/bin/webhook -hooks /etc/webhook/*.json -verbose
