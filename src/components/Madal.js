import React, { useState } from 'react';
import { Modal,Input, Tooltip, Select } from 'antd';
import { InfoCircleOutlined, UserOutlined, MailOutlined, PhoneOutlined} from '@ant-design/icons';
import EmployeeService from '../API/EmployeeService';
import { useSelector } from 'react-redux';

export default function Madal({modalVisible, setModalVisible}) {

    const groups = useSelector(({groups}) => groups.items);
    const [confirmLoading, setConfirmLoading] = useState(false);
    const [modalText, setModalText] = useState('');
    const [userInfo, setUserInfo] = useState({
        name:"",
        account:"",
        email:"",
        number:null,
        groups:""
    })

    const handleOk = () => {
        setModalText('Сотрудник добавляется...');
        setConfirmLoading(true);
        EmployeeService.addUsers(userInfo)
        .then((data) =>{
            setModalText(data)
            setModalVisible(false)
            setConfirmLoading(false);
            setModalText('')
        })
    };

    const handleCancel = () => {
        console.log('Clicked cancel button');
        setModalVisible(false)
    };

    const formOnChange = (evt) => {
        setUserInfo(prevState => ({...prevState, [evt.target.name]:evt.target.value}))
    }

    // EmployeeService.addUsers('Иван','asdad','1233','452','adaaa')

    return (
        <>
        <Modal
            title="Добавление нового сотрудника в справочник"
            visible={modalVisible}
            onOk={handleOk} 
            confirmLoading={confirmLoading}
            onCancel={handleCancel}
            cancelText="отмена"
            okText="добавить"
            okType="primary"
        >
            <p>{modalText}</p>
            <Input
                placeholder="Введите полное имя"
                prefix={<UserOutlined className="site-form-item-icon" />}
                suffix={
                    <Tooltip title="Например: Иван Иванов">
                    <InfoCircleOutlined
                        style={{
                        color: 'rgba(0,0,0,.45)',
                        }}
                    />
                    </Tooltip>
                }
                allowClear
                name='name'
                value={userInfo.name}
                onChange={formOnChange}
            />

            <Input
                placeholder="Введите учетную запись"
                suffix={
                    <Tooltip title="Например: example@companydomain.com">
                    <InfoCircleOutlined
                        style={{
                        color: 'rgba(0,0,0,.45)',
                        }}
                    />
                    </Tooltip>
                }
                style={{marginTop:"5px"}}
                allowClear
                name='account'
                value={userInfo.account}
                onChange={formOnChange}
            />

            <Input
                placeholder="Введите электронныу почту"
                prefix={<MailOutlined className="site-form-item-icon" />}
                suffix={
                    <Tooltip title="Например: example@domain.com">
                    <InfoCircleOutlined
                        style={{
                        color: 'rgba(0,0,0,.45)',
                        }}
                    />
                    </Tooltip>
                }
                style={{marginTop:"5px"}}
                type="email"
                allowClear
                name='email'
                value={userInfo.email}
                onChange={formOnChange}
            />

            <Input
                placeholder="Введите номер телефона"
                prefix={<PhoneOutlined className="site-form-item-icon" />}
                suffix={
                    <Tooltip title="Например: +123(456)-45-66">
                    <InfoCircleOutlined
                        style={{
                        color: 'rgba(0,0,0,.45)',
                        }}
                    />
                    </Tooltip>
                }
                style={{marginTop:"5px"}}
                type="number"
                allowClear
                name='number'
                value={userInfo.number}
                onChange={formOnChange}
            />
                <Select 
                    placeholder="Выберите группу"
                    showSearch
                    optionFilterProp="children"
                    style={{marginTop:"5px",width:"100%"}}
                    // value={userInfo.groups}
                    onChange={(value) => setUserInfo(prevState => ({...prevState, groups:value}))}
                >
                    {groups.map(group => <Select.Option key={group.id_group} value={group.id_group}>{group.name}</Select.Option>)}
                    <Select.Option value={null}>Без группы</Select.Option>
                </Select>
        </Modal>
        </>
    )
}
