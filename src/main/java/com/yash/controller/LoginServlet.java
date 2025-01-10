package com.yash.controller;


import com.yash.entity.User;
import com.yash.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet  extends HttpServlet {

    private LoginService loginService;

    public LoginServlet() {
        this.loginService=new LoginService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {



            HttpSession session = req.getSession();

            String name = req.getParameter("username");
            String password = req.getParameter("password");

            //	System.out.println(name + " "+ password);

            if("admin".equals(name) && "admin".equals(password)) {

                User us = new User();
                us.setName("Admin");
                session.setAttribute("userobj", us);
                resp.sendRedirect("/admin/home.jsp");
            }else {

                User us = loginService.login(name , password);
                if(us!= null) {

                    session.setAttribute("userobj", us);
                    resp.sendRedirect("/home.jsp");
                }else {
                    session.setAttribute("failedmsg", "Email or Password Invalid");
                    resp.sendRedirect("/login.jsp");
                }

                resp.sendRedirect("/home.jsp");
            }

        }catch(Exception e ) {
            e.printStackTrace();
        }
    }
}

