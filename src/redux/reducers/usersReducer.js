export const SET_USERS = 'SET_USERS';
export const SET_LOADING = 'SET_LOADING';

const initialState = {
    items: [],
    isLoading: false,
};


const usersReducer = (state = initialState, action) => {
    switch(action.type){
        case SET_USERS:
            return {
                ...state,
                items:action.payload,
                isLoading:false
            }
        case SET_LOADING:
            return{
                ...state,
                isLoading:action.payload,
            }
        default:
            return state;
    }
};

export default usersReducer;