package com.pro.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClientController {
	 @GetMapping("/")
	    public ModelAndView first() {
	        return new ModelAndView("first");
	    }

    @GetMapping("/demo")
    public ModelAndView demo() {
        return new ModelAndView("demo");
    }

    @GetMapping("/register")
    public ModelAndView showRegister() {
        return new ModelAndView("register");
    }

    @GetMapping("/forgot-password")
    public ModelAndView showForgotPassword() {
        return new ModelAndView("forgot-password");
    }
}
