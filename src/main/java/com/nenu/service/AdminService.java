package com.nenu.service;

import com.nenu.entity.Admin;

import java.util.List;

public interface AdminService {

    //查询所有员工的信息
    public List<Admin> searchAllAdmin();

    //用户登录
    public Admin login(Admin admin) throws Exception;

    //通过adminId 修改个人信息（手机号）
    public void selfEdit(Admin admin) throws Exception;

    //通过adminId 修改密码
    public void selfChangePass(Admin admin) throws Exception;

    //    老板添加员工
    public void addAdmin(Admin admin) throws Exception;

    //    老板删除员工
    public void deleteAdmin(String adminId) throws Exception;
}
