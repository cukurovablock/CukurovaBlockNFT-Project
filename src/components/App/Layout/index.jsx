import React from "react";
import Navbar from "../Navbar";
import Main from "../Main";

const Layout = ({ children }) => {
  return (
    <div className="bg-slate-50" style={{ height: "100vh" }}>
      <Navbar />
      {children}
    </div>
  );
};

export default Layout;
