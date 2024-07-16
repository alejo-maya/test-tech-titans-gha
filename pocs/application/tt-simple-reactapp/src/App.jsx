import { Route, Routes } from "react-router-dom";
import { routes } from "./utils/routes";
import Layout from "./Layout/Layout";
import Home from "./Routes/Home";
import Contact from "./Routes/Contact";
import "./styles/App.css";

function App() {
  return (
    <>
      <Routes>
        <Route path={routes.home} element={<Layout />}>
          <Route path={routes.home} element={<Home />} />
          <Route path={routes.contact} element={<Contact />} />
        </Route>
      </Routes>
    </>
  );
}

export default App;
