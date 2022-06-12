import React, { useEffect } from 'react'
import GroupTable from './GroupTable'
import './groups.css';
import { useSelector } from 'react-redux';

export default function Groups({users}) {
  const groups = useSelector(({groups}) => groups.items);
  
  return (
    <div style={{display:"flex",justifyContent:"space-between",marginRight:"10px"}}>
      {
      groups.map((group) => {
        return <div key={group.id_group} className='item'>
          <GroupTable key={group.id_group} groupName={group.name} users={users.filter((user) => user.groups === group.name)}/>
        </div>
      })
      }
      <div className='item'>
        <GroupTable groupName={"Без группы"} users={users.filter(user => user.groups === null)}/>
      </div>
    </div>
  )
}
