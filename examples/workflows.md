# Example Workflows

## Payroll with ENS Resolution

```bash
# Step 1: Resolve names to verify addresses
curl "$SPRAAY_GATEWAY_URL/api/resolve?name=alice.eth"
curl "$SPRAAY_GATEWAY_URL/api/resolve?name=bob.base"

# Step 2: Confirm addresses and amounts with user, then send batch
curl -X POST "$SPRAAY_GATEWAY_URL/api/batch-payment" \
  -H "Content-Type: application/json" \
  -d '{
    "recipients": [
      {"address": "alice.eth", "amount": "3000"},
      {"address": "bob.base", "amount": "2500"}
    ],
    "token": "USDC",
    "chain": "base",
    "memo": "March 2026 payroll"
  }'
```

## Price Check Before Payment

```bash
# Check current ETH price
curl "$SPRAAY_GATEWAY_URL/api/price?symbol=ETH"

# Then proceed with payment after user confirms the value
```

## Multi-Token Batch

```bash
# USDC batch on Arbitrum
curl -X POST "$SPRAAY_GATEWAY_URL/api/batch-payment" \
  -H "Content-Type: application/json" \
  -d '{
    "recipients": [
      {"address": "0xAAA...", "amount": "100"},
      {"address": "0xBBB...", "amount": "200"}
    ],
    "token": "USDC",
    "chain": "arbitrum"
  }'
```
