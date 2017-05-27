package cn.control;

import cn.Entity.managerJavaBean;
import cn.Service.ManagerService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/3.
 */

@Controller
@RequestMapping("/manager")
public class LoginController {
    private managerJavaBean manager;
    private final ManagerService managerService;

    @Autowired
    public LoginController(ManagerService managerService) {
        this.managerService = managerService;
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam("account") String account, @RequestParam("password") String password, HttpSession session){
        Gson gson = new Gson();
        Map<String, String> map = new HashMap<String, String>();
        if( managerService.judgeAccount(account)){
            //返回TRUE
            //账号不存在
           map.put("account","false");
        }else {
            map.put("account","true");
        }
        manager=managerService.login(account,password);
        if (manager!=null){
            //登录成功
            session.setAttribute("manager",manager);
            System.out.println(manager.toString());
        }else {
            map.put("password","false");
        }
        System.out.println(gson.toJson(map));

        return gson.toJson(map) ;

    }

}
