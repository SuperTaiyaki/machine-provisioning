#!/usr/bin/env bash

# based on windowmenu.sh

# TODO make this bigger
CMD=$(rofi -font 'monospace 22' -dmenu <<EOF
Lock

Switch user

Logout

Shutdown
EOF
)

case $CMD in
    Lock)
        xsecurelock
        ;;
    "Switch user")
        # TODO lock
        dm-tool switch-to-greeter
        ;;
    Logout)
        herbstclient quit
        ;;
    Shutdown)
        shutdown -h now
        ;;
esac

