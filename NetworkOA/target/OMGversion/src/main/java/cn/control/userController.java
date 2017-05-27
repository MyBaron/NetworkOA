package cn.control;

import cn.Entity.userJavaBean;
import cn.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/5/2.
 */

@Controller
@RequestMapping("/user")
public class userController {

    private final UserService userService;

   @Autowired
   userController(UserService userService){

       this.userService = userService;
   }


   @RequestMapping("/findUser")
    public String getUserByaccount(Model model){
       String account="249790774";
       System.out.println("account:"+account);
       if(userService!=null){
           System.out.println("this is not null");
       }
       userJavaBean userJavaBean = userService.findByAccount(account);
       model.addAttribute("user",userJavaBean);


       return "showUser";
   }

}
