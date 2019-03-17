package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.validation.BindException;
import service.HelloService;


public class HelloController extends SimpleFormController {
    
    public HelloController() {
        setCommandClass(User.class);
        setCommandName("name");
        setSuccessView("helloView");
        setFormView("nameView");
    }

    @Override
    protected ModelAndView onSubmit(
            HttpServletRequest request, 
            HttpServletResponse response, 
            Object command, 
            BindException errors) throws Exception {
        User name = (User) command;
        ModelAndView mv = new ModelAndView(getSuccessView());
        mv.addObject("name", helloService.showName(name.getName()));
        mv.addObject("age", helloService.showAge(name.getAge()));
        mv.addObject("password", helloService.showPass(name.getPass()));
        mv.addObject("id", helloService.showID(name.getId()));
        return mv;
    }
    
    private HelloService helloService;
    
    public void setHelloService(HelloService helloService) {
        this.helloService = helloService;
    }
}
