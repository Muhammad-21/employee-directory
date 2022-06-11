import { Pagination } from 'antd'
import React from 'react'
import Card from './Card'

export default function Cards({data}) {

  const onShowSizeChange = (current, pageSize) => {
    console.log(current, pageSize);
  };

  return (
        <div className="row" style={{marginLeft:"50px",height:"100px"}}>
          {data.map(el => <Card key={el.key} data={el}/> )}
          <Pagination
            showSizeChanger
            onShowSizeChange={onShowSizeChange}
            defaultCurrent={1}
            total={5}
          />
      </div>
  )
}
