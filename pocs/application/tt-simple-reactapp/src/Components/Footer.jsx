import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";

const Footer = () => {
  return (
    <>
      <footer>
        <Navbar bg="light" data-bs-theme="light">
          <Container>
            <Navbar.Brand>Rescued Hearts Refuge</Navbar.Brand>
          </Container>
          <div className="footer-social-media-container">
            <i className="fa-brands fa-facebook"></i>
            <i className="fa-brands fa-twitter"></i>
            <i className="fa-brands fa-instagram"></i>
            <i className="fa-brands fa-github"></i>
          </div>
        </Navbar>
      </footer>
    </>
  );
};

export default Footer;
