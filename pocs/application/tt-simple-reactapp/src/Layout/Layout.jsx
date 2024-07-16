import Footer from "../Components/Footer";
import NavbarC from "../Components/NavbarC";
import { Outlet } from "react-router-dom";
const Layout = () => {
  return (
    <>
      <NavbarC />
      <Outlet />
      <Footer />
    </>
  );
};

export default Layout;
