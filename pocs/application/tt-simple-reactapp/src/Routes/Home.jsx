import BigBannerCarousel from "../Components/BigBannerCarousel";
import InfoCard from "../Components/InfoCard";
import SimpleCard from "../Components/SimpleCard";

import { infocards_text } from "../utils/infocards_text";
import { simplecards_text } from "../utils/simplecards_text";
import { bigbanner_info } from "../utils/bigbanner_info";
import { Link } from "react-router-dom";
import { routes } from "../utils/routes";

const Home = () => {
  return (
    <>
      <BigBannerCarousel info={bigbanner_info.home} />
      <div className="home-content">
        <div>
          <h1>
            Rescued <span className="span-heart">Hearts</span> Refuge
          </h1>
          <p>
            We are committed to the welfare of homeless animals. We specialize
            in the rescue, rehabilitation and adoption of dogs, horses and cats
            that have been abandoned or abused. We believe in giving them a
            second chance, providing them with love, care and a new family.
          </p>
        </div>
        <div className="info-container">
          <h1>
            What We <span className="span-heart">Do?</span>
          </h1>
          <div className="cards-container">
            {infocards_text.map((item) => (
              <InfoCard info={item} key={item.item} />
            ))}
          </div>
        </div>
        <div className="info-container">
          <h1>
            How you can <span className="span-heart">help</span>
          </h1>
          <div className="help-cards-container">
            {simplecards_text.map((item) => (
              <SimpleCard info={item} key={item.item} />
            ))}
          </div>
        </div>
        <div className="info-container">
          <h1>
            Join <span className="span-heart">Us</span>
          </h1>
          <p>
            Every Action Counts. With your support, we can continue to save and
            improve the lives of these vulnerable beings. Together, we can make
            a significant difference in the world of homeless animals.
          </p>
        </div>
        <div className="info-container">
          <Link to={routes.contact}>
            <h1>
              Contact <span className="span-heart">Us!</span>
            </h1>
          </Link>
        </div>
      </div>
    </>
  );
};

export default Home;
