import React, { useEffect, useState } from 'react'
import {
  MenuFoldOutlined,
  MenuUnfoldOutlined,
  GroupOutlined,
  TableOutlined,
  IdcardOutlined,
  LeftOutlined,
  SearchOutlined,
  PlusCircleOutlined
} from '@ant-design/icons';
import './lists.css';
import { Layout, Menu,Input, Select} from 'antd';
import { Link } from 'react-router-dom';
import Tables from '../../components/Tables';
import Cards from '../../components/Cards/Cards';
import Groups from '../../components/Groups/Groups';
import { useSelector,useDispatch } from 'react-redux';
import { fetchUsers } from '../../redux/actions/usersAC';
import { fetchGroups } from '../../redux/actions/groupsAC';
import useDebounce from '../../utils/useDebounce';
import Loader from '../../components/Loader';
import Madal from '../../components/Madal';

const { Option } = Select;
const { Header, Sider, Content } = Layout;


export default function Lists() {

  const [collapsed, setCollapsed] = useState(false);
  const [option, setOption] = useState('table');
  const dispatch = useDispatch();
  const items = useSelector(({ users }) => users.items);
  const isLoading = useSelector(({ users }) => users.isLoading)
  const [search, setSearch] = useState('')
  const [sortName,setSortName] = useState('ASC')
  const debouncedSearchTerm = useDebounce(search,500)
  const [modalVisible, setModalVisible] = useState(false);

  useEffect(() =>{
    dispatch(fetchGroups());
  },[])

  useEffect(() => {
    if(debouncedSearchTerm){
      dispatch(fetchUsers(sortName,debouncedSearchTerm))

    }else{
      dispatch(fetchUsers(sortName,''))
    }
  },[debouncedSearchTerm,sortName])


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
  if(option === 'groups') body =  <Groups users={items}/>

  const handleSearch = (evt) => {
    setSearch(evt.target.value)
  }

  const handleChange = (value) => {
    setSortName(value)
  };

  const showModal = () => {
    setModalVisible(!modalVisible)
  };
  
  return (
    <Layout style={{height:"100vh"}}>
      <Sider theme="light" width="300" trigger={null} collapsible collapsed={collapsed}>
        <div className="logo"></div>
        {!collapsed && <h6 align="center" style={{marginTop:"50px",color:"#0d6efd"}}>???????????????? ?????????????????????? ????????????</h6>}
        <Menu
          style={{marginTop:50}}
          mode="inline"
          defaultSelectedKeys={['1']}
          onClick={changeOption}
          items={[
            {
              key: '1',
              icon: <TableOutlined />,
              label: '?????????? ??????????????',
            },
            {
              key: '2',
              icon: <IdcardOutlined />,
              label: '???????????? ????????????????',
            },
            {
              key: '3',
              icon: <GroupOutlined />,
              label: '???? ??????????????',
            },
          ]}
        />
        <div className='back'>
          <Link to="/">
            <div style={{color:"white"}}>
              <LeftOutlined/>{!collapsed && "???? ??????????????"}
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
          ???????????????????? ??????????????????????
        </Header>

        <div style={{display:"flex",justifyContent:"space-between",marginTop:"10px", marginLeft:"10px"}}>
        <Input 
          style={{width:"70%"}} 
          placeholder="?????????? ????????????????????" 
          prefix={<SearchOutlined />} 
          value={search}
          onChange={handleSearch}
        />
        <div style={{marginRight:"40px",background:"white",paddingLeft:"10px"}}> 
          ???????????????????? ????????
        <Select
          defaultValue="ASC"
          style={{
            marginLeft:"10px",
            width: 150,
          }}
          onChange={handleChange}
        >
          <Option value="ASC">???? ?? ???? ??</Option>
          <Option value="DESC">???? ?? ???? ??</Option>
        </Select>
        </div>
        </div>

        <Content
          style={{
            padding: "9px 10px 0px 10px",
            minHeight: 280,
            height:"500px",
            overflow:"hidden"
          }}
        >
          {
          isLoading ? <Loader/> : body
        }
        </Content>
        <PlusCircleOutlined 
          className='add_users'
          onClick={showModal}
          />
        <Madal
          modalVisible={modalVisible}
          setModalVisible={setModalVisible}
        />
      </Layout>
    </Layout>
  )
}
