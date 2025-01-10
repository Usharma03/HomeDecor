package com.yash.controller;


import com.yash.service.DeleteItemService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete")
public class ItemdeleteServlet  extends HttpServlet {

    private DeleteItemService deleteItemService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));


            boolean f = deleteItemService.deleteItem(id);
            HttpSession session = req.getSession();

            if(f) {
                session.setAttribute("succMsg", "Item Delete Successfully..");
                resp.sendRedirect("admin/allitems.jsp");
            }else {
                session.setAttribute("failedMsg", "Something wrong on server");
                resp.sendRedirect("admin/allitems.jsp");
            }

        }catch(Exception e){
            e.printStackTrace();
        }

    }

}
