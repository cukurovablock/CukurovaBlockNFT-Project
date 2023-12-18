import { useWeb3ModalAccount } from "@web3modal/ethers5/react";
import React from "react";

const HomePage = () => {
  const { address, chainId, isConnected } = useWeb3ModalAccount();
  return (
    <div>
      <div>{isConnected && "Walet is connected"}</div>
      <div>{address}</div>
    </div>
  );
};

export default HomePage;
