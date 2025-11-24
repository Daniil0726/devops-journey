#!/usr/bin/env bash

echo "=== Permission Report ($(date)) ==="
echo
echo "[Current user]"
id
echo
echo "[Files in $(pwd)]"
ls -l
echo
echo "[Groups]"
groups
