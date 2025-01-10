package com.yash.controller;


import com.yash.entity.User;
import com.yash.service.RegisterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private RegisterService registerService;

    public RegisterServlet() {
        this.registerService=new RegisterService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        try {

            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phoneno = req.getParameter("phoneno");
            String password = req.getParameter("password");

            //	System.out.println(name+ " "+email+" "+phoneno+" "+password);

            User us  = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhoneno(phoneno);
            us.setPassword(password);


            boolean f = registerService.userRegister(us);
            if(f) {
                System.out.println("user register success");
                resp.sendRedirect("login.jsp");
            }else {
                System.out.println("user register  not success");
            }

        }catch(Exception e){
            e.printStackTrace();
        }
    }



}
