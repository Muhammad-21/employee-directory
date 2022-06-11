import { Table, Tag } from 'antd';
import React from 'react';

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
              {group.toUpperCase()}
            </Tag>
          );
        })}
      </>
    ),
    filters:[{
      text:'Бухгалтерия',
      value:'Бухгалтерия'
      },
      {
        text:'Отдел кадров',
        value:'Отдел кадров'
      },
      {
        text:'Руководство',
        value:'Руководство'
      },
      {
        text:'Отдел маркетинга',
        value:'Отдел маркетинга'
      },
    ],
    onFilter: (value, record) => record.groups.indexOf(value) === 0,
  },
  {
    title: 'Номер',
    key: 'number',
    dataIndex: 'number',
  },
];

const Tables = ({data}) => 
  <Table 
    columns={columns} 
    dataSource={data} 
    scroll={{
      y: 500,
    }}
    pagination={{
      pageSize: 30,
    }}
/>;

export default Tables;