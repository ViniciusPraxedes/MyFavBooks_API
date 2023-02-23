package com.example.myfavbookswebapp;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class WelcomePageController {

    @RequestMapping("/")
    public String goToWelcomePage(){
        return "WelcomePage";
    }
    @RequestMapping (value="/dashboard", method = RequestMethod.GET)
    public String goToDashboard(ModelMap model){
        model.put("name",getLoggedInUsername());
        return "DashBoardPage";
    }
    private String getLoggedInUsername(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }




}
