import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";
import { Link } from "react-router-dom";
import { routes } from "../utils/routes";

const NavbarC = () => {
  return (
    <>
      <Navbar fixed="top" bg="light" data-bs-theme="light">
        <Container>
          <Link to={routes.home}>
            <Navbar.Brand>Rescued Hearts</Navbar.Brand>
          </Link>
          <Nav className="me-auto">
            <Link to={routes.home} className="nav-link">
              Home
            </Link>
            <Link to={routes.contact} className="nav-link">
              Contact
            </Link>
          </Nav>
        </Container>
      </Navbar>
    </>
  );
};

export default NavbarC;
