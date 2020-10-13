package com.suyi.controller;

import com.suyi.domain.Admin;
import com.suyi.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminServiceImpl adminService;

    @RequestMapping("/login")
    public ModelAndView login(String account, String password, HttpSession session){
        Admin admin = adminService.login(account, password);
        ModelAndView modelAndView=new ModelAndView();
        if(null!=admin){
            session.setAttribute("admin",admin);
            modelAndView.setViewName("index");
        }else {
            modelAndView.addObject("msg","账号或密码错误！");
            modelAndView.setViewName("login");
        }
        return modelAndView;
    }

    @RequestMapping("/loginUI")
    public String loginUI(){
        return "redirect:/login.jsp";
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        session.removeAttribute("admin");
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("msg","退出成功！");
        modelAndView.setViewName("login");
        return modelAndView;
    }
}
