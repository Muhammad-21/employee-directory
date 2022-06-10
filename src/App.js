import { Route, Routes } from 'react-router-dom';
import './App.css';
import Lists from './pages/Lists';
import Main from './pages/Main';

function App() {
  return (
    <div className='content'>
      <Routes>
        <Route exact path='/' element={<Main/>}/>
        <Route exact path='/lists' element={<Lists/>}/>
        <Route exact path='*' element={<Main/>} />
      </Routes>
    </div>
  );
}

export default App;
