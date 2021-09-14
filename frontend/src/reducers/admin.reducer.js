import {
  AUTH_SUCCESS,
  AUTH_FAIL,
  AUTH_START,
  LOGOUT,
} from "../actions/actionTypes";

// let admin = JSON.parse(localStorage.getItem("admin"));
// const initialState = admin ? { loggedIn: true, admin } : {};
const initialState = { loggedIn: false };

const adminReducer = (state = initialState, action) => {
  switch (action.type) {
    case AUTH_START:
      return {
        loading: true,
      };
    case AUTH_SUCCESS:
      return {
        loggedIn: true,
        admin: action.admin,
      };
    case AUTH_FAIL:
      return {
        loggedIn: false,
        error: action.error,
      };
    case LOGOUT:
      return {
        loggedIn: false,
      };
    default:
      return state;
  }
};

export default adminReducer;
