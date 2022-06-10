import React, { useState } from 'react'
import {
  MenuFoldOutlined,
  MenuUnfoldOutlined,
  GroupOutlined,
  TableOutlined,
  IdcardOutlined,
  LeftOutlined,
} from '@ant-design/icons';
import './lists.css';
import { Layout, Menu } from 'antd';
import { Link } from 'react-router-dom';
const { Header, Sider, Content } = Layout;

export default function Lists() {

  const [collapsed, setCollapsed] = useState(false);

  
  return (
    <Layout style={{height:"100vh"}}>
      <Sider theme="light" width="350" trigger={null} collapsible collapsed={collapsed}>
        <div className="logo"></div>
        {!collapsed && <h5 align="center" style={{marginTop:"50px",color:"#0d6efd"}}>Варианты отображения данных</h5>}
        <Menu
          style={{marginTop:60}}
          mode="inline"
          defaultSelectedKeys={['1']}
          items={[
            {
              key: '1',
              icon: <TableOutlined />,
              label: 'Общая таблица',
            },
            {
              key: '2',
              icon: <IdcardOutlined />,
              label: 'Список карточек',
            },
            {
              key: '3',
              icon: <GroupOutlined />,
              label: 'По группам',
            },
          ]}
        />
        <div className='back'><Link className='back_link' to="/"><LeftOutlined/>{!collapsed && "на главную"}</Link></div>
      </Sider>
      <Layout className="site-layout">
        <Header className="site-background" style={{ padding: "0", height:"90px" }}>
          {React.createElement(collapsed ? MenuUnfoldOutlined : MenuFoldOutlined, {
            className: 'trigger',
            onClick: () => setCollapsed(!collapsed),
          })}
          Справочник сотрудников
        </Header>
        <Content
          style={{
            margin: '24px 16px',
            padding: 24,
            minHeight: 280,
          }}
        >
          Content
        </Content>
      </Layout>
    </Layout>
  )
}
