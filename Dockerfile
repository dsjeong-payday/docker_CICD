# syntax=docker/dockerfile:1
FROM busybox:latest
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "현재 시각은 is now $(date +%T)\\r"
  sleep 1
done
EOF

ENTRYPOINT /app/run.sh
