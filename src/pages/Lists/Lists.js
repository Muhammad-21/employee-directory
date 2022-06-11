import React, { useEffect, useState } from 'react'
import {
  MenuFoldOutlined,
  MenuUnfoldOutlined,
  GroupOutlined,
  TableOutlined,
  IdcardOutlined,
  LeftOutlined,
  SearchOutlined,
} from '@ant-design/icons';
import './lists.css';
import { Layout, Menu,Input} from 'antd';
import { Link } from 'react-router-dom';
import Tables from '../components/Tables';
import Cards from '../components/Cards/Cards';
import Groups from '../components/Groups';
import { useSelector,useDispatch } from 'react-redux';
import { fetchUsers } from '../../redux/actions/usersAC';
import useDebounce from '../../utils/useDebounce';
import Loader from '../components/Loader';

const { Header, Sider, Content } = Layout;

export default function Lists() {

  const [collapsed, setCollapsed] = useState(false);
  const [option, setOption] = useState('table');
  const dispatch = useDispatch();
  const items = useSelector(({ users }) => users.items);
  const isLoading = useSelector(({ users }) => users.isLoading)
  const [search, setSearch] = useState('')
  const debouncedSearchTerm = useDebounce(search,500)

  useEffect(() => {
    dispatch(fetchUsers('ASC',debouncedSearchTerm))
  },[])

  useEffect(() => {
    if(debouncedSearchTerm){
      dispatch(fetchUsers('ASC',debouncedSearchTerm))
    }else{
      dispatch(fetchUsers('ASC',''))
    }
  },[debouncedSearchTerm])


  const changeOption = (evt) => {
    if(evt.key === '1'){
      setOption('table')
    }
    if(evt.key === '2'){
      setOption('cards')
    }
    if(evt.key === '3'){
      setOption('groups')
    }
  }
  let body = ''
  if(option === 'table') body = <Tables data={items}/>
  if(option === 'cards') body = <Cards data={items}/>
  if(option === 'groups') body =  <Groups/>

  const handleSearch = (evt) => {
    setSearch(evt.target.value)
  }

  return (
    <Layout style={{height:"100vh"}}>
      <Sider theme="light" width="300" trigger={null} collapsible collapsed={collapsed}>
        <div className="logo"></div>
        {!collapsed && <h6 align="center" style={{marginTop:"50px",color:"#0d6efd"}}>Варианты отображения данных</h6>}
        <Menu
          style={{marginTop:50}}
          mode="inline"
          defaultSelectedKeys={['1']}
          onClick={changeOption}
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
        <div className='back'>
          <Link to="/">
            <div style={{color:"white"}}>
              <LeftOutlined/>{!collapsed && "на главную"}
            </div>
          </Link>
        </div>
      </Sider>
      <Layout className="site-layout">
        <Header className="site-background" style={{ padding: "0", height:"90px" }}>
          {React.createElement(collapsed ? MenuUnfoldOutlined : MenuFoldOutlined, {
            className: 'trigger',
            onClick: () => setCollapsed(!collapsed),
          })}
          Справочник сотрудников
        </Header>
        <Input 
          style={{marginTop:"10px", marginLeft:"10px", width:"50%"}} 
          placeholder="Поиск сотрудника" 
          prefix={<SearchOutlined />} 
          value={search}
          onChange={handleSearch}
        />
        <Content
          style={{
            padding: "9px 10px 0px 10px",
            minHeight: 280,
            height:"500px",
            overflow:"auto",
            overflowX:"hidden"
          }}
        >
          {
          isLoading ? <Loader/> : body
        }
        </Content>
      </Layout>
    </Layout>
  )
}
