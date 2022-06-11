import React from 'react'
import './cards.css'
import ava7 from '../../../assets/img/ava1.jpg'

export default function Card({data}) {
  return (
            <div style={{width:"220px",marginTop:"10px"}}>
            <div class="single_advisor_profile wow fadeInUp">
              <div align="center" class="advisor_thumb"><img style={{width:"150px"}} src={ava7} alt=""/>
                <div class="social-info"><a href="#">{data.number}</a></div>
              </div>
              <div class="single_advisor_details_info">
                <h6>{data.name}</h6>
                <p class="designation">{data.groups}</p>
              </div>
            </div>
            </div>
  )
}
