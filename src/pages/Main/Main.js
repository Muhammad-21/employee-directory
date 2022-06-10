import React from 'react'
import people from '../../assets/img/people.jpg';
import ava1 from '../../assets/img/ava1.jpg';
import ava2 from '../../assets/img/ava2.jpg';
import ava3 from '../../assets/img/ava3.jpg';
import ava4 from '../../assets/img/ava4.jpg';
import ava5 from '../../assets/img/ava5.jpg';
import ava6 from '../../assets/img/ava6.jpg';
import ava7 from '../../assets/img/ava7.jpg';
import { Link } from 'react-router-dom';
import './main.css';

export default function Main() {
  return (
    <div className="container">
        <div className="body d-md-flex align-items-center justify-content-between">
            <div className="box-1 mt-md-0 mt-5">
                <img src={people} alt="people"/>
            </div>
            <div className="box-2 d-flex flex-column">
                <div className="mt-1">
                    <p className="mb-4 h-1" align="center">Справочник сотрудников</p>
                    <div className="d-flex flex-column align-items-center">
                        <div className="d-flex">
                            <div className='me-3'>
                              <img src={ava1} alt="аватарка" width="40"/>
                            </div>
                            <div className='me-3'>
                              <img src={ava2} alt="аватарка" width="40"/>
                            </div>
                            <div className='me-3'>
                              <img src={ava3} alt="аватарка" width="40"/>
                            </div>
                            <div className='me-3'>
                              <img src={ava4} alt="аватарка" width="40"/>
                            </div>
                        </div>
                        <div className="d-flex">
                            <div className='me-3'>
                              <img src={ava5} alt="аватарка" width="40"/>
                            </div>
                            <div className='me-3'>
                              <img src={ava6} alt="аватарка" width="40"/>
                            </div>
                            <div className='me-3'>
                              <img src={ava7} alt="аватарка" width="40"/>
                            </div>
                            <div className='me-3'>
                              <div className='others'><Link to="/lists"><div align="center">еще 293</div></Link></div>
                            </div>
                        </div>
                        <div className="mt-3">
                            <Link className="btn btn-primary" to="/lists">Посмотреть стуктуру</Link>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  )
}
