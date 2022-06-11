import { Button } from 'antd'
import React from 'react'
import { PoweroffOutlined} from '@ant-design/icons';
export default function Loader() {
  return (
    <div style={{display:"flex",justifyContent:"center",alignItems:"center",margin:"200px"}}>
        <Button size='large' type="primary" icon={<PoweroffOutlined />} loading>Загрузка данных</Button>
    </div>
  )
}
