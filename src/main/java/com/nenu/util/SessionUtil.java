package com.nenu.util;

import com.nenu.entity.Admin;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;

public class SessionUtil {

    public void setSession(Model model, HttpSession session, Admin admin){
        model.addAttribute("admin", admin);
        System.out.println("setSession OK!");
    }
}
