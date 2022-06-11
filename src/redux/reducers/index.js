import { combineReducers } from "redux";
import groupsReducer from "./groupsReducer";
import usersReducer from "./usersReducer";

const rootReducer = combineReducers({
    users:usersReducer,
    groups:groupsReducer,
})

export default rootReducer;