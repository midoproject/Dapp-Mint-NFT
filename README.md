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
dapp-mint-nft/
├── README.md                # Dokumentasi proyek
├── contracts/               # Bagian smart contract
│   ├── contracts/           # Folder utama Solidity
│   │   └── MyNFT.sol        # Kontrak ERC-721
│   ├── scripts/             # Script Hardhat
│   │   └── deploy.ts        # Script deploy kontrak
│   ├── test/                # Unit test Solidity
│   │   └── MyNFT.test.ts
│   ├── hardhat.config.ts    # Config Hardhat
│   ├── package.json         # Dependensi kontrak
│   ├── tsconfig.json        # Config TypeScript
│   └── .env.example         # Contoh env kontrak
│
├── web/                     # Bagian frontend React
│   ├── public/              # Static assets
│   ├── src/                 
│   │   ├── abi/             # ABI hasil compile Hardhat
│   │   │   └── MyNFT.json
│   │   ├── lib/             # Helper fungsi blockchain
│   │   │   └── chain.ts
│   │   ├── components/      # Komponen UI (opsional)
│   │   ├── App.tsx          # Main App React
│   │   └── main.tsx         # Entry point React
│   ├── package.json         # Dependensi frontend
│   ├── tsconfig.json        # Config TypeScript
│   ├── vite.config.ts       # Config Vite
│   └── .env.example         # Contoh env frontend
│
└── .gitignore               # Ignore node_modules, .env, dll
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
