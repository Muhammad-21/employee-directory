import { List} from 'antd'
import React from 'react'
import Card from './Card'

export default function Cards({data}) {

  return (
        <div style={{marginLeft:"5px"}}>
          <List
            grid={{
              xs: 1,
              sm: 2,
              md: 3,
              lg: 4,
              xl: 5,
              xxl: 6
            }}
            pagination={{
              showSizeChanger: true,
              pageSizeOptions: ["10", "50", "100", "1000"],
              pageSize: 10,
            }}
            dataSource={data}
            renderItem= {item => <Card key={item.key} data={item}/>}
          />
      </div>
  )
}
