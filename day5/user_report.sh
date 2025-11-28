#!/usr/bin/env bash

OUT="user_report.txt"

{
	echo "=== User Report ($(date))==="
	echo
	echo "[Current users]"
	who
	echo
	echo "[User list]"
	cut -d: -f1 /etc/passwd
	echo
	echo  "[Groups]"
	getent group
	echo
	echo "[ACL for secret.txt]"
	getfacl secret.txt

} > "$OUT"


echo "Saved to $OUT"
