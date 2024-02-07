package com.app.employeemanagementsystem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.*;
import javax.servlet.http.*;

@Controller
public class LoginController {

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().removeAttribute("user");
        response.sendRedirect(request.getContextPath());
    }

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/addNew")
    public String addNew() {
        return "add-employee";
    }
    @RequestMapping(value = "/view")
    public String view() {
        return "view-employee";
    }

}
