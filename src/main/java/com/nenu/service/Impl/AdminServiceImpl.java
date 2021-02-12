package com.nenu.service.Impl;

import com.nenu.dao.AdminDao;
import com.nenu.entity.Admin;
import com.nenu.service.AdminService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminDao adminDao;

    //列出所有的员工
    @Override
    public List<Admin> searchAllAdmin() {
        List<Admin> list = adminDao.searchAllAdmin();
        return list;
    }

    //用户登录:
    //将用户的密码和数据库的密码进行比较确定是否登录成功
    @Override
    public Admin login(Admin admin){
        //0.0 从数据库获取管理员信息
        Admin adminRepo = adminDao.login(admin.getAdminId());//数据库中得到的管理员信息
//        String adminPwdInput = admin.getAdminPwd();//用户输入的密码
//        String adminRwdRepo = adminRepo.getAdminPwd();//数据库的密码
//        if(adminPwdInput.equals(adminRwdRepo)){
//            System.out.println("登录成功");
//        }
        return adminRepo;
    }

    //修改个人信息，例如手机号
    @Override
    public void selfEdit(Admin admin) throws Exception {
        adminDao.selfEdit(admin);
    }

    //修改个人信息，例如密码
    @Override
    public void selfChangePass(Admin admin) throws Exception {
        adminDao.selfChangePass(admin);
    }

    //老板添加员工
    @Override
    public void addAdmin(Admin admin) throws Exception {
        adminDao.addAdmin(admin);
    }

    //老板删除员工
    @Override
    public void deleteAdmin(String adminId) throws Exception {
        adminDao.deleteAdmin(adminId);
    }

}
