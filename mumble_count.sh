#/bin/sh

echo -ne '\x00\x00\x00\x00\x00\x78\x50\x61\x77\x2e\x6d\x65' | nc -uw 1 127.0.0.1 64738 | xxd | awk '{ printf "%s", $9 }' | awk '{print int($0)}'
