import { Table, Tag } from 'antd';
import React from 'react';
import { useSelector } from 'react-redux';

export default function Tables({data}){ 
  const groups = useSelector(({groups}) => groups.items);

  const columns = [
    {
      title: 'Полное имя',
      dataIndex: 'name',
      key: 'name',
      render: (text) => <a>{text}</a>,
    },
    {
      title: 'Учетная запись',
      dataIndex: 'account',
      key: 'account',
    },
    {
      title: 'Электронная почта',
      dataIndex: 'email',
      key: 'email',
    },
    {
      title: 'Группы',
      key: 'groups',
      dataIndex: 'groups',
      render: (_, { groups }) => (
        <>
          {[groups].map((group) => {
            let color = '';
            if(group === "Отдел кадров"){
              color = 'geekblue';
            } 
            if (group === 'Бухгалтерия'){
              color = 'volcano';
            }
            if (group === 'Руководство'){
              color = 'green';
            }
            if(group === 'Отдел маркетинга'){
              color = 'magenta';
            }
            return (
              <Tag color={color} key={groups}>
                {group ? group.toUpperCase() : "БЕЗ ГРУППЫ"}
              </Tag>
            );
          })}
        </>
      ),
      filters:[
        ...groups.map(group => ({text:group.name, value:group.name})),
        {
          text:'Без группы',
          value:null
        },
      ],
      onFilter: (value, record) => {
        if(value === null){
          return record.groups === null
        }else{
          return record.groups !== null && record.groups.indexOf(value) === 0
        }
      },
    },
    {
      title: 'Номер',
      key: 'number',
      dataIndex: 'number',
    },
  ];
  

  return(
    <Table 
      columns={columns} 
      dataSource={data} 
      scroll={{
        y: 500,
      }}
      pagination={{
        pageSize: 30,
      }}
  />
  )
}