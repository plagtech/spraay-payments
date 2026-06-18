# Spraay Payments — OpenClaw Skill 💧

Batch crypto payments and payroll for your OpenClaw agent via the Spraay x402 gateway.

## What This Skill Does

- **Batch payments** — Send tokens to multiple wallets in one transaction (60-80% gas savings)
- **Payroll** — Pay your team with one command, ENS/Basename resolution included
- **Invoicing** — Create and track crypto invoices
- **Price checks** — Free real-time token prices
- **Balance queries** — Check wallet balances across chains

Supports Base, Ethereum, Arbitrum, Polygon, BNB Chain, Avalanche, Unichain, Plasma, BOB.

## Important

**Blockchain transactions are irreversible.** This skill moves real tokens on real blockchains. Always review recipient addresses, amounts, and chain before confirming a payment. Each paid API call incurs a small USDC micropayment via the x402 protocol.

## Install

```
clawhub install spraay-payments
```

Or from GitHub:

```
clawhub install github:plagtech/spraay-payments
```

## Requirements

- `curl` and `jq`
- An x402-compatible wallet (Coinbase CDP or similar)
- No API key needed — uses x402 micropayments

## Quick Start

Once installed, ask your agent:

- "Send 1000 USDC to alice.eth and 500 USDC to bob.base on Base"
- "What's the price of ETH?"
- "Create an invoice for 5000 USDC"
- "Check my USDC balance on Arbitrum"

## Other Spraay Skills

For additional gateway capabilities beyond payments, see:

- **spraay-defi** — Token swaps, DeFi analytics, price feeds
- **spraay-compute** — AI inference, compute tasks
- **spraay-openclaw** — Full gateway reference skill

## Links

- **App**: https://spraay.app
- **Gateway**: https://gateway.spraay.app
- **Docs**: https://docs.spraay.app
- **GitHub**: https://github.com/plagtech

Built by [@plag](https://warpcast.com/plag) | [@lostpoet](https://twitter.com/lostpoet)
