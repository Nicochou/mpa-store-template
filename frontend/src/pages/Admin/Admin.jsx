import React, { useState, Fragment, useEffect } from "react";
import AdminAddProduct from "../../components/AdminPanel/AdminAddProduct/AdminAddProduct";
import AdminProducts from "../../components/AdminPanel/AdminProducts/AdminProducts";
import AdminLogin from "../../components/AdminPanel/AdminLogin/AdminLogin";
import { useDispatch, useSelector } from "react-redux";
import { adminActions } from "../../actions";

function Admin() {
  const [loading, setLoading] = useState(false);
  let loggedIn;

  const auth = () => {
    const admin = JSON.parse(localStorage.getItem("admin"));
    if (admin) {
      loggedIn = true;
    }
  };

  const logout = () => {
    localStorage.removeItem("admin");
    window.location.reload();
  };

  useEffect(() => {
    auth();
  }, []);
  return (
    
    <div className="container-xl">
      <h1>Hello Admin!</h1>
      {!loggedIn ? (
        <AdminLogin logIn={loggedIn} />
        ) : (
        <Fragment>
          <AdminAddProduct />
          <AdminProducts />
        <button onClick={logout} className="btn btn-danger mt-2">
        Logout
        </button>
        </Fragment>
        )}
      
      
    </div>
  );
}

export default Admin;
