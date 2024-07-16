import React from "react";
import Card from "react-bootstrap/Card";

const SimpleCard = ({ info }) => {
  return (
    <>
      <Card body>
        <span className="span-heart">{info.title}</span> {info.description}
      </Card>
    </>
  );
};

export default SimpleCard;
