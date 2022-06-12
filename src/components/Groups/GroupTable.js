import React from 'react'
import { Table } from 'antd';

  export default function GroupTable({groupName,users}) {
    const columns = [
        {
          title: groupName,
          dataIndex: 'name',
          key: 'name',
        },
        Table.EXPAND_COLUMN,
    ]

    return(
        <Table
        columns={columns}
        expandable={{
            expandedRowRender: (record) => (
            <p
                style={{
                margin: 0,
                }}
            >
               <div align="center">{record.email}</div>
               <div align="center">{record.number}</div>
            </p>
            ),
        }}
        pagination={{
            pageSize: 8,
        }}
        dataSource={users}
        />
    )
}
