import React, { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
import NavBar from './NavBar';
import Home from './Home';
import SignUp from './SignUp';
import Login from "./Login";
import Airlines from "./Airlines";

function App() {
  const [ user, setUser ] = useState(null);

  useEffect(() => {
    fetch('/me').then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    })
  }, []);


  return (
    <>
      <NavBar user={user} setUser={setUser} />
      <main>
        {user ? (
          <Routes>
            <Route exact patch="/">
              <Home setUser={setUser} user={user}/>
            </Route>
            <Route exact path="/airlines">
              <Airlines user={user}/>
            </Route>
          </Routes>
        ) : (
          <Routes>
            <Route exact path="/signup">
              <SignUp setUser={setUser}/>
            </Route>
            <Route exact path="/login">
              <Login setUser={setUser}/>
            </Route>
            <Route exact path="/">
              <Home setUser={setUser}/>
            </Route>
          </Routes>
        )}
      </main>
    </>
  );
}

export default App;
