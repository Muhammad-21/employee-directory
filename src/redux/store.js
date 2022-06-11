import { createStore, applyMiddleware } from "redux";
import rootReducer from './reducers';
import thunkMiddleware from 'redux-thunk';

// const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;


const store = createStore(rootReducer, applyMiddleware(thunkMiddleware));

export default store;