import EmployeeService from "../../API/EmployeeService";
import { SET_GROUPS } from "../reducers/groupsReducer";



export const setGroups = items => ({
    type:SET_GROUPS,
    payload:items,
});


export const fetchGroups = () => (dispatch) => {
    EmployeeService.getGroups()
    .then((data) => {
        dispatch(setGroups(data));
    })
}