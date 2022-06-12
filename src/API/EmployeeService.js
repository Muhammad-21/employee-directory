import axios from "axios";

export default class EmployeeService{
    static async getUsers(sortName,name){
        const response = await axios.get(`http://127.0.0.1:8081/users/?sortName=${sortName}&name=${name}`)
        return response.data
    }

    static async getGroups(){
        const response = await axios.get(`http://127.0.0.1:8081/groups`)
        return response.data
    }

    static async addUsers(userInfo){
        const response = await axios.post(`http://127.0.0.1:8081/users/`,userInfo)
        return response.data
    }
}