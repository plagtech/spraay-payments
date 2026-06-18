#!/usr/bin/env bash
# Spraay gateway health check
# Usage: bash health-check.sh

GATEWAY="${SPRAAY_GATEWAY_URL:-https://gateway.spraay.app}"

echo "Checking Spraay gateway at $GATEWAY..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$GATEWAY/api/health")

if [ "$STATUS" = "200" ]; then
  echo "✅ Gateway is healthy (HTTP $STATUS)"
else
  echo "❌ Gateway returned HTTP $STATUS"
  exit 1
fi
