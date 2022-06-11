import React from 'react'
import Card from './Card'

export default function Cards({data}) {
  return (
        <div className="row" style={{marginLeft:"50px"}}>
          {data.map(el => <Card key={el.key} data={el}/> )}
      </div>
  )
}
