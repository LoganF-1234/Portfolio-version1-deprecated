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
        ModelAndView mav = new ModelAndView("index");
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
    
    @RequestMapping("Home")
    public ModelAndView homePage() {
    	ModelAndView maveny = new ModelAndView("home");
    	return maveny;
    }
}
