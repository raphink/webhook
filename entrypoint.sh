#!/bin/sh

if [ -n $HOOKS_URI ]; then
  git clone "$HOOKS_URI" /etc/webhook
  sed -i "s/%{HOOKS_SECRET}/${HOOKS_SECRET}/g" /etc/webhook/*.json
fi

exec /go/bin/webhook -hooks /etc/webhook/*.json -verbose
