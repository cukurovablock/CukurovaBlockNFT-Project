import React from "react";
import InitWallet from "../../common/molecules/InitWallet";

const Navbar = () => {
  return (
    <div className="bg-gray-900 shadow-lg  w-full sticky top-0 px-3 py-3 flex gap-4 justify-between items-center">
      <div className="bg-gradient-to-r from-blue-400 to-red-500 text-white h-fit px-4 py-1 rounded-md cursor-pointer hover:scale-105 animate-pulse duration-300">
        NFT.io
      </div>
      <div></div>
      <div className="flex gap-2">
        <InitWallet />
      </div>
    </div>
  );
};

export default Navbar;
