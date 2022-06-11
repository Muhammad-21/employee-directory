export const SET_GROUPS = 'SET_GROUPS';

const initialState = {
    items: []
};


const groupsReducer = (state = initialState, action) => {
    switch(action.type){
        case SET_GROUPS:
            return {
                ...state,
                items:action.payload,
            }
        default:
            return state;
    }
};

export default groupsReducer;