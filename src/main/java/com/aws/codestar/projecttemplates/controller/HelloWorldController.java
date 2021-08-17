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
    
    @RequestMapping("Tiberius Gracchus")
    public ModelAndView tiberiusPage() {
    	ModelAndView mave = new ModelAndView("tiberiusGracchus");
    	return mave;
    }
    
    @RequestMapping("CatoTheYounger")
    public ModelAndView catoYPage() {
    	ModelAndView mave = new ModelAndView("catoTheYounger");
    	return mave;
    }
}
