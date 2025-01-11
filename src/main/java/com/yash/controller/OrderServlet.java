package com.yash.controller;


import com.yash.entity.Cart;
import com.yash.entity.ItemOrder;
import com.yash.service.CartService;
import com.yash.service.OrderSaveService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

    private CartService cartService;

    private OrderSaveService orderSaveService;

    public OrderServlet() {
        this.cartService=new CartService();
        this.orderSaveService=new OrderSaveService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            HttpSession session = req.getSession();

            int id = Integer.parseInt(req.getParameter("id"));

            String name = req.getParameter("username");
            String phno = req.getParameter("number");
            String address = req.getParameter("address");
            String payType = req.getParameter("paymentMethod");


            List<Cart> blist = cartService.getItembyUser(id);

            if(blist.isEmpty()) {
                session.setAttribute("failedMsg", "Add Item to Cart");
                resp.sendRedirect("cart.jsp");
            }else {
                ItemOrder o = null;
                ArrayList<ItemOrder> orderList = new ArrayList<ItemOrder>();

                Random r = new Random();
                for (Cart c : blist) {
                    o = new ItemOrder();
                    o.setOrderId("ITEM-ORD-00" + r.nextInt(1000));
                    o.setUserName(name);
                    o.setPhno(phno);
                    o.setAddress(address);
                    o.setItemName(c.getItemname());
                    o.setPrice(c.getPrice() + "");
                    o.setPaymentType(payType);
                    orderList.add(o);
                }

                boolean f = orderSaveService.saveOrder(orderList);
                if (f) {
                    resp.sendRedirect("ordersuccess.jsp");
                } else {
                    session.setAttribute("failedMsg", "Something wrong , Order not Placed");
                    resp.sendRedirect("cart.jsp");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

