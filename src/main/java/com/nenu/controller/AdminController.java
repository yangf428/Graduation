package com.nenu.controller;

import com.nenu.entity.Admin;
import com.nenu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes("admin")
public class AdminController {

    @Autowired
    AdminService adminService;

//    登录
    @RequestMapping("/tologin")
    public String login(Admin admin1, Model model)throws Exception{
        //新建modelAndView
        System.out.println(admin1);//用户输入的admin
        Admin admin = adminService.login(admin1);//数据库中的admin
        String adminPwdInput = admin1.getAdminPwd();//用户输入的密码
        String adminRwdRepo = admin.getAdminPwd();//数据库的密码
        if(adminPwdInput.equals(adminRwdRepo)){
            // 密码正确，登录成功
            System.out.println("登录成功");
            model.addAttribute("admin", admin);
            return "login/success-login";
        }
        else{
            return "login/failed-login";
        }// 登录失败
    }


//    跳转到个人中心,也就是信息修改中心
    @RequestMapping("/selfcenter")
    public String toSelfCenter(HttpSession session, Model model) {
        Admin admin = (Admin) session.getAttribute("admin");
        model.addAttribute("admin", admin);
        return "self/self-center";
    }


//    处理修改信息提供的表单,例如电话号码
    @RequestMapping("/selfedit")
    public String toSelfEdit(Admin admin1, HttpSession session, Model model) throws Exception {
        Admin admin = (Admin) session.getAttribute("admin");//这是原来的session
        String adminTel = admin1.getAdminTel();
        admin.setAdminTel(adminTel);
        //这回是一个完整的admin了
        System.out.println(admin);
        adminService.selfEdit(admin);//进行session的数据库操作，修改信息
        session.setAttribute("admin", admin);//把session改成刚才修改完的admin
        model.addAttribute("admin", admin);
        return "self/self-center";//成功后返回个人中心
    }


//    开始进行密码修改,信息填写页面
    @RequestMapping("/selftochangepass")
    public String toChangePass(Model model, HttpSession session) throws Exception {
        Admin admin = (Admin) session.getAttribute("admin");//获取session
        model.addAttribute("admin");
        return "self/self-tochange-pass";
    }


//    密码修改信息提交后的逻辑处理
    @RequestMapping("/selfchangepass")
    public  String selfChangePass(String adminPwd, String adminPwd1, String adminPwd2, Model model, HttpSession httpSession) throws Exception {
        Admin admin = (Admin) httpSession.getAttribute("admin");
        System.out.println(adminPwd + " " + adminPwd1 + " " + adminPwd2);//输出这三个获取到的密码
        if(!adminPwd.equals(admin.getAdminPwd())){
            System.out.println("旧密码输入错误");
            return "self/self-failed";
            // 旧密码不正确
        }else if(!adminPwd1.equals(adminPwd2)){
            System.out.println("两次新密码不一致");
            return "self/self-failed";
            //两次新密码输入不一致
        }
        else{
            admin.setAdminPwd(adminPwd1);//把admin对象修改成修改完的
            System.out.println(admin);
            adminService.selfChangePass(admin);//进行session的数据库操作，修改信息
            httpSession.setAttribute("admin", admin);//把session改成刚才修改完的admin
            model.addAttribute("admin", admin);
            return "self/self-success";//成功后返回成功页
        }
    }

    //添加管理员
    @RequestMapping("/admintoadd")
    public String adminToAdd(){
        return "login/admin-add";
    }

    //真的添加管理员
    @RequestMapping("/adminadd")
    public String adminAdd(Admin admin1) throws Exception{
        adminService.addAdmin(admin1);
        return "room/room-success";
    }

//    查询所有的管理员(这个业务逻辑明天写)
    @RequestMapping("/searchAllAdmin")
    public ModelAndView searchAllAdmin(){
        ModelAndView mv = new ModelAndView();
        List<Admin> list = adminService.searchAllAdmin();
        mv.addObject("list", list);
        mv.setViewName("login/admin-list");
        return mv;
    }

//    管理员退出登录
    @RequestMapping("/logout")
    public String toLogOut(SessionStatus sessionStatus, HttpSession session){
        sessionStatus.setComplete();
        session.invalidate();//清除session
        System.out.println("Clear Session OK!");
        return "../../index";
    }


//    获取session中的功能
    @RequestMapping("/getSession")
    public void getSession(HttpSession session){
        System.out.println("get Session: admin = " + session.getAttribute("admin"));
    }

//    清除session
    @RequestMapping("/clearSession")
    public void clearSession(SessionStatus sessionStatus, HttpSession session){
        sessionStatus.setComplete();
        System.out.println("Clear Session OK!");
    }

    //酒店介绍
    @RequestMapping("/hotelinfo")
    public String hotelInfo(){
        return "hotel/hotel-info";
    }

    //物品价格
    @RequestMapping("/financeitemsprice")
    public String financeItemsPrice(){
        return "finance/finance-items-price";
    }

    //返回登录页
    @RequestMapping("/toindex")
    public String toIndex(){
        return "../../index";
    }
}
