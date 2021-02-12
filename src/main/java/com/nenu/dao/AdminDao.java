package com.nenu.dao;

import com.nenu.entity.Admin;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {

    //    查询所有员工的信息
    public List<Admin> searchAllAdmin();

    //    登录
    public Admin login(String adminId);

    //    通过adminId 修改个人信息（电话号）
    public void selfEdit(Admin admin);

    //    通过adminId 修改手机号
    public void selfChangePass(Admin admin);

    //    老板添加员工
    public void addAdmin(Admin admin);

    //    老板删除员工
    public void deleteAdmin(String adminId);
}
