package cn.control;

import cn.Entity.managerJavaBean;
import cn.Service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Administrator on 2017/5/11.
 */
@Controller
@RequestMapping("/manager")

public class managerController {
    private final ManagerService managerService;
    @Autowired
    public managerController(ManagerService managerService) {
        this.managerService = managerService;
    }


    @RequestMapping("/get")
    public ModelAndView getManager( Model model){
        List<managerJavaBean> managerJavaBeans = managerService.selectAll();
        model.addAttribute("manager",managerJavaBeans);

        return new ModelAndView("myjsp/pages/managerlist");
    }

}
