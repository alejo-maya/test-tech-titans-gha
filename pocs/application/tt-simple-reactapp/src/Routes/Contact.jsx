import React from "react";
import BigBannerCarousel from "../Components/BigBannerCarousel";
import { bigbanner_info } from "../utils/bigbanner_info";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Card from "react-bootstrap/Card";
const Contact = () => {
  return (
    <>
      <BigBannerCarousel info={bigbanner_info.contact} />
      <div className="home-content">
        <div className="info-container">
          <Card body>
            <Form>
              <Form.Group className="mb-3" controlId="formBasicEmail">
                <Form.Label>Email address</Form.Label>
                <Form.Control type="email" placeholder="Enter email" />
                <Form.Text className="text-muted">
                  We'll never share your email with anyone else.
                </Form.Text>
              </Form.Group>

              <Form.Group className="mb-3" controlId="formBasicPassword">
                <Form.Label>Password</Form.Label>
                <Form.Control type="password" placeholder="Password" />
              </Form.Group>
              <Form.Group className="mb-3" controlId="formBasicCheckbox">
                <Form.Check type="checkbox" label="Check me out" />
              </Form.Group>
              <Button variant="primary" type="submit">
                Submit
              </Button>
            </Form>
          </Card>
        </div>
      </div>
    </>
  );
};

export default Contact;
