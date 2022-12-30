#!/usr/bin/env bash

# based on windowmenu.sh

CMD=$(rofi -dmenu <<EOF
qutebrowser
vivaldi

xournalpp
write
EOF
)

[[ -n "$CMD" ]] && exec "$CMD"

