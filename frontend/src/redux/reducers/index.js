import { combineReducers } from "redux";

import authReducer from "./auth.reducer";
import adminReducer from "./admin.reducer";
import cartReducer from "./cart.reducer";
import userReducer from "./user.reducer";

const rootReducer = combineReducers({
  authReducer,
  adminReducer,
  cartReducer,
  userReducer,
});

export default rootReducer;
