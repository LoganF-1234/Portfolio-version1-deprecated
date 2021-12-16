package com.aws.codestar.projecttemplates.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Basic Spring MVC controller that handles all GET requests.
 */
@Controller
@RequestMapping("/")
public class HelloWorldController {

    private final String siteName;

    public HelloWorldController(final String siteName) {
        this.siteName = siteName;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView helloWorld() {
        ModelAndView mav = new ModelAndView("testHome");
        mav.addObject("siteName", this.siteName);
        return mav;
    }
    
    @RequestMapping("Caesar")
    public ModelAndView pleaseWork() {
        ModelAndView mav = new ModelAndView("caesar");
        return mav;
    }
    
    @RequestMapping("Alexander")
    public ModelAndView alexanderPage() {
    	ModelAndView mave = new ModelAndView("alexander");
    	return mave;
    }
    
    @RequestMapping("TiberiusGracchus")
    public ModelAndView tiberiusPage() {
    	ModelAndView maven = new ModelAndView("tiberiusGracchus");
    	return maven;
    }
    
    @RequestMapping("CatoTheYounger")
    public ModelAndView catoYPage() {
    	ModelAndView maveny = new ModelAndView("catoTheYounger");
    	return maveny;
    }
    
    @RequestMapping("greatmen")
    public ModelAndView greatmenPage() {
    	ModelAndView mavenyx = new ModelAndView("index");
    	return mavenyx;
    }
    
    @RequestMapping("greatwomen")
    public ModelAndView greatwomenPage() {
    	ModelAndView mavenyxz = new ModelAndView("greatwomen");
    	return mavenyxz;
    }
  
    @RequestMapping("Cornelia")
    public ModelAndView cornelia() {
    	ModelAndView mavenyxza = new ModelAndView("cornelia");
    	return mavenyxza;
    }
    
    @RequestMapping("StJoan")
    public ModelAndView stJoan() {
    	ModelAndView mavenyxzab = new ModelAndView("stjoan");
    	return mavenyxzab;
    }
    
    @RequestMapping("StDymphna")
    public ModelAndView stDymphna() {
    	ModelAndView mavenyxzabc = new ModelAndView("stdymphna");
    	return mavenyxzabc;
    }
    
    @RequestMapping("test")
    public ModelAndView testHomePage() {
    	ModelAndView mavenyxzabcd = new ModelAndView("home");
    	return mavenyxzabcd;
    }
    
    @RequestMapping("projects")
    public ModelAndView projectsPage() {
    	ModelAndView mavenyxzabcde = new ModelAndView("projects");
    	return mavenyxzabcde;
    }
    
    @RequestMapping("shopping-cart")
    public ModelAndView shoppingCartPage() {
    	ModelAndView mavenyxzabcde = new ModelAndView("shoppingcart");
    	return mavenyxzabcde;
    }
    @RequestMapping("portfolio")
    public ModelAndView portfolioPage() {
    	ModelAndView mavenyxzabcdef = new ModelAndView("portfolio");
    	return mavenyxzabcdef;
    }
}
