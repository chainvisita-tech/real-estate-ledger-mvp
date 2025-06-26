# RealFraction Smart Contracts

Blockchain-powered real estate platform — MVP scaffold for production-grade contracts.

## Overview

RealFraction uses a **hybrid on-chain / off-chain** architecture. Critical ownership and financial logic lives on-chain; identity, documents, and smart-home systems run off-chain.

## Contract Map

| Contract | Purpose | Status |
|----------|---------|--------|
| **PropertyNft** | ERC-721 property ownership NFT. Digital proof of ownership, transferable certificate, programmable access key for smart homes. | ✅ Implemented |
| **Pool** | ERC-20 fractional ownership tokens. Pool liquidity and fractional investment. | ✅ Implemented |
| **ProtocolProxy / State** | Proxy and state management for the protocol. | ✅ Implemented |
| **Auctions** | Auction logic for property sales and rental bidding. | ✅ Implemented |
| **Borrowing / Residents** | Lending, amortization, resident management. | ✅ Implemented |
| **RealFractionToken** | ERC-20 platform utility token (fees, staking, rewards). | ✅ MVP scaffold |
| **Staking** | Stake RFT tokens for rewards. | ✅ MVP scaffold |

## On-Chain Components

- Ownership NFTs (ERC-721)
- Fractional tokens (ERC-20)
- Auction logic
- Staking
- Transaction transparency

## Off-Chain Components (Backend / App)

- Identity verification
- Legal document generation
- Smart home integration
- Data indexing
- Compliance logic

## Tech Stack

- **Solidity** ^0.8.15
- **OpenZeppelin** — Security-tested libraries
- **Ethereum-compatible** networks (Ethereum, Polygon, etc.)

## Roadmap

1. Security audit
2. Upgradeability patterns
3. Governance integration
4. Full reward / staking logic
5. Smart home NFT access integration
