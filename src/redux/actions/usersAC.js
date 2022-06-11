import EmployeeService from "../../API/EmployeeService";
import { SET_USERS, SET_LOADING } from "../reducers/usersReducer"

export const setLoading = payload => ({
    type:SET_LOADING,
    payload,
});


export const setUsers = items => ({
    type:SET_USERS,
    payload:items,
});


export const fetchUsers = (sortName,name,groupName='') => (dispatch) => {
    dispatch(setLoading(true));
    EmployeeService.getUsers(sortName,name,groupName)
    .then((data) => {
        dispatch(setUsers(data));
    })
}