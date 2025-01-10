package com.yash.controller;


import com.yash.entity.Cart;
import com.yash.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

   private CartService cartService;

    public CartServlet() {
        this.cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int iid = Integer.parseInt(req.getParameter("iid"));
            int uid = Integer.parseInt(req.getParameter("uid"));
            String iname = req.getParameter("iname");
            double iprice = Integer.parseInt(req.getParameter("iprice"));
            String ic = req.getParameter("ic")+".jsp";
            String iimage=req.getParameter("iimage");
            String uname=req.getParameter("uname");
            String pno= req.getParameter("pno");

            Cart cart = new Cart();
            cart.setIid(iid);
            cart.setUserId(uid);
            cart.setItemname(iname);
            cart.setPrice(iprice);
            cart.setTotalPrice(iprice);
            cart.setIimage(iimage);
            cart.setUname(uname);
            cart.setPno(pno);


            boolean f = cartService.addCart(cart);

            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("addCart", "Item Added to Cart");
                resp.sendRedirect(ic);
            } else {
                session.setAttribute("failed", "Something Wrong");
                resp.sendRedirect("home.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
