package com.nenu.entity;

//管理员类：管理管理员的各种操作
public class Admin {
    private String adminId;//工号
    private String adminName;//名字
    private String adminPwd;//密码
    private String adminTel;//手机号
    private String adminLevel;//权限等级
    //不可以注册，直接给工号和密码登录，密码可以修改。

    public Admin() {
    }

    public Admin(String adminId, String adminName, String adminPwd, String adminTel, String adminLevel) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPwd = adminPwd;
        this.adminTel = adminTel;
        this.adminLevel = adminLevel;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public String getAdminLevel() {
        return adminLevel;
    }

    public void setAdminLevel(String adminLevel) {
        this.adminLevel = adminLevel;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }

    public String getAdminTel() {
        return adminTel;
    }

    public void setAdminTel(String adminTel) {
        this.adminTel = adminTel;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId='" + adminId + '\'' +
                ", adminName='" + adminName + '\'' +
                ", adminPwd='" + adminPwd + '\'' +
                ", adminTel='" + adminTel + '\'' +
                ", level='" + adminLevel + '\'' +
                '}';
    }
}
