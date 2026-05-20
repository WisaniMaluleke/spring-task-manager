package com.wis.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        return "home";
    }

    @GetMapping("/login")
    public String loginPage(HttpSession session) {
        if (session.getAttribute("user") != null) {
            return "redirect:/dashboard";
        }
        return "login";
    }

    @PostMapping("/login")
    public String loginSubmit(@RequestParam String email,
                              @RequestParam String password,
                              HttpSession session,
                              Model model) {
        // Simple auth — replace with DB lookup
        if (email != null && !email.isEmpty() && password != null && password.length() >= 4) {
            session.setAttribute("user", email);
            return "redirect:/dashboard";
        }
        model.addAttribute("error", "Invalid email or password. Please try again.");
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/login";
        }
        model.addAttribute("user", session.getAttribute("user"));
        model.addAttribute("dbConnections", 12);
        model.addAttribute("apiRequests", "4.2k");
        model.addAttribute("errorRate", "0.3%");
        model.addAttribute("avgResponse", "42ms");
        return "dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}