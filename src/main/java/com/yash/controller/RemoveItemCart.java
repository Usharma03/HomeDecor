package com.yash.controller;

import com.yash.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/removeItem")
public class RemoveItemCart  extends HttpServlet {

    private CartService cartService;

    public RemoveItemCart() {
        this.cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int iid = Integer.parseInt(req.getParameter("iid"));
        int uid = Integer.parseInt(req.getParameter("uid"));
        int cid = Integer.parseInt(req.getParameter("cid"));
        boolean f = cartService.deleteItem(iid, uid, cid);

        HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("succMsg", "Product Removed from Cart");
            resp.sendRedirect("cart.jsp");
        } else {
            session.setAttribute("failedMsg", "Something wrong on server");
            resp.sendRedirect("cart.jsp");
        }
    }
}