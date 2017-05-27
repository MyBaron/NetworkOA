package cn.control;

import cn.Entity.gymnasiumJavaBean;
import cn.Entity.userJavaBean;
import cn.Service.GymService;
import cn.Service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;



/**
 * Created by Administrator on 2017/5/4.
 */

@Controller
@RequestMapping("/gym")
public class gymController {
    private final GymService gymService;
    private final UserService userService;
    private Logger logger;
    @Autowired
    public gymController(GymService gymService, UserService userService) {
        this.gymService = gymService;
        this.userService = userService;
        logger=Logger.getLogger(gymController.class);
    }

    @RequestMapping("/getmessage")
    public ModelAndView getGym(Model model){
       same(model);
        return new ModelAndView("myjsp/pages/orderform");
    }

    @RequestMapping("/get")
    public ModelAndView getOne(@RequestParam("gym_id") int gym_id,@RequestParam("user_id") int user_id ,Model model){
        same(model);
        userJavaBean byuser_id = userService.findByuser_id(user_id);
        gymnasiumJavaBean gym = gymService.selectByGym_id(gym_id);
        model.addAttribute("gymlist",gym);
        model.addAttribute("user",byuser_id);


        return new ModelAndView("myjsp/pages/orderform");
    }

    private void same( Model model){
        List<gymnasiumJavaBean> list = gymService.selectGymAll();

        model.addAttribute("gym",list);
    }
}
