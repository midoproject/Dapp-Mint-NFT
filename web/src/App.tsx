import { useState } from 'react';
export default function App() {
  const [msg, setMsg] = useState('');
  return <div><h1>Mint NFT dApp</h1><input value={msg} onChange={e=>setMsg(e.target.value)} /></div>;
}