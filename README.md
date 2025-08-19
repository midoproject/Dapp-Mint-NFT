## DApp Mint NFT

Proyek ini adalah template **dApp Mint NFT** berbasis **Solidity (ERC-721 + OpenZeppelin)**, **Hardhat**, dan **React (Vite + ethers.js)** dengan integrasi **NFT.Storage (IPFS)**.

## Fitur
- Deploy kontrak ERC-721 ke testnet Sepolia
- Upload metadata + gambar NFT ke IPFS via NFT.Storage
- Mint NFT langsung dari web dApp (connect MetaMask)
- Struktur folder modular (kontrak & frontend terpisah)

## Struktur Proyek
```
dapp-mint-nft/
â”œâ”€ contracts/         # Hardhat + Solidity
â”‚  â”œâ”€ contracts/MyNFT.sol
â”‚  â”œâ”€ hardhat.config.ts
â”‚  â””â”€ scripts/deploy.ts
â””â”€ web/               # React + Vite
   â”œâ”€ src/App.tsx
   â”œâ”€ src/main.tsx
   â””â”€ src/abi/MyNFT.json
```

## Cara Pakai

### 1. Kontrak (Hardhat)
```bash
cd contracts
npm install
cp .env.example .env   # isi PRIVATE_KEY & RPC_URL_SEPOLIA
npm run compile
npm run deploy:sepolia
```
Catat **alamat kontrak** setelah deploy.

### 2. Frontend (React + Vite)
```bash
cd ../web
npm install
cp .env.example .env   # isi VITE_CONTRACT_ADDRESS & VITE_NFT_STORAGE_TOKEN
npm run dev
```
Buka di browser: [http://localhost:5173](http://localhost:5173)

## Catatan
- Simpan **.env** dengan aman, jangan di-commit ke GitHub.
- Pastikan wallet MetaMask sudah di jaringan **Sepolia** dengan ETH faucet.
- Kode ini hanya contoh, **lakukan audit** sebelum ke mainnet.

## Lisensi
MIT License By Mido
