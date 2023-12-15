import {
  createWeb3Modal,
  defaultConfig,
  useWeb3Modal,
  useWeb3ModalAccount,
} from "@web3modal/ethers5/react";
import GradientButton from "../../common/atoms/GradientButton";

// 1. Get projectId
const projectId = "YOUR_PROJECT_ID";

// 2. Set chains
const mainnet = {
  chainId: 1,
  name: "Ethereum",
  currency: "ETH",
  explorerUrl: "https://etherscan.io",
  rpcUrl: "https://cloudflare-eth.com",
};

// 3. Create modal
const metadata = {
  name: "My Website",
  description: "My Website description",
  url: "https://mywebsite.com",
  icons: [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmWnG-fzN8tsD4_k77YNbjKyw9ltQBVUdD3IVzv7M5AQ&s",
  ],
};

createWeb3Modal({
  ethersConfig: defaultConfig({ metadata }),
  chains: [mainnet],
  projectId,
});

export default function InitWallet() {
  const { open } = useWeb3Modal();

  return (
    <>
      <GradientButton color={"blue"} onClick={() => open()}>
        Connect Wallet
      </GradientButton>
    </>
  );
}
