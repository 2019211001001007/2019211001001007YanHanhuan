package com.example.yanhanhuan.controller;

import com.example.yanhanhuan.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminLoginServlet", value = "/admin/login")
public class AdminLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession(false);//return session or null (no session )but its not create a new session
        User user = (User) session.getAttribute("user");
        if (session!=null && session.getAttribute("user")!=null && user.getUsername().equals("admin")) {
            if ("admin".equals(user.getUsername())) {//admin username must be in table
                request.getRequestDispatcher("../WEB-INF/views/admin/index.jsp").forward(request, response);
            } else {
                //have session but its not admin user
                session.invalidate();//kill session right now
                request.setAttribute("message", "Unauthorized Access admin module!!!");
                request.getRequestDispatcher("../WEB-INF/views/login.jsp").forward(request, response);
            }
            }else{
                //no session - then user click the link
                request.setAttribute("message","Please login as admin");
                request.getRequestDispatcher("../WEB-INF/views/login.jsp").forward(request, response);
            }
    }//end of doGet

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
