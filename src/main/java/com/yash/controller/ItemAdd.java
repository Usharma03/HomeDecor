package com.yash.controller;


import com.yash.entity.ItemDetails;
import com.yash.service.AddItemService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@WebServlet("/add_items")
@MultipartConfig
public class ItemAdd  extends HttpServlet {

    private AddItemService addItemService;

    public ItemAdd() {
        this.addItemService = new AddItemService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String item_Name = req.getParameter("itemName");
            String item_Price = req.getParameter("itemPrice");
            Part part=req.getPart("itemImage");
            String fileName = part.getSubmittedFileName();
            String item_Category = req.getParameter("itemCategory");
            String item_Status = req.getParameter("itemStatus");
            ItemDetails b = new ItemDetails( item_Name , item_Price , fileName , "admin",  item_Category, item_Status);

            boolean f  = addItemService.addItems(b);

            HttpSession session = req.getSession();

            if(f) {

                String path = getServletContext().getRealPath("")+ "wlimage";
                //System.out.println(path);
                File file = new File(path);

                part.write(path + File.separator + fileName);



                session.setAttribute("SuccMsg", "Item ADD Successfully");
                resp.sendRedirect("admin/additem.jsp");
            }else {
                session.setAttribute("FailedMsg", "Something wrong on server");
                resp.sendRedirect("admin/additem.jsp");
            }

        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}
