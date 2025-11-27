#!/usr/bin/env bash


OUT="process_report.txt"


{
	echo "=== Process Report ($(date)) ==="
	echo
	echo "[Top 5 Memory]"
	ps aux --sort=-%mem | head -n 6
	echo
	echo "[Top 5 CPU]"
	ps aux --sort=-%cpu | head -n 6
	echo
	echo "[SSH service status]"
	systemctl status ssh --no-pager
	echo
	echo "[Recent SSH logs]"
	journalctl -u ssh --since "15 minutes ago" --no-pager
} > "$OUT"

echo "Saved to $OUT"
