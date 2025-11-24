#!/usr/bin/env bash

OUT="report.txt"

{
  echo "=== Log Report ($(date)) ==="
  echo
  echo "[Last SSH events]"
  sudo journalctl -u ssh --since "10 minutes ago" | tail -n 10
  echo
  echo "[Most active processes]"
  ps aux --sort=-%cpu | head -n 6
  echo
  echo "[Disk usage]"
  df -h | head -n 7
} > "$OUT"

echo "Saved to $OUT"

