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
  },
  {
    title: 'Номер',
    key: 'number',
    dataIndex: 'number',
  },
];
// const data = [
//   {
//     key: '1',
//     name: 'John Brown',
//     account: 'companydomain/JohnBrown',
//     email: 'JohnBrown@companydomain.com',
//     groups: ['Бухгалтерия'],
//     number:'+123(456)123-45-66',
//   },
//   {
//     key: '2',
//     name: 'Jim Green',
//     account: 'companydomain/JimGreen',
//     email: 'JimGreen@companydomain.com',
//     groups: ['Руководство'],
//     number:'+123(456)123-45-66',
//   },
//   {
//     key: '3',
//     name: 'Joe Black',
//     account: 'companydomain/JoeBlack',
//     email: 'JoeBlack@companydomain.com',
//     groups: ['Отдел кадров'],
//     number:'+123(456)123-45-66',
//   },
//   {
//     key: '4',
//     name: 'Joe Black',
//     account: 'companydomain/JoeBlack',
//     email: 'JoeBlack@companydomain.com',
//     groups: ['не состоит в группе'],
//     number:'+123(456)123-45-66',
//   },
//   {
//     key: '5',
//     name: 'Joe Black',
//     account: 'companydomain/JoeBlack',
//     email: 'JoeBlack@companydomain.com',
//     groups: ['Отдел маркетинга'],
//     number:'+123(456)123-45-66',
//   },
// ];

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