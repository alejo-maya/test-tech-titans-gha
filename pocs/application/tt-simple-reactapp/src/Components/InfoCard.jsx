import Card from "react-bootstrap/Card";

const InfoCard = ({ info }) => {
  return (
    <>
      <Card style={{ width: "18rem" }}>
        <Card.Body>
          <Card.Title>{info.title}</Card.Title>
          <Card.Text>{info.description}</Card.Text>
        </Card.Body>
      </Card>
    </>
  );
};

export default InfoCard;
